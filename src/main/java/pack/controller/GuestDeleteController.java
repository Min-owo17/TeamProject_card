package pack.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardDto;
import pack.model.GuestInter;

@Controller
public class GuestDeleteController {
	@Autowired
	@Qualifier("guestImpl")
	private GuestInter guestInter;
	
	private int tot;
	private int plist = 10;
	private int pageSu;
	
	public ArrayList<CardDto> getList(List<CardDto> list, int page){
		ArrayList<CardDto> result = new ArrayList<CardDto>();
		int start = (page - 1) * plist;
		int size = plist <= list.size() - start?plist:list.size() - start;
		
		for (int i = 0; i < size; i++) {
			result.add(i, list.get(start + i));
		}
		return result;
	}
	
	public int getPageSu() {  //총 페이지 수
		pageSu = tot / plist;
		if(tot % plist > 0) pageSu += 1;
		return pageSu;
	}
	
	@RequestMapping("guestDelete")
	public ModelAndView showGuestInfo(@RequestParam("id")String id, @RequestParam("page")int page) { //회원정보 삭제
		ModelAndView view = new ModelAndView();
		int check = guestInter.guestDelete(id);
		if(check>0) {
			view.setViewName("redirect:/admin/guestList");
			List<CardDto> list = guestInter.guestList();
			ArrayList<CardDto> result = new ArrayList<CardDto>();
			result = getList(list, page);
			
			view.addObject("data", result);
			view.addObject("pageSu", getPageSu());
			view.addObject("page", page);
		}else {
			view.setViewName("admin/error");
		}
		return view;
	}
}
