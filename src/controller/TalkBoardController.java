package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import dao.CommunityDAO;
import model.CommunityVO;

@Controller
public class TalkBoardController {
	
	@Autowired
	CommunityVO CVO;
	@Autowired
	CommunityDAO CDAO;
	
	@GetMapping("/talkwrite")
	public String talkboard_write() {
		
		return "talkboard_write";
	}
	
	@PostMapping("/talkwrite") //새 글 작성
	public String write(HttpServletRequest request) {
		//들어오고 가기전에 이 과정을 이행함
		request.getAttribute("bdContent");//textArea에 있었던 데이터를 가져온다.
		CVO.setWriter((String)request.getAttribute("writer"));
		CVO.setSubject((String)request.getAttribute("title"));
		CVO.setContent((String)request.getAttribute("bdContent"));
		
		
		CDAO.insertBoard(CVO);
		
		return "board";//글을 다 쓰고 이동?
		//writer값에 not null을 줘서인지 01400오류 발생. Quary에 있는 Writer랑 합치면 어떻게 될거 같긴 한데...
	}
	
	@PostMapping("/talkupdate") //글 수정
	public String update(HttpServletRequest request) {
		//저 작성한 글을 받아서 num 값으로 세팅하기
		request.getAttribute("bdContent");
		
		CVO.setWriter((String)request.getAttribute("writer"));
		CVO.setSubject((String)request.getAttribute("title"));
		CVO.setContent((String)request.getAttribute("bdContent"));
		
		CDAO.UpdateBoard(CVO);
		return "community_talkboard";
	}
	@PostMapping("talkdelete") //글 삭제
	public String delete(HttpServletRequest request) {
		
		CDAO.deleteBoard(CVO);
		
		return "community_talkboard";
	}
	
	@GetMapping("/searchtext") //
	public String search(HttpServletRequest request) {
		request.getAttribute("searchtext"); 
		CVO.setNum((int)request.getAttribute("num"));
		CVO.setWriter((String)request.getAttribute("user"));					
		CVO.setSubject((String)request.getAttribute("title"));					
		CVO.setReg_date((String)request.getAttribute("date"));
		CVO.setReadcount((int)request.getAttribute("view"));
		CVO.setContent((String)request.getAttribute("bdContent"));
		
		return "community_talkboard";
	}
}
