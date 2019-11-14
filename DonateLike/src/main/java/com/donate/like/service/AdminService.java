package com.donate.like.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.donate.like.dao.AdminDao;

@Service
public class AdminService {
	
	@Autowired
	AdminDao adminDao;
	
	public List<Map<String, Object>> donateList(String no) {
		return adminDao.donateList(no);
	}
	
	public void takerInsert(Map<String, Object> map, List<MultipartFile> list) throws Exception {
		String img = "";
		for(int i = 0 ; i < list.size() ; i++) {
			MultipartFile temp = list.get(i);
			String fileName = storeFile(temp);
			
			if(i == 0) {
				img += fileName;
			}else {
				img += "," + fileName;
			}
		}
		map.put("img", img);
		adminDao.takerInsert(map);
	}
	public File saveFile(MultipartFile mFile) {
		String savePath = "C:/Temp";
		File saveDir = new File(savePath);
		
		
		if (!saveDir.isDirectory()) {
			saveDir.mkdirs();
		}
		String fileName = mFile.getOriginalFilename();
		File temp = new File(savePath + "/" + fileName);
		try {
			
			mFile.transferTo(temp);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return temp;
	}
	public String storeFile(MultipartFile mFile) throws Exception {
		// 임시파일 생성 후 전송한다. 웹브라우저 상에서 절대경로는 파악이 불가함.. 그래서 내가 경로를 정해줄거
		File temp = saveFile(mFile);
		RandomString rand = new RandomString();
		// 확장자 추출
		String ext = mFile.getOriginalFilename().substring(mFile.getOriginalFilename().lastIndexOf(".") + 1, mFile.getOriginalFilename().length());
		String fileName = rand.run(30) +"." + ext;
		FTPHandler ftpUploader = new FTPHandler("sttedt.dothome.co.kr", "sttedt", "rhkrdkfha1A!");
        ftpUploader.uploadFile(temp.toString(), fileName, "/html/img/");
        ftpUploader.disconnect();

        // 임시파일삭제
        temp.delete();
        
        return fileName;
	}
	public void deleteFile(String fileName) throws Exception {
		FTPHandler ftp = new FTPHandler("sttedt.dothome.co.kr", "sttedt", "rhkrdkfha1A!");
		String hostDir = "/html/img/";
		ftp.deleteFile(fileName, hostDir);
	}

}

