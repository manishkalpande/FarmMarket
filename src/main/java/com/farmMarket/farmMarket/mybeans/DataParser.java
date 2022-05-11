package com.farmMarket.farmMarket.mybeans;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import org.json.JSONArray;
import org.json.JSONObject;


public class DataParser {

	public static void main(String[] args) {
		HttpClient client = HttpClient.newHttpClient();
		HttpRequest request = HttpRequest.newBuilder().uri(URI.create("https://api.data.gov.in/resource/9ef84268-d588-465a-a308-a864a43d0070?api-key=579b464db66ec23bdd0000018ac42ec1e0094ac35e1793dc45318ae9&format=json&limit=6000")).build();
		client.sendAsync(request,HttpResponse.BodyHandlers.ofString())
				.thenApply(HttpResponse::body)
				.thenApply(DataParser::parse)
				.join();
	}
	public static String parse(String responseBody) {
		JSONArray ja = new JSONArray(responseBody);
		
		for(int i=0;i<ja.length();i++) {
			JSONObject jo = ja.getJSONObject(i);
			String  title = jo.getString("field");
//			int id = jo.getInt("active");
//			int userid = jo.getInt("userid");
			String org = jo.getString("org");
//			String  title = jo.getString("field");
			System.out.println(org+" "+title);
		}
		return null;
	}

}
