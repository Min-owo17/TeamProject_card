package pack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardDto;
import pack.model.CardInter;

@Controller
public class CardSearchController {
	@Autowired
	private CardInter cardInter;
	
	@RequestMapping(value="cardsearch", method=RequestMethod.POST) 
	public ModelAndView searchProcess(CardBean bean) {
		
		List<CardDto> list = cardInter.searchCard(bean); //the list function 
		return new ModelAndView("guest/cardlist","datas",list);
	}
}
