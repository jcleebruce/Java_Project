package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.CommunityDAO;
import model.BoardVO;

@Controller
public class BoardController {
	@Autowired
	BoardVO CVO;
	@Autowired
	CommunityDAO CDAO;
	
	@GetMapping("/board") //
	public String board() {
		//데이터가 들어와서 여기서 처리하고서 리턴을 가야하는 경우 여기다 쓴다
		return "board";//views에 있는 jsp파일의 이름을 큰따옴표 안에 쓴다.
	}
	
	@GetMapping("/car_summary") 
	public String car_summary() {
		
		
		return "car_summary";
	}
	
	@GetMapping("/search_station") 
	public String search_station() {
		
		
		return "search_station";
	}
	
	@GetMapping("/community_notice") 
	public String community_notice() {
		
		
		return "community_notice";
	}
	@GetMapping("/community_review") 
	public String community_review() {
		
		
		return "community_review";
	}
	@GetMapping("/community_talkboard") 
	public String community_talkboard() {
		
		
		return "community_talkboard";
	}
	
	
	
	@GetMapping("/replyinput")
	public String replyinput(HttpServletRequest request) {
		//들어오고 가기전에 이 과정을 이행함
		request.getAttribute("reply");//textArea에 있었던 데이터를 가져온다.
		//request/response써야하나?
		//CVO.getReply((String)request.getAttribute("reply"));
		//CVO.getReplynum(request.getAttribute(name));
		
		CDAO.insertreply(CVO);
		
		return "community_talkboard";//글을 다 쓰고 자유게시판으로 이동
	}
	
	
}
