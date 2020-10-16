package pack.model;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class LoanImpl extends SqlSessionDaoSupport implements LoanInter {

	public LoanImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}

	 @Override
	   public List<LoanDto> chooseResult(String interest, String period) {
	      LoanDto dto = new LoanDto();
	      dto.setMax(interest);
	      dto.setPeriod(period);
	      return getSqlSession().selectList("chooseLoan", dto);

	   }
	   //대출 전체 출력(관리자)
	   @Override
	   public List<LoanDto> selectAllLoanAdmin() {
	      return getSqlSession().selectList("selectAllLoanAdmin");
	   }
	   //전체 대출 수
	   @Override
	   public int totalLoanCnt() {
	      return getSqlSession().selectOne("totalLoanSu");
	   }

	   //대출 추가
	   @Override
	   public boolean insertLoan(LoanDto dto) {
	      int b = getSqlSession().insert("insertLoan", dto);
	      if(b>0)
	         return true;
	      else
	         return false;
	   }
	   
	   //loanno로 대출 하나만 검색
	   @Override
	   public LoanDto selectOneLoan(String no) {
	      return getSqlSession().selectOne("selectOneLoan", no);
	   }
	   //대출 수정
	   @Override
	   public boolean updateLoan(LoanDto dto) {
	      int b = getSqlSession().update("updateLoan", dto);
	      if(b>0)
	         return true;
	      else
	         return false;
	   }
	   //대출 삭제
	   @Override
	   public boolean deleteLoan(String no) {
	      int b = getSqlSession().delete("deleteLoan", no);
	      if(b>0)
	         return true;
	      else
	         return false;
	   }
	   //전체 대출 리스트
	   @Override
	   public List<LoanDto> loanList() {
	      return getSqlSession().selectList("selectLoanList");
	   }
	   //검색 결과
	   @Override
	   public List<LoanDto> searchLoanList(String option, String word) {
	      if(option.equals("name")) {
	         return getSqlSession().selectList("searchLoanName", word);
	      }else if(option.equals("company")) {
	         return getSqlSession().selectList("searchLoanCompany", word);         
	      }else {
	         return getSqlSession().selectList("searchLoanCompany", word);
	      }
	   }

}
