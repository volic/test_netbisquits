package com.epam.triimob.netbiscuits.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.CharBuffer;

public class TemplateUtils {

	public static String includeJSP(String filename) {
		File file = new File(filename);
		if (file.exists()) {
			FileReader fr;
			try {
				fr = new FileReader(file);

				CharBuffer target = CharBuffer.allocate((int) file.length());
				fr.read(target);
				fr.close();
				return target.toString();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "";
	}
}
