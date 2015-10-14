package com.youngball.stage.utill;

/**
 * 工具类
 * @author idea
 *
 */
public class StringUtill {
	
	/**
	 * 字符串拆分为数组
	 * @param str
	 * @param tag
	 * @return
	 */
	public static String[] str2Arr(String str,String tag) {
		if(ValidateUtill.isValid(str)){
			return str.split(tag);
		}
		return null;
	}
	
	/**
	 * 数组转换为字符串，逗号分隔
	 * @param value
	 * @return
	 */
	public static String arr2Str(String[] value){
		String temp = "";
		if(ValidateUtill.isValid(value)){
			for(String s : value){
				temp = temp + s + ",";
			}
			return temp.substring(0,temp.length()-1);
		}
		return null;
	}
	
}
