package com.youngball.stage.test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileStream {
	public static void main(String[] args) throws IOException {
		FileInputStream fin = new FileInputStream("e:/a.txt");
		FileOutputStream fout = new FileOutputStream("e:/b.txt");
		byte[] buff = new byte[256];
		int len = 0;
		while ((len = fin.read(buff)) > 0 ) {
			fout.write(buff,0,len);
		}
		fin.close();
		fout.close();
		System.out.println("复制成功");
	}
}
