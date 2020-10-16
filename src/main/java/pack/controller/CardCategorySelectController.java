package pack.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardCategoryInter;
import pack.model.CardDto;

@Controller
public class CardCategorySelectController {
	@Autowired
	@Qualifier("cardCategoryImpl")
	private CardCategoryInter categoryInter;
	
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
	
	@RequestMapping("benefitcategory")
	public ModelAndView showCategory(@RequestParam("category") String category, @RequestParam("page")int page) { //카테고리 선택 후 해당 항목 결과 출력
		ModelAndView view = new ModelAndView();
		view.setViewName("guest/cardBenefitList");
		
		tot = categoryInter.totalCnt(category);
		
		//가져온 category값에 따라 다른 결과 출력
		List<CardDto> list = categoryInter.loadListc(category);
		ArrayList<CardDto> result = new ArrayList<CardDto>();
		result = getList(list, page);
		
		view.addObject("data", list);
		
		view.addObject("list", result);
		view.addObject("pageSu", getPageSu());
		view.addObject("page", page);
		view.addObject("category", category);
		
		return view;
	}
}
