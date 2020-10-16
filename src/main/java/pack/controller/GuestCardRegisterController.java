package pack.controller;

import java.util.List;

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
public class GuestCardRegisterController {
	@Autowired
	@Qualifier("guestImpl")
	private GuestInter guestInter;
	
	@RequestMapping(value = "cardRegisterEdit", method = RequestMethod.GET)
	public ModelAndView showGuestCardInfo(@RequestParam("registerno")String registerno, @RequestParam("id")String id) {
		ModelAndView view = new ModelAndView("admin/guestCardEdit");
		RegisterDto dto = guestInter.guestCardInfo(registerno);
		view.addObject("dto", dto);
		view.addObject("id", id);
		return view;
	}
	
	@RequestMapping(value = "cardRegisterEdit", method = RequestMethod.POST)
	public ModelAndView updateGuestCardInfo(RegisterDto dto, @RequestParam("registerno")String registerno, @RequestParam("id")String id) {
		ModelAndView view = new ModelAndView();
		int check = guestInter.guestCardUpdate(dto);
		List<RegisterDto> list2 = guestInter.guestCard(id);
		if(check>0) {
			CardDto list = guestInter.getGuestInfo(id);
			view.setViewName("admin/guestInfo");
			view.addObject("dto", list);
			view.addObject("list", list2);
		}else {
			view.setViewName("error");
		}
		return view;
	}
}
