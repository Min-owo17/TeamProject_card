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
public class GuestEditController {
	@Autowired
	@Qualifier("guestImpl")
	private GuestInter guestInter;
	
	@RequestMapping(value = "guestEdit", method = RequestMethod.GET) //회원정보 수정 페이지로 이동
	public ModelAndView showGuestInfo(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("id")String id, @RequestParam("page")String page) {
		ModelAndView view = new ModelAndView();
		CardDto list = guestInter.getGuestInfo(id);
		view.setViewName("admin/guestEdit");
		view.addObject("page", page);
		view.addObject("dto", list);
		
		return view;
	}
	
	@RequestMapping(value = "guestEdit", method = RequestMethod.POST) //회원정보 수정후 상세페이지로 이동
	public ModelAndView editGuestInfo(CardDto dto, @RequestParam("id")String id, @RequestParam("page")String page) {
		ModelAndView view = new ModelAndView();
		int check = guestInter.guestUpdate(dto);
		if(check>0) {
			CardDto list1 = guestInter.getGuestInfo(id);
			List<RegisterDto> list2 = guestInter.guestCard(id);
			
			view.setViewName("admin/guestInfo");
			view.addObject("page", page);
			view.addObject("dto", list1);
			view.addObject("list", list2);
		}else {
			view.setViewName("admin/error");
		}
		return view;
	}
}
