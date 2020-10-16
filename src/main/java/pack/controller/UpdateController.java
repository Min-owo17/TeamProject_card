package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pack.model.BoardDaoInter;

@Controller
public class UpdateController {
	@Autowired
	private BoardDaoInter inter;
	
	@RequestMapping(value="update",method=RequestMethod.GET)
	public ModelAndView abc(
			@RequestParam("num") String num,
			@RequestParam("page") String page){
		ModelAndView view = new ModelAndView("board/update", "data", inter.getDetail(num));
		view.addObject("page", page);
		return view;
	}
	
	@RequestMapping(value="update",method=RequestMethod.POST)
	public ModelAndView def(
			@RequestParam("num") String num,
			@RequestParam("page") String page, 
			BoardBean bean){
		//鍮꾨�踰덊샇 泥댄겕
		String pass = inter.selectPass(num);
		
		ModelAndView view = new ModelAndView();
		if(bean.getPwd().equals(pass)) {
			inter.update(bean);
			view.setViewName("board/detail");
		}else {
			view.setViewName("board/update");
			view.addObject("msg", "업데이트 실패");
		}
		view.addObject("data", bean);
		view.addObject("page", page);
		
		return view;
	}
}
