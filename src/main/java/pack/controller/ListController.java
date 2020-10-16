package pack.controller;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.BoardDaoInter;
import pack.model.BoardDto;

@Controller
public class ListController {
	@Autowired
	private BoardDaoInter inter;
	
	private int tot;
	private int plist = 10;
	private int pageSu;
	
	public ArrayList<BoardDto> getList(ArrayList<BoardDto> list, int page){
		ArrayList<BoardDto> result = new ArrayList<BoardDto>();
		int start = (page - 1) * plist;
		int size = plist <= list.size() - start?plist:list.size() - start;
		
		for (int i = 0; i < size; i++) {
			result.add(i, list.get(start + i));
		}
		return result;
	}
	
	public int getPageSu() {  //珥� �럹�씠吏� �닔
		pageSu = tot / plist;
		if(tot % plist > 0) pageSu += 1;
		return pageSu;
	}
	
	@RequestMapping("list")
	public ModelAndView process(@RequestParam("page")int page) {
		tot = inter.totalCnt();  //�쟾泥� �젅肄붾뱶 �닔
		
		ArrayList<BoardDto> list = inter.getList();
		ArrayList<BoardDto> result = new ArrayList<BoardDto>();
		result = getList(list, page);
		ModelAndView model = new ModelAndView();
		model.setViewName("board/list");
		model.addObject("data", result);
		model.addObject("pageSu", getPageSu());
		model.addObject("page", page);
		
		return model;
	}
	
	@RequestMapping("adminboardlist")
	public ModelAndView processAdmin(@RequestParam("page")int page) {
		tot = inter.totalCnt();  //�쟾泥� �젅肄붾뱶 �닔
		
		ArrayList<BoardDto> list = inter.getList();
		ArrayList<BoardDto> result = new ArrayList<BoardDto>();
		result = getList(list, page);
		ModelAndView model = new ModelAndView();
		model.setViewName("board/adminboardlist");
		model.addObject("data", result);
		model.addObject("pageSu", getPageSu());
		model.addObject("page", page);
		
		return model;
	}
}



