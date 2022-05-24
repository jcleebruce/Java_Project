package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import dao.MemberDAO;
import model.MemberVO;
import util.ScriptUtils;

@Controller
public class myPageController {
	@Autowired
	MemberDAO mdao;

	@Autowired
	MemberVO mvo;

	@GetMapping("/myPage")
	public String myPage() {

		return "myPageForm";
	}

	@GetMapping("/myPage_info")
	public String myPage_info(@SessionAttribute("user") MemberVO user, Model model) {
		mvo=mdao.read(user.getId());
		
		model.addAttribute("userinfo",mvo);

		return "myPage_info";
	}

	@GetMapping("/myPage_query")
	public String myPage_query() {

		return "myPage_query";
	}

	@GetMapping("/myPage_review")
	public String myPage_review() {

		return "myPage_review";
	}

	@PostMapping("/modify.do")
	public String modify(@SessionAttribute("user") MemberVO user, Model model, HttpServletRequest request,
			HttpServletResponse response) {

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

		} catch (Exception e) {
			e.printStackTrace();
		}

		int result = mdao.update(mvo);

		if (result == 1) {

			System.out.println("수정완료");
			user = mdao.read(user.getId());
			model.addAttribute("user", user);
			try {
				ScriptUtils.alert(response, "수정에 성공했습니다.");
			} catch (Exception e) {
				e.printStackTrace();
			}

			return "myPageForm";

		} else {
			System.out.println("수정실패");
			try {
				ScriptUtils.alert(response, "수정에 실패했습니다.");
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "myPageForm";

		}

	}

	@PostMapping("/delete.do")
	public void delete(HttpServletRequest request, HttpServletResponse response) {
		String id=request.getParameter("id");
		int result=mdao.delete(id);
		
		if(result == 1) {
			try {
				System.out.println("탈퇴 성공");
				ScriptUtils.alertAndMovePage(response, "정상적으로 탈퇴처리 되었습니다.", "logout");
			}catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			try {
				System.out.println("탈퇴 실패");
				ScriptUtils.alertAndBackPage(response, "탈퇴처리 되지 않았습니다.");
			}catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

}
