package otp;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import javax.net.ssl.HttpsURLConnection;

public class New_Otp {
	
	public static void sendSms(String message,String number)
	{
		
		try {
//		System.out.println(message);
//		System.out.println(number);
		
		String apiKey="tYcE21MPvWyq8jnibpgeNDrdVCZO65o9BQkAz0XhJ4uwGFSm3lqGhinFDKlzadjYvmWgCQAH7BtV6Jw2";
		String sendId = "FSTSMS";
	message =URLEncoder. encode(message, "UTF-8");
		System.out.println(message);
		
		String language="english";
		
		String route="p";
		
		String myUrl="https://www.fast2sms.com/dev/bulk?authorization="+apiKey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number ;
		System.out.println(myUrl);
		
		URL url=new URL(myUrl);
		HttpsURLConnection con=(HttpsURLConnection) url.openConnection();
		
		con.setRequestMethod("GET");
		con.setRequestProperty("User-Agent", "Mozilla/5.0");
		con.setRequestProperty("cache-control", "no-cache");
		System.out.println("wait...............;;;;;");
	int code=	con.getResponseCode();
	System.out.println("response code="+code);
	
	StringBuffer response=new StringBuffer();
BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
	while(true)
	{
		String line=br.readLine();
		if(line==null)
		{
			break;
		}
		else {
			response.append(line);
		}
		System.out.println(response);
	}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args)
	{
		
System.out.println("program started......");
sendSms("thankyou your code is 78787","9479455005");
	}

}
