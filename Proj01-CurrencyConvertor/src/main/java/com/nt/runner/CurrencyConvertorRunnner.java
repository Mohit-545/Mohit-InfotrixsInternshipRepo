//CurrencyConvertorRunner.java
package com.nt.runner;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Scanner;

import org.json.JSONObject;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class CurrencyConvertorRunnner implements CommandLineRunner {

	@Override
	public void run(String... args) throws Exception {
		boolean running = true;
		do {
			HashMap<Integer, String> currencyCodes = new HashMap<Integer, String>();
			//Add currency codes
			currencyCodes.put(1, "USD");
			currencyCodes.put(2, "CAD");
			currencyCodes.put(3, "EUR");
			currencyCodes.put(4, "HKD");
			currencyCodes.put(5, "INR");
			
			Integer from, to;
			String fromCode, toCode;
			double amount;
			
			Scanner sc = new Scanner(System.in);
			System.out.println("\nWelcome to the Currency converter...!!!!\n");
			
			System.out.println("Please select currency converting From...!!!");
			System.out.println("1: USD (US Dollar) \t 2: CAD (Canadian Dollar) \t 3: EUR (Euro) \t 4: HKD (Hong Kong Dollar) \t 5: INR (Indian Rupees)");
			from = sc.nextInt();
			while(from < 1 || from > 5) {
				System.out.println("Please select a valid currency from (1-5)");
				System.out.println("1: USD (US Dollar) \t 2: CAD (Canadian Dollar) \t 3: EUR (Euro) \t 4: HKD (Hong Kong Dollar) \t 5: INR (Indian Rupees)");
				from = sc.nextInt();
			}//while
			fromCode = currencyCodes.get(from);
			
			System.out.println("Please select currency converting To...!!!");
			System.out.println("1: USD (US Dollar) \t 2: CAD (Canadian Dollar) \t 3: EUR (Euro) \t 4: HKD (Hong Kong Dollar) \t 5: INR (Indian Rupees)");
			to = sc.nextInt();
			while(to < 1 || to > 5) {
				System.out.println("Please select a valid currency from (1-5)");
				System.out.println("1: USD (US Dollar) \t 2: CAD (Canadian Dollar) \t 3: EUR (Euro) \t 4: HKD (Hong Kong Dollar) \t 5: INR (Indian Rupees)");
				to = sc.nextInt();
			}//while
			toCode = currencyCodes.get(to);
			
			System.out.println("Please select the amount you wish to convert...!!!");
			amount = sc.nextDouble();
			
			sendHttpGetRequest( fromCode,  toCode,  amount);
			System.out.println("\nWould you like to do another conversion?");
			System.out.println("1: Yes \t Any other number: No");
			if(sc.nextInt() == 1) {
				running = true;
			}//if
			else {
				running = false;
			}//else
		}//do
		while(running);

		System.out.println("\n=-=-=-=-=-=-=-=-=-=-=  Thankyou for using the Currency Convertor...!!!!!  =-=-=-=-=-=-=-=-=-=-=");
	}//method
	
	private static void sendHttpGetRequest(String fromCode, String toCode, double amount) {
		DecimalFormat format = new DecimalFormat("00.00");
		
		String Get_Url = "http://api.exchangerate.host/convert?access_key=9a8920bdff5eb43efca6d3aacab4f211&from="+fromCode+"&to="+toCode+"&amount="+amount;
		try {
			URL url = new URL(Get_Url);
			HttpURLConnection httpUrlConnection = (HttpURLConnection) url.openConnection();
			httpUrlConnection.setRequestMethod("GET");
			int responseCode = httpUrlConnection.getResponseCode();
			
			//if the response code matches the actual url code
			if(responseCode == HttpURLConnection.HTTP_OK) {
				BufferedReader reader = new BufferedReader(new InputStreamReader(httpUrlConnection.getInputStream()));
				String inputLine;
				
				StringBuffer response = new StringBuffer();
				
				while((inputLine = reader.readLine()) !=null) {
					response.append(inputLine);
				}//while
				reader.close();
				
				JSONObject obj = new JSONObject(response.toString());
				double exchangeResult = obj.getDouble("result");
				System.out.println("Final Exchange amount :: "+format.format(amount)+" "+fromCode+" = "+format.format(exchangeResult)+" "+toCode);
			}//if
			else {
				System.out.println("Get Request Failed...!!!!!");
			}//else
			
		}//try
		catch (IOException io) {
			System.out.println(io.getMessage());
		}//catch
		catch (Exception e) {
			System.out.println(e.getMessage());
		}//catch
	}//httpmethod(-)

}//class
