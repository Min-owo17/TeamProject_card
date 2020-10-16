package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardDto;
import pack.model.CardInter;



@Controller
public class UpdateGuestController {
	@Autowired
	private CardInter cardInter;
	
	@RequestMapping(value="memupdate", method=RequestMethod.GET)
	public ModelAndView up(@RequestParam("id") String id) {
		CardDto dto = cardInter.getGuestInfo(id);
		ModelAndView view = new ModelAndView("member/memupdate","dto",dto);	
		return view;
	}
	@RequestMapping(value="memupdate", method=RequestMethod.POST)
	public String submit(CardBean bean) { //RESTFul UPDATE DELETE 방법 도 있다 
		boolean b = cardInter.guestUpdate(bean);
		
		if(b) {
			return "redirect:/meminfo?id=" + bean.getId();
		}else {
			return "error/error";
		}
		
	}
}

