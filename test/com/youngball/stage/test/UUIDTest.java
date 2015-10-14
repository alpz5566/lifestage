package com.youngball.stage.test;

import java.util.UUID;
import com.youngball.stage.utill.DataUtill;

public class UUIDTest {
	public static void main(String[] args) {
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid);
		String aString = "ao";
		String bString = "ao";
		String cString = new String("ao");
		System.out.println(aString == bString);
		System.out.println(aString == cString);
		System.out.println(aString.equals(cString));
		
	}
}
