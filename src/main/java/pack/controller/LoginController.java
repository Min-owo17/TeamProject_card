package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.BoardDaoInter;
@Controller
public class LoginController {
	@Autowired
	private BoardDaoInter boardDaoInter;

	@RequestMapping(value = "adminlogin", method = RequestMethod.GET)
	public String login(HttpSession session) {
		if(session.getAttribute("id") == null){
			return "board/adminlogin";
		}else {
			return "board/adminmain";
		}
	}

	@RequestMapping(value = "adminlogin", method = RequestMethod.POST)
	public String login(HttpSession session,
			@RequestParam("id") String id, @RequestParam("pwd") String pwd,
			BoardBean bean) {

		try {
			if (boardDaoInter.logcheckAdmin(bean).equals(id)&&bean.getPwd().equals(pwd)) {
				session.setAttribute("id", id);
				//adminkey //세션이 활성화 될떄 세션명을 아이디로 합니다.
				return "board/adminmain";
			} else {
				return "board/adminlogin";
			}
		} catch (Exception e) {
			System.out.println("LoginController"+e);
		}
		return login(session);
		//return "board/adminlogin";
	}
	
	@RequestMapping("adminlogout")
	public String adminLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
}
