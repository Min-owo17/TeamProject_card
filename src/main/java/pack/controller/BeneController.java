package pack.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pack.model.CardDto;
import pack.model.CardImpl;
import pack.model.CardInter;

@Controller
public class BeneController {
	@Autowired
	@Qualifier("cardImpl")
	private CardInter cardInter;
	
	private int tot;
	private int plist = 10;
	private int pageSu;
	
	//choose.jsp창 띄우기
	@RequestMapping(value="choosing", method=RequestMethod.GET)
	public ModelAndView choosing() {
		return new ModelAndView("member/choosing");
	}
	//고객에게 선택한 결과 보여주기
	@RequestMapping(value = "benelist", method = RequestMethod.POST)
	public ModelAndView choose(@RequestParam(value="benefit") String[] beneArr, @RequestParam(value="type") String type) {

		ArrayList<CardDto> dto = (ArrayList<CardDto>)cardInter.beneList(beneArr, type);
		ModelAndView model = new ModelAndView();
		model.setViewName("member/choose");
		model.addObject("dto", dto);

		return model;
	}

	public int getPageSu() {  //총 페이지 수
		pageSu = tot / plist;
		if(tot % plist > 0) pageSu += 1;
		return pageSu;
	}
	
	public ArrayList<CardDto> getList(List<CardDto> list, int page){
		ArrayList<CardDto> result = new ArrayList<CardDto>();
		int start = (page - 1) * plist;
		int size = plist <= list.size() - start?plist:list.size() - start;
		
		for (int i = 0; i < size; i++) {
			result.add(i, list.get(start + i));
		}
		return result;
	}
	//관리자 카드 관리, updatecard.jsp 창띄우기
	@RequestMapping(value="updatecard", method=RequestMethod.GET)
	public ModelAndView update(@RequestParam("page")int page) {
		ArrayList<CardDto> dto =(ArrayList<CardDto>)cardInter.cardList();
		ModelAndView model = new ModelAndView();
		model.setViewName("admin/updatecard");
		model.addObject("data", dto);
		
		tot= cardInter.getCardSu();
		ArrayList<CardDto> list = new ArrayList<CardDto>();
		list = getList(dto, page);
		
		model.addObject("dto", list);
		model.addObject("pageSu", getPageSu());
		model.addObject("page", page);
		return model;
	}
	//관리자(updatecard.jsp) 카드 검색
	@RequestMapping(value="searchcardadmin", method=RequestMethod.POST)
	public ModelAndView searchType(@RequestParam("searchVal") String type, @RequestParam("name") String val) {
		ArrayList<CardDto> list = (ArrayList<CardDto>)cardInter.searchCardNames(type, val);

		return new ModelAndView("admin/updatecard", "dto", list);
	}

	//카드 수정 창
	@RequestMapping(value="modifycard", method=RequestMethod.GET)
	public ModelAndView modi(@RequestParam("no") String no) {
		CardDto dto = cardInter.cardAdminInfo(no);
		ArrayList<CardDto> bene = (ArrayList<CardDto>)cardInter.beneAdminInfo(no);
		//		System.out.println(bene);
		ModelAndView model = new ModelAndView();
		model.setViewName("admin/modify");
		model.addObject("dto",dto);
		model.addObject("bene",bene);
		return model;
	}

	//카드 수정
			@RequestMapping(value="updatecardinfo")
			public String submit(CardDto dto, @RequestParam("image") String image, @RequestParam("beneArr") String[] beneArr, @RequestParam("page") int page) {
				boolean b = true;
				if(image == "" || image==null) {
					b = cardInter.upAdminCardNoImage(dto);
				}else {
					b = cardInter.upAdminCard(dto);
				}
				String benefit;
				cardInter.delBeneAll(dto.getCardno());
				
				for(int i=0;i<beneArr.length;i++) {
					 benefit = beneArr[i];
					 dto.setBenefit(benefit);
					 
					 cardInter.insUpBene(dto);
				}
				if(b)
					return "redirect:/updatecard?page=1";
				else
					return "error/error";
			}

	//카드 삽입
	@RequestMapping("insertcard")
	public ModelAndView insCard() {
		return new ModelAndView("admin/insert");
	}

	//혜택 삽입창
	@RequestMapping("insertbene")
	public ModelAndView insBene(CardDto dto) {
		boolean b = cardInter.insAdminCard(dto);
		if(b)
			return new ModelAndView("admin/insertbene");
		else
			return new ModelAndView("error/error");
	}

	//input type="text" 갯수대로 혜택 삽입
	@RequestMapping("insertFinish")
	public String insFinish( @RequestParam("addText0") String[] beneArr) {
		ArrayList<CardDto> list = (ArrayList<CardDto>)cardInter.cardList();
		String benefit;
		for (int i = 0; i < beneArr.length; i++) {
			 benefit = beneArr[i];
			 cardInter.insAdminBene(benefit);
		}
		return "redirect:/updatecard?page=1";
//		return new ModelAndView("admin/updatecard", "dto", list);
	}
	
	//카드 삭제
	@RequestMapping("deletecard")
	public String deleteCard(@RequestParam("no") String no) {
		boolean b = cardInter.delAdminCard(no);
		if(b)
			return "redirect:/updatecard?page=1";
		else
			return "error/error";
	}

	//카드정보
	@RequestMapping("cardread")
	public ModelAndView submit(@RequestParam("num") String num) {
		CardDto dto = cardInter.getCardDetail(num);
		ArrayList<CardDto> dto2 = (ArrayList<CardDto>)cardInter.beneAdminInfo(num);
		cardInter.getView(num);
		ModelAndView model = new ModelAndView();
		model.setViewName("guest/cardread");
		model.addObject("datas", dto);
		model.addObject("datas2", dto2);
		return model;

	}
	//카드리스트
	@RequestMapping("cardlist")
	public ModelAndView list(@RequestParam("val") String part) {
		ArrayList<CardDto> dto;
		if(part.equals("credit")) {
			dto =(ArrayList<CardDto>)cardInter.searchCardPart("신용");
		}else if(part.equals("check")) {
			dto =(ArrayList<CardDto>)cardInter.searchCardPart("체크");
		}else {
			dto =(ArrayList<CardDto>)cardInter.searchCardPart(part);
		}
		return new ModelAndView("guest/cardlist", "datas", dto);
	}
	//카드url로 이동
	@RequestMapping("cardurl")
	public void goUrl(@RequestParam("no") String no, HttpServletResponse response) throws IOException {
		CardDto dto = cardInter.cardAdminInfo(no);
		String url = dto.getUrl();
		response.sendRedirect(url);
	}
	//카드구분으로 카드 읽기
	@RequestMapping(value="searchPart", method=RequestMethod.POST) //
	   public ModelAndView searchProcess(@RequestParam("searchValue") String part) {
	      
	      List<CardDto> list = cardInter.searchCardPart(part);
	      return new ModelAndView("guest/cardlist","datas",list);
	   }
	//메인페이지
	@RequestMapping("main")
	public ModelAndView mainPage() {
		return new ModelAndView("guest/main");
	}
}

