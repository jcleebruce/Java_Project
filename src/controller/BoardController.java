package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.CommunityDAO;
import model.CommunityVO;

@Controller
public class BoardController {
	@Autowired
	CommunityVO CVO;
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
	
	
	/*
	 * @GetMapping("/writetalk") public String write(HttpServletRequest request) {
	 * //들어오고 가기전에 이 과정을 이행함 request.getAttribute("bdContent");//textArea에 있었던 데이터를
	 * 가져온다. CVO.setNum((int)request.getAttribute("num"));
	 * CVO.setSubject((String)request.getAttribute("title"));
	 * CVO.setContent((String)request.getAttribute("bdContent"));
	 * 
	 * 
	 * CDAO.insertBoard(CVO);
	 * 
	 * return "community_talkboard";//글을 다 쓰고 자유게시판으로 이동 }
	 */
	
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
	
	@GetMapping("/searchtext") //
	public String search(HttpServletRequest request) {
		request.getAttribute("searchtext"); 
		CVO.setNum((int)request.getAttribute("num"));
		CVO.setWriter((String)request.getAttribute("user"));					
		CVO.setSubject((String)request.getAttribute("tit"));					
		CVO.setReg_date((String)request.getAttribute("date"));
		CVO.setReadcount((int)request.getAttribute("view"));
		CVO.setContent((String)request.getAttribute("bdContent"));
		
		return "community_talkboard";
	}//테스트 안해봄, 일일이 리턴값을 게시판 이름 적어주는건 비효율적일거 같음.
	
	//글 하나 조회
	
	//글 하나 수정
	
	//글 하나 삭제
	
	//글 전체 받아서 게시판에 집어넣기
	
	//일단 이것부터 처리해야 조회 수정 삭제가 가능할거 같은데 어떻게 배열 집어 넣어야 할지 모르겠음...
}
