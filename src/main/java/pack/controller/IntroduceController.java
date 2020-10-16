package pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IntroduceController {


@RequestMapping("introduce")
public ModelAndView intro() {
	ModelAndView model = new ModelAndView();
	model.setViewName("member/introduce");
	return  model;
}
	
	
}
