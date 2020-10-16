package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardDto;
import pack.model.CardInter;



@Controller
public class MemberController {

	@Autowired
	private CardInter cardInter;
	
	@RequestMapping(value="meminfo", method=RequestMethod.GET)
	public ModelAndView re(@RequestParam("id") String id) {
		CardDto dto = cardInter.getGuestInfo(id);
		return new ModelAndView("member/meminfo","dto",dto);
		
	}
	
	@RequestMapping(value="meminfo", method=RequestMethod.POST)
	public Model submit(String id) {
		cardInter.getGuestInfo(id);
		return submit(id);
		
		
	}
	
}