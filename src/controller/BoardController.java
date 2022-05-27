package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import dao.CommunityDAOBackup;
import model.CommunityVO;

@Controller
public class BoardController {
	@Autowired
	CommunityVO CVO;
	@Autowired
	CommunityDAOBackup CDAO;
	
	@GetMapping("/board") //header의 href="board"가 여기서 잡힌다
	public String board() {
		//데이터가 들어와서 여기서 처리하고서 리턴을 가야하는 경우 여기다 쓴다
		return "board";//views에 있는 jsp파일의 이름을 큰따옴표 안에 쓴다.
	}
	@GetMapping("/write")
	public String write(HttpServletRequest request) {
		//들어오고 가기전에 이 과정을 이행함
		request.getAttribute("bdContent");//textArea에 있었던 데이터를 가져온다.
		CVO.setSubject((String)request.getAttribute("title"));
		CVO.setContent((String)request.getAttribute("bdContent"));
		
		
		CDAO.insertBoard(CVO);
		
		return "community_talkboard";//글을 다 쓰고 자유게시판으로 이동
	}
}
