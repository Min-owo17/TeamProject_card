package pack.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardDto;
import pack.model.GuestInter;
import pack.model.RegisterDto;

@Controller
public class GuestInfoController {
	@Autowired
	@Qualifier("guestImpl")
	private GuestInter guestInter;
	
	@RequestMapping(value = "guestInfo", method = RequestMethod.GET) //회원 상세정보 보기
	public ModelAndView showGuestInfo(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("id")String id) {
		ModelAndView view = new ModelAndView();
		CardDto list1 = guestInter.getGuestInfo(id);
		List<RegisterDto> list2 = guestInter.guestCard(id);
		
		view.setViewName("admin/guestInfo");
		
		view.addObject("dto", list1);
		view.addObject("list", list2);
		
		return view;
	}
}
