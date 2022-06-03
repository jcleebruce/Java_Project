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
import java.util.List;

@Controller
public class adminPageController {

	@Autowired
	MemberDAO mdao;
	
	@GetMapping("/adminPage")
	public String adminPage() {

		return "forward:/adminPage_members";
	}
	
	@GetMapping("/adminPage_members")
	public String adminPage_members(Model model) {
		List<MemberVO> members = mdao.findMembers();
		model.addAttribute("members", members);
				
		return "adminPage_members";
	}	
	
	@GetMapping("/adminPage_memberInfo")
	public String adminPage_memberInfo(Model model, HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		System.out.println(id + " : 시도");	
		
		MemberVO member = mdao.read(id);

		if (member != null) {

			System.out.println(id + " : 성공");	
			model.addAttribute("userinfo", member);					

		} 
		return "adminPage_memberInfo";
	}
	
	@PostMapping("/admin_modify.do")
	public String admin_modify(MemberVO user, Model model, HttpServletRequest request, HttpServletResponse response) {
		MemberVO mvo;
		
		try {
			mvo = new MemberVO();
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
			
			int result = mdao.update(mvo);

			if (result == 1) {

				System.out.println("수정완료");
				
				try {
					ScriptUtils.alert(response, "수정에 성공했습니다.");
				} catch (Exception e) {
					e.printStackTrace();
				}

				return "adminForm";

			} else {
				System.out.println("수정실패");
				try {
					ScriptUtils.alert(response, "수정에 실패했습니다.");
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				return "adminForm";

			}			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "adminForm";
	}	
}
	
