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
	
	@PostMapping("talkwrite") //새 글 작성
	public String write(HttpServletRequest request) {
		//들어오고 가기전에 이 과정을 이행함
		request.getAttribute("bdContent");//textArea에 있었던 데이터를 가져온다.
		CVO.setNum((int)request.getAttribute("num"));
		CVO.setSubject((String)request.getAttribute("title"));
		CVO.setContent((String)request.getAttribute("bdContent"));
		
		
		CDAO.insertBoard(CVO);
		
		return "community_talkboard";//글을 다 쓰고 자유게시판으로 이동
	}
	//405에러 발생중. 컨트롤러 마저 다 만들고나서 DB작성이니 뭐니 해야 제대로 테스트 가능하니 일단 미뤄둡니다
	@PostMapping("talkupdate") //글 수정
	public String update(HttpServletRequest request) {
		
		
		return "community_talkboard";
	}
	@PostMapping("talkdelete") //글 삭제
	public String delete(HttpServletRequest request) {
		
		
		return "community_talkboard";
	}
	
}
