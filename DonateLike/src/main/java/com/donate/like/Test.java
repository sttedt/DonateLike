package com.donate.like;

import java.io.File;

import com.donate.like.service.FTPHandler;

public class Test {
	public static void main(String[] args) throws Exception {
		File temp = new File("c:/dev/jxl.jar");
		System.out.println(temp.toString());
		FTPHandler ftpUploader = new FTPHandler("sttedt.dothome.co.kr", "sttedt", "rhkrdkfha1A!");
		//                  파일경로+파일명(전체경로)    ftp 저장될 파일명     ftp 저장될 경로
        ftpUploader.uploadFile(temp.toString(), "jxl1111.jar", "/html/img/");
        ftpUploader.disconnect();

	}
}
