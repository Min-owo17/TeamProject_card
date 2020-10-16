package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardInter;

@Controller
public class RegisterCardController {
	@Autowired
	private CardInter cardInter;
	
	@RequestMapping("getRegister")
	public ModelAndView myCard(@RequestParam("id") String id) {
		ModelAndView model = new ModelAndView();
		cardInter.getGuestCard(id);
		model.setViewName("member/getRegister");
		model.addObject("datas",cardInter.getGuestCard(id));
		return model;
	}
}
