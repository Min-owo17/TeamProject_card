package pack.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.BoardDaoInter;
import pack.model.CardDto;
import pack.model.CardInter;

@Controller
public class InsertController {
	@Autowired
	private BoardDaoInter inter;
	@Autowired
	private CardInter cardInter;

//	@RequestMapping(value="insertboardguest",method=RequestMethod.GET)
//	public String abc(){
//		return "board/insform";
//	}
//
//	@RequestMapping(value="insertboardguest",method=RequestMethod.POST)
//	public String def(Model model, BoardBean bean){
//
//		bean.setBdate();
//
//		int newNum = inter.currentNum() + 1;
//
//		bean.setNum(newNum);
//		bean.setGnum(newNum);
//
//		if(inter.insert(bean)) 
//			return "redirect:/list?page=1";
//		else 
//			return "error/error";
//	}
	
	@RequestMapping(value = "insertboardguest", method = RequestMethod.GET)
	   public ModelAndView abc(@RequestParam("id") String id) {
	      if (id != null) {
	         CardDto dto = cardInter.getGuestInfo(id);
	         ModelAndView view = new ModelAndView("board/insform", "dto", dto);
	         return view;
	      } else {
	         return new ModelAndView("board/insform");
	      }
	   }

	   @RequestMapping(value = "insertboardguest", method = RequestMethod.POST)
	   public String def(Model model, BoardBean bean) {

	      bean.setBdate();

	      int newNum = inter.currentNum() + 1;

	      bean.setNum(newNum);
	      bean.setGnum(newNum);

	      if (inter.insert(bean))
	         return "redirect:/list?page=1";
	      else
	         return "error/error";
	   }

}
