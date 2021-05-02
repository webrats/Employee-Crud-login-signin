package com.senrysa.utility;

import java.security.*;
import javax.crypto.*;

import com.senrysa.utility.Security;

public class Security {

	
	private static String algorithm = "DESede";
    private static Key key = null;
    private static Cipher cipher = null;
    
public static byte[] encrypt(String input)throws Exception {
        cipher.init(Cipher.ENCRYPT_MODE, key);
        byte[] inputBytes = input.getBytes();
        return cipher.doFinal(inputBytes);
    }

    public static String decrypt(byte[] encryptionBytes)throws Exception {
        cipher.init(Cipher.DECRYPT_MODE, key);
        byte[] recoveredBytes =  cipher.doFinal(encryptionBytes);
        String recovered =  new String(recoveredBytes);
        return recovered;
      }

	public static String getAlgorithm() {
		return algorithm;
	}

	public static void setAlgorithm(String algorithm) {
		Security.algorithm = algorithm;
	}

	public static Key getKey() {
		return key;
	}

	public static void setKey(Key key) {
		Security.key = key;
	}

	public static Cipher getCipher() {
		return cipher;
	}

	public static void setCipher(Cipher cipher) {
		Security.cipher = cipher;
	}
	
    
	
	
/*
 try {
			
			Security.setKey(KeyGenerator.getInstance(Security.getAlgorithm()).generateKey());
			Security.setCipher(Cipher.getInstance(Security.getAlgorithm()));
			
			//Encryption 
			byte[] encryptionBytes = Security.encrypt(psw);
			String passw=new String(encryptionBytes);
			System.out.println(passw);
			
			//Decryption
			System.out.println(Security.decrypt(passw.getBytes()));
		} catch (Exception e1) {
			
			System.out.println("Encryption Problem "+e1);
		}
		
 */
    
    
}
