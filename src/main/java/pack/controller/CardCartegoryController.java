package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardCategoryInter;

@Controller
public class CardCartegoryController { //카테고리 선택 페이지로 이동
	@Autowired
	@Qualifier("cardCategoryImpl")
	private CardCategoryInter categoryInter;
	
	@RequestMapping("benefitselect")
	public ModelAndView showCategoryList() {
		ModelAndView view = new ModelAndView("guest/benefitSelect");
		return view;
	}
}
