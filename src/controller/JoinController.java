package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import dao.MemberDAO;
import model.MemberVO;

@Controller
public class JoinController {
	
	@Autowired
	MemberDAO mdao;
	
	@Autowired
	MemberVO mvo;
	
	@GetMapping("/join")
	public String join() {
		
		return "joinForm";
	}
	
	@PostMapping("/join.do")
	public String joindo(HttpServletRequest request) {
		
		try {
			mvo.setId(request.getParameter("id"));
			mvo.setPwd(request.getParameter("pwd"));
			mvo.setUserName(request.getParameter("userName"));
			mvo.setEmail(request.getParameter("email"));
			mvo.setNickName(request.getParameter("nickName"));
			mvo.setAddress1(request.getParameter("address1"));
			mvo.setAddress2(request.getParameter("address2"));
			mvo.setPhone(request.getParameter("phone"));
			mvo.setJoinRoute(request.getParameter("joinRoute"));
			mvo.setChargingType(request.getParameter("chargingType"));			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		int result=mdao.insert(mvo);
		
		if(result == 1) {
			return "loginForm";
		}else {
			return "joinForm";
		}
	}

}
