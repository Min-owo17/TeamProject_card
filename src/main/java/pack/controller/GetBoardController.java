package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.BoardDaoInter;

@Controller
public class GetBoardController {
	@Autowired
	private BoardDaoInter inter;
	
	@RequestMapping("getBoard")
	public ModelAndView myboard( @RequestParam("id") String id) {
		inter.getBoard(id);
		ModelAndView model = new ModelAndView();
		model.setViewName("member/getBoard");
		model.addObject("datas",inter.getBoard(id));
		
		return model;
	}
}
