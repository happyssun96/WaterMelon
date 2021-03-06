package com.test.TestCrawlingDAO;

import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.project.melon.model.MelonVO;

public class CrawlingDAO {
		

	public static ArrayList<MelonVO> Crawling() {
		String url = "https://www.melon.com/chart/index.htm";
		Document doc = null;
		Elements tmp;
		String name_temp = null;
		String singer_temp = null;
		String album_temp = null;
		ArrayList<MelonVO> list = new ArrayList<MelonVO>();
		int mrank = 0;
		
		try {
			doc = Jsoup.connect(url).get();
//			System.out.println(doc);
		} catch (Exception e) {

			// TODO: handle exception
			e.printStackTrace();
		}
		
		//top 10 가져오기
		
		Elements element = doc.select("#tb_list").select("tr.lst50");
		
//		System.out.println(element);
		
		for (int i = 0; i < 10; i++) {
			
				//이름 가져오기
				tmp = element.select(".rank01").select("span");
				name_temp = tmp.get(i).text();
//				System.out.println(name_temp);
				
//				//가수 가져오기
				tmp = element.select(".rank02").select("span");
				singer_temp = tmp.get(i).text();
//				
//				//앨범 가져오는 과정
				tmp = element.select(".rank03");
				album_temp = tmp.get(i).text();
//				
//				//등수를 가져오는 과정
				tmp = element.select(".rank").select("span");
				mrank = Integer.parseInt((tmp.get(i).text()));
//				System.out.println(rank);
//				
//				//arraylist에 삽입
				MelonVO tmpVo = new MelonVO(mrank, name_temp, singer_temp, album_temp);
				System.out.println(tmpVo.getMname() + tmpVo.getMartist() + tmpVo.getMalbum() + tmpVo.getMrank());
//				SL.add(new SongVo(rank, name_temp, singer_temp, album_temp));
				list.add(tmpVo);
		}
		System.out.println("Crawling Complete");
		return list;
	}
	
}
