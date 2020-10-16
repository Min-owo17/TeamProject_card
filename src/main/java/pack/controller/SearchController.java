package pack.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pack.model.BoardDaoImpl;
import pack.model.BoardDaoInter;
import pack.model.BoardDto;

@Controller
public class SearchController {
	@Autowired
	private BoardDaoInter inter;
	
	@RequestMapping("search")
	public ModelAndView search(BoardBean bean){
		ArrayList<BoardDto> list = inter.getSearch(bean);
		
		ModelAndView view = new ModelAndView("board/list","data",list);
		view.addObject("page", "1");
		return view;
	}
}
