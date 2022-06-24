package com.project.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vo.ParkingVO;

@Controller
public class MainController {
	public static final String VIEW_PATH = "/WEB-INF/views/";
	public static List<ParkingVO> list = new ArrayList<ParkingVO>();
	
	/*
	 * @RequestMapping(value = {"/","/parking"}, method = RequestMethod.GET) public
	 * String goMain() { return VIEW_PATH+"main.jsp"; }
	 */
	
	@RequestMapping(value = {"/", "/parking"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		// 1. URL을 만들기 위한 StringBuilder/ 오픈 API의요청 규격에 맞는 파라미터 생성, 발급받은 인증키.
		StringBuilder urlBuilder = new StringBuilder(
				"https://api.odcloud.kr/api/15003009/v1/uddi:bdc4a735-dcac-47e1-9d4f-f88adc53ccc5?page=1&perPage=26&returnType=JSON&serviceKey=mu9DiWf%2Baze2UmlectExLlwUwRlk%2FJ5zMoa%2B9xGRiFcdAfMp8MfrR6wCFMHUmjOc3947X2MQsklVlk2CNGE1ng%3D%3D"); 

		// 3. URL 객체 생성.
		URL url = new URL(urlBuilder.toString());
		// 4. 요청하고자 하는 URL과 통신하기 위한 Connection 객체 생성.
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		// 5. 통신을 위한 메소드 SET.
		conn.setRequestMethod("GET");
		// 6. 통신을 위한 Content-type SET.
		conn.setRequestProperty("Content-type", "application/json");
		// 7. 통신 응답 코드 확인.
		System.out.println("Response code: " + conn.getResponseCode());
		// 8. 전달받은 데이터를 BufferedReader 객체로 저장.
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		// 9. 저장된 데이터를 라인별로 읽어 StringBuilder 객체로 저장.
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		// 10. 객체 해제.
		rd.close();
		conn.disconnect();
		// 11. 전달받은 데이터 확인.
		System.out.println(sb.toString());

		// 1. 문자열 형태의 JSON을 파싱하기 위한 JSONParser 객체 생성.
		JSONParser parser = new JSONParser();
		// 2. 문자열을 JSON 형태로 JSONObject 객체에 저장.
		JSONObject obj = (JSONObject) parser.parse(sb.toString());
		// 3. 필요한 리스트 데이터 부분만 가져와 JSONArray로 저장.
		JSONArray dataArr = (JSONArray) obj.get("data");
		
		for(int i=0; i<dataArr.size(); i++) {
			//이런식으로 값을 하나씩 받아올 수 있음
			JSONObject jsonObject = (JSONObject) dataArr.get(i);
			
			ParkingVO vo = new ParkingVO();
			vo.setLat(jsonObject.get("위도").toString());
			vo.setLon(jsonObject.get("경도").toString());
			vo.setAddr(jsonObject.get("소재지위치").toString());
			vo.setCount(Integer.parseInt(jsonObject.get("면수").toString()));
			vo.setPrice(Integer.parseInt(jsonObject.get("야간요금").toString()));
			vo.setTime(jsonObject.get("야간시간").toString());
			
			list.add(vo);
		}
		// 4. model에 담아준다.
		model.addAttribute("list", list);

		return VIEW_PATH+"main.jsp";
	}
	
	@RequestMapping("/naverMap")
	public String naverMap(Model model) {
		
		System.out.println("네이버지도호출");
		
		model.addAttribute("list", list);
		model.addAttribute("size", list.size());
		
		return VIEW_PATH+"main.jsp";
	}
}
