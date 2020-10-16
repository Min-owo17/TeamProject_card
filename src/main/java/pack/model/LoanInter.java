package pack.model;

import java.util.List;

public interface LoanInter {
	public List<LoanDto> loanList();
	public List<LoanDto> chooseResult(String interest, String period);//고객이 선택한 옵션 결과
	public List<LoanDto> selectAllLoanAdmin(); //관리자에서 전체 대출 선텍
	public int totalLoanCnt(); //전체 대출 수
	public boolean insertLoan(LoanDto dto); //대출 추가
	public boolean updateLoan(LoanDto dto); //대출 수정
	public boolean deleteLoan(String no); //대출 삭제
	public LoanDto selectOneLoan(String no); //대출 정보 하나만 선택
	public List<LoanDto> searchLoanList(String option, String word); //검색 결과
}
