package com.qianfeng.goutrip.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author FQY
 *
 */
public class MD5Utils {
	public static String digest(String value){
		String str = Integer.toHexString(value.hashCode())+value;
		String password = String.valueOf(str.hashCode());
		try {
			MessageDigest digest = MessageDigest.getInstance("MD5");
			byte[] bytes = digest.digest(value.getBytes());
			StringBuilder builder = new StringBuilder();
			for(byte b : bytes){
				String hex = Integer.toHexString(b & 0xFF);
				if(hex.length() == 1){
					hex = 0+hex;
				}
				builder.append(hex);
				
			}
			return builder.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return String.valueOf(value.hashCode());
		}
	}
}
