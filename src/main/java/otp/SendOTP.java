package otp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import javax.net.ssl.HttpsURLConnection;

public class SendOTP {
	public static void sendOTP(String message, String number, String apiKey) throws MalformedURLException {
		try {
			String sendId = "FSTSMS";
			String language = "english";
			String route = "p";

			message = URLEncoder.encode(message, "UTF-8");
			//= https://www.fast2sms.com/dev/bulkV2?authorization=tYcE21MPvWyq8jnibpgeNDrdVCZO65o9BQkAz0XhJ4uwGFSm3lqGhinFDKlzadjYvmWgCQAH7BtV6Jw2&route=otp&variables_values=452010&flash=0&numbers=
			String myUrl="https://www.fast2sms.com/dev/bulk?authorization="+apiKey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number ;

			//String myUrl = "https://www.fast2sms.com/dev/bulkV2?authorization=" + apiKey + "&sender_id=" + sendId+ "&message=" + message + "&language=" + language + "&route=" + route + "&number=" + number;
			URL url = new URL(myUrl);
			HttpsURLConnection con = (HttpsURLConnection) url.openConnection();
			con.setRequestMethod("GET");

			con.setRequestProperty("User-Agent", "Mozilla/5.0");
			con.setRequestProperty("cache-control", "no-cache");
			System.out.println("wait....");
			int responseCode = con.getResponseCode();
			System.out.println("response code" + responseCode);

			StringBuffer response = new StringBuffer();
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));

			while (true) {
				String line = br.readLine();
				if (line == null) {
					break;
				}
				response.append(line);
			}
			System.out.println(response);
		} catch (IOException e) { // TODO Auto-generated catch block e.printStackTrace();
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		System.out.println("program started.....");
		OTP otp = new OTP();
		String otpmessage = otp.generateOTP(5);
		System.out.println("genertaed otp" + otpmessage);

		String apiKey = "tYcE21MPvWyq8jnibpgeNDrdVCZO65o9BQkAz0XhJ4uwGFSm3lqGhinFDKlzadjYvmWgCQAH7BtV6Jw2";

		String number = "9340390344";

		try {
			sendOTP( otpmessage, number, apiKey);
		} catch (MalformedURLException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
//Overall URL = https://www.fast2sms.com/dev/bulkV2?authorization=tYcE21MPvWyq8jnibpgeNDrdVCZO65o9BQkAz0XhJ4uwGFSm3lqGhinFDKlzadjYvmWgCQAH7BtV6Jw2&route=otp&variables_values=452010&flash=0&numbers=

/*
 * import java.io.BufferedReader; import java.io.InputStreamReader; import
 * java.net.URL; import java.net.URLEncoder; import
 * javax.net.ssl.HttpsURLConnection;
 * 
 * public class SendOTP { public static void sendOTP(String message , String
 * number , String apiKey) { try { String sendId="FSTSMS"; String
 * language="english"; String route="p";
 * 
 * message=URLEncoder.encode(message,"UTF-8"); //Important Step
 * 
 * String
 * myUrl="https://www.fast2sms.com/dev/bulkauthorization="+apiKey+"&sender_id="+
 * sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+
 * number;
 * 
 * URL url=new URL(myUrl); HttpsURLConnection con=
 * (HttpsURLConnection)url.openConnection();
 * 
 * con.setRequestMethod("GET");
 * 
 * con.setRequestProperty("User-Agent","Mozilla/5.0");
 * con.setRequestProperty("cache-control", "no-cache");
 * 
 * int responseCode= con.getResponseCode();
 * 
 * StringBuffer response=new StringBuffer();
 * 
 * BufferedReader br=new BufferedReader(new
 * InputStreamReader(con.getInputStream()));
 * 
 * while(true) { String line=br.readLine();
 * 
 * if(line==null) { break; }
 * 
 * response.append(line); }
 * 
 * System.out.println(response);
 * 
 * } catch(Exception e) { System.out.println(e); } }
 * 
 * public static void main(String[] args) {
 * System.out.println("Program Started....");
 * 
 * OTP otp=new OTP(); String otpmessage=otp.generateOTP(5); System.out.println(
 * "Generate OTP : "+otpmessage);
 * 
 * String apiKey=
 * "tYcE21MPvWyq8jnibpgeNDrdVCZO65o9BQkAz0XhJ4uwGFSm3lqGhinFDKlzadjYvmWgCQAH7BtV6Jw2";
 * String number="9479455005";
 * 
 * sendOTP("Hey this message is send by MuradAli using Java Code. Your OTP is"
 * +otpmessage,number,apiKey);
 * 
 * }
 * 
 * }
 */