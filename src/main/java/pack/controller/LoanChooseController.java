package pack.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.LoanDto;
import pack.model.LoanInter;

@Controller
public class LoanChooseController {
	@Autowired
	@Qualifier("loanImpl")
	private LoanInter loanInter;
	//loan 옵션 선택 창 띄우기
	@RequestMapping("loanchoosing")
	public ModelAndView chooseLoan() {
		return new ModelAndView("member/loanchoosing");
	}
	//선택한 옵션에 따른 대출창
	@RequestMapping("loanchoose")
	public ModelAndView chooseResult(@RequestParam("max") String max, @RequestParam("period") String period){
		ArrayList<LoanDto> list = (ArrayList<LoanDto>) loanInter.chooseResult(max, period);
		return new ModelAndView("member/loanchoose", "list", list);
	}

}
