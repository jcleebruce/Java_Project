package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestAttribute;

import dao.MapDAO;
import model.MapVO;
import net.sf.json.JSONArray;

@Controller
public class MapController {
	@Autowired
	MapVO mvo;
	
	@Autowired
	MapDAO mdao;
	
	@GetMapping("/search_station")
	public String search_station(HttpServletRequest request, Model model) {
		ArrayList<MapVO> list=new ArrayList<MapVO>();
		String keyword = request.getParameter("keyword");
		
		System.out.println(keyword);
		
		list=mdao.searchAddr(keyword);
		
		System.out.println(list.isEmpty());
		
		model.addAttribute("mapList",JSONArray.fromObject(list));
		
		return "search_station";
	}
	
	@GetMapping("/charger_information")
	public String charger_information(HttpServletRequest request, Model model) {
		ArrayList<MapVO> list=mdao.selectLocationInfo(request.getParameter("statNm"));
		mvo=mdao.oneLocationInfo(request.getParameter("statNm"));
				
		model.addAttribute("list",list);
		model.addAttribute("info",mvo);
		
		return "charger_information";
	}

}
