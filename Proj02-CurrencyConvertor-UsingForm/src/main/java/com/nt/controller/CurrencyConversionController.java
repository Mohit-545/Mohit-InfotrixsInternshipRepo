//CurrencyConversionController.java
package com.nt.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DecimalFormat;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nt.model.Currency;

@Controller
public class CurrencyConversionController {
	
	@RequestMapping("/")
	public String showHomePage(@ModelAttribute("curr") Currency currency){
		return "form";
	}//method
	
	@PostMapping("/getResult")
	public String convertCurrency(Map<String, Object> map ,@ModelAttribute("curr") Currency currency) {
		String fromCode = currency.getFromCode();
		String toCode = currency.getToCode();
		double amount = currency.getAmount();
		String exchangeAmt = sendHttpGetRequest(fromCode, toCode, amount);
		map.put("finalResultAmt", exchangeAmt);
		return "final_result";
	}//method
	
	private static String sendHttpGetRequest(String fromCode, String toCode, double amount) {
		
		StringBuilder finalResult = new StringBuilder();
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
				 finalResult.append("Final Exchange amount :: "+format.format(amount)+" "+fromCode+" = "+format.format(exchangeResult)+" "+toCode); 
			}//if
		}//try
		catch (IOException io) {
			System.out.println(io.getMessage());
		}//catch
		catch (Exception e) {
			System.out.println(e.getMessage());
		}//catch
		return finalResult.toString().trim();
	}//http(-)

}//class
