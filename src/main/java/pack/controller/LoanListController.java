package pack.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pack.model.LoanDto;
import pack.model.LoanInter;

@Controller
public class LoanListController {
	@Autowired
	@Qualifier("loanImpl")
	private LoanInter inter;
	
	@RequestMapping("loanList")
	public ModelAndView loanList() {
		ModelAndView view = new ModelAndView("guest/loanList");
		ArrayList<LoanDto> list = (ArrayList<LoanDto>)inter.loanList();
		view.addObject("list", list);
		return view;
	}
}
