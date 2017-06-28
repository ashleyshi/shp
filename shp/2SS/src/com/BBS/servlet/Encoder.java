package com.BBS.servlet;

public class Encoder {

	/**
	 * 处理Html标记，将"\n"转换为"<br>
	 * "，将"\r"转换为"<br>"， 将" "转换为"&nbsp;"
	 * 
	 * @param 处理前的字符串
	 * @return 处理后的字符串
	 */
	public static String returnToBr(String sStr) {
		if (sStr == null || sStr.equals("")) {
			return "";
		}

		StringBuffer sTmp = new StringBuffer();
		int i = 0;

		while (i < sStr.length()) {
			if (i == sStr.length() - 1) {
				if (sStr.charAt(i) == '\n' || sStr.charAt(i) == '\r') {
					sTmp = sTmp.append("<br>");
				} else if (sStr.charAt(i) == ' ') {
					sTmp = sTmp.append("&nbsp;");
				} else {
					sTmp = sTmp.append(sStr.substring(i));
				}
			} else {
				if (sStr.charAt(i) == '\r' && sStr.charAt(i + 1) == '\n') {
					sTmp = sTmp.append("<br>");
				} else if (sStr.charAt(i) == ' ') {
					sTmp = sTmp.append("&nbsp;");
				} else {
					sTmp = sTmp.append(sStr.substring(i, i + 1));
				}
			}

			i++;
		}
		String S1;
		S1 = sTmp.toString();
		return S1;
	}

	/**
	 * 将"<br>
	 * "转换为"\n", 将"<br>
	 * "转换为"\r"， 将"&nbsp;"转换为" "
	 * 
	 * @param 处理前的字符串
	 * @return 处理后的字符串
	 */
	public static String returnBackToBr(String sStr) {
		if (sStr == null || sStr.equals("")) {
			return "";
		}
		while (sStr.indexOf("<br>") != -1) {
			sStr = sStr.replaceFirst("<br>", "");
		}
		return sStr;
	}

	public static void main(String args2[]) {
		System.out.println(returnBackToBr("sfsf<br>asdfda<br>dfsdf"));
	}
}
