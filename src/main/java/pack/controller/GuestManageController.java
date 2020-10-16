package pack.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardDto;
import pack.model.GuestInter;

@Controller
public class GuestManageController {
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
	
	@RequestMapping("guestList") //회원 전체보기
	public ModelAndView showGuestList(@RequestParam("page")int page) {
		ModelAndView view = new ModelAndView();
		List<CardDto> list = guestInter.guestList();
		view.setViewName("admin/guestList");
		view.addObject("data", list);
		
		
		tot = guestInter.totalCnt();
		
		ArrayList<CardDto> result = new ArrayList<CardDto>();
		result = getList(list, page);
		
		view.addObject("list", result);
		view.addObject("pageSu", getPageSu());
		view.addObject("page", page);
		
		return view;
	}
	
	@RequestMapping(value="guestsearch", method = RequestMethod.POST) //회원 검색결과 보기
	public ModelAndView searchGuestList(@RequestParam("option")String option, @RequestParam("word")String word) {
		ModelAndView view = new ModelAndView();
		view.setViewName("admin/guestList");
		List<CardDto> list = guestInter.guestSearchList(word, option);
		view.addObject("list", list);
		return view;
	}
	@ResponseBody
	@RequestMapping("idCheck")
	public ModelAndView idCheck(@RequestParam("id") String id) {
		boolean b = guestInter.idCheck(id);
		
		  ModelAndView model = new ModelAndView("guest/idCheck");
	      
	      
	      model.addObject("result", b);
	      model.addObject("id", id);
	      return model;
	}
	
}
