package com.donate.like.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.donate.like.dao.AdminDao;

@Service
public class AdminService {
	
	@Autowired
	AdminDao adminDao;
	
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
		FTPHandler ftpUploader = new FTPHandler("dndnp4.dothome.co.kr", "dndnp4", "dothome11!");
        ftpUploader.uploadFile(temp.toString(), fileName, "/html/image/");
        ftpUploader.disconnect();

        // 임시파일삭제
        temp.delete();
        
        return fileName;
	}
	public void deleteFile(String fileName) throws Exception {
		FTPHandler ftp = new FTPHandler("dndnp4.dothome.co.kr", "dndnp4", "dothome11!");
		String hostDir = "/html/image/";
		ftp.deleteFile(fileName, hostDir);
	}

}

