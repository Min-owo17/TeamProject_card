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
import pack.model.LoanDto;
import pack.model.LoanInter;

@Controller
public class LoanAdminController {
	@Autowired
	@Qualifier("loanImpl")
	private LoanInter loanInter;

	private int tot;
	private int plist = 10;
	private int pageSu;

	public ArrayList<LoanDto> getList(List<LoanDto> list, int page){
		ArrayList<LoanDto> result = new ArrayList<LoanDto>();
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
	//updateloan.jsp 창 띄우기
	@RequestMapping("updateloan")
	public ModelAndView updateLoan(@RequestParam("page") int page) {
		ModelAndView model = new ModelAndView();
		List<LoanDto> list = loanInter.selectAllLoanAdmin();
		model.setViewName("admin/updateloan");

		tot = loanInter.totalLoanCnt();

		ArrayList<LoanDto> result = new ArrayList<LoanDto>();
		result = getList(list, page);

		model.addObject("list", result);
		model.addObject("pageSu", getPageSu());
		model.addObject("page", page);
		return  model;
	}

	//updateloan.jsp에서 검색
	 @RequestMapping("searchLoan")
	   public ModelAndView searchLoan(@RequestParam("option")String option, @RequestParam("word")String word) {
	      ModelAndView view = new ModelAndView();
	      view.setViewName("admin/updateloan");
	      ArrayList<LoanDto> list = (ArrayList<LoanDto>) loanInter.searchLoanList(option, word);
	      view.addObject("list", list);
	      return view;
	   }

	
	//대출 추가 창띄우기
	@RequestMapping("insertloan")
	public ModelAndView insertLoanForm() {
		return new ModelAndView("admin/insertloan");
	}
	
	//대출 추가 완료
	@RequestMapping("insloanfinish")
	public String insertLoanFinish(LoanDto dto) {
		boolean b = loanInter.insertLoan(dto);
		
		if(b)
			return "redirect:/updateloan?page=1";
		else
			return "error/error";
	}
	//대출 수정 창띄우기
	@RequestMapping("modifyloan")
	public ModelAndView updateLoanForm(@RequestParam("no") String no) {
		LoanDto dto = loanInter.selectOneLoan(no);
		return new ModelAndView("admin/modifyloan", "dto", dto);
	}
	//대출 수정 완료
	@RequestMapping("updateloaninfo")
	public String updateLoanFinish(LoanDto dto) {
	boolean b = loanInter.updateLoan(dto);
	if(b)
		return "redirect:/updateloan?page=1";
	else
		return "error/error";
	}
	
	//대출 삭제
	@RequestMapping("deleteloan")
	public String deleteLoan(@RequestParam("no") String no) {
		boolean b= loanInter.deleteLoan(no);
		if(b)
			return "redirect:/updateloan?page=1";
		else
			return "error/error";
	}
}
