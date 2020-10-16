package pack.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pack.model.CardInter;

@Controller
public class MemberLogController {
	@Autowired
	private CardInter cardInter;

	@RequestMapping(value = "memlogin", method = RequestMethod.GET)
	public String login(HttpSession session) {
		if (session.getAttribute("id") == null) {
			return "guest/memlogin";
		} else {
			return "redirect:/main";
		}
	}

	@RequestMapping(value = "memlogin", method = RequestMethod.POST)
	public String login(HttpSession session, @RequestParam("id") String id, @RequestParam("pwd") String pwd,
			CardBean bean) {
		
		
		try {
			if (cardInter.getGuestLogin(bean).equals(id) && bean.getPwd().equals(pwd)) {
				System.out.println(bean.getIrum());
				session.setAttribute("idKey", id);
				return "redirect:/main";
			} else {
				return "redirect:/memlogin";
			}
		} catch (Exception e) {
			System.out.println("LoginController"+e);
		}
		return login(session);
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
}
