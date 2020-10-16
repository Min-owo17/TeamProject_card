package pack.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import pack.controller.CardBean;

@Service
@Repository
public class CardImpl extends SqlSessionDaoSupport implements CardInter {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	@Autowired
	public CardImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
		try {
			Context context = new InitialContext();
		} catch (Exception e) {
			System.out.println("CardImpl err : " + e);
		}
	}

	//고객이 혜택 선택한만큼 혜택 출력
	@Override
	public List<CardDto> beneList(String[] bene, String type) {
		String sql = "";
	      if(!bene[0].equals("전체")) {
	         sql += "(";
	         for (int i = 0; i < bene.length-1; i++) {
	            sql += "benefit like concat('%', '" + bene[i] + "', '%') or ";
	         }
	         sql += "benefit like concat('%', '" + bene[bene.length - 1] + "', '%')) and partcard like '%";
	         sql+= type + "%'";         
	         return getSqlSession().selectList("beneinserting", sql);
	      }else {
	         sql += "partcard like '%" + type + "%'";
	         return getSqlSession().selectList("beneinserting", sql);
	      }
	}
	//카드이름이나 카드사명으로 찾기
	@Override
	public List<CardDto> searchCardNames(String type, String value) throws DataAccessException {
		if (type.equals("cardname"))
			return getSqlSession().selectList("searchCardName", value);
		else if (type.equals("companyname"))
			return getSqlSession().selectList("searchCardCom", value);
		else
			return null;
	}
	 //관리자 카드 리스트
	@Override
	public List<CardDto> cardList() {
		return getSqlSession().selectList("dispCardData");
	}
	//관리자 카드 수정 눌렀을 때
	@Override
	public CardDto cardAdminInfo(String no) {
		return getSqlSession().selectOne("cardModify", no);
	}
	//관리자 카드 혜택 수정하기 위해 선택 
	@Override
	public List<CardDto> beneAdminInfo(String no) {
		return getSqlSession().selectList("beneModify", no);
	}
	//카드 정보만 수정
	@Override
	public boolean upAdminCard(CardDto dto) {
		try {
			getSqlSession().update("updateCard", dto);
			return true;
		} catch (Exception e) {
			System.out.println("upCard err : " + e);
			return false;
		}

	}

	//카드 삽입
	@Override
	public boolean insAdminCard(CardDto dto) {
		try {
			int b = getSqlSession().insert("insCard", dto);
			if (b > 0)
				return true;
			else
				return false;
		} catch (Exception e) {
			System.out.println("insCard err: " + e);
			return false;
		}
	}
	//혜택 삽입
	@Override
	public void insAdminBene(String sql) {

		getSqlSession().insert("benefitupdate", sql);
	}
	//카드 삭제
	@Override
	public boolean delAdminCard(String no) {
		int re2 = getSqlSession().delete("delBene", no);
		int re = getSqlSession().delete("delCard", no);

		if(re >0&& re2>0)
			return true;
		else 
			return false;
	}
		//카드 정보(관리자)
	   @Override
	   public CardDto getCardDetail(String num) {
	       return getSqlSession().selectOne("cardModify", num);
	     
	   }
//####################################상욱
	   //#############
	   @Override
	   public List<CardDto> searchCard(CardBean bean) throws DataAccessException {
	      // TODO Auto-generated method stub
	      return getSqlSession().selectList("searchCardName",bean);
	   }

	   @Override
	   public List<CardDto> searchCardPart(String part) throws DataAccessException {
	      // TODO Auto-generated method stub
	      return getSqlSession().selectList("searchCardPart",part);
	   }
	   

	   @Override
	   public String getGuestLogin(CardBean bean) throws DataAccessException {
	      
	      return getSqlSession().selectOne("getGuestLogin",bean);
	   }


	   @Override
	   public CardDto getGuestInfo(String id) throws DataAccessException {
	      return getSqlSession().selectOne("getGuestInfo",id);
	      
	   }


	   @Override
	   public boolean getView(String num) {
	      int re =  getSqlSession().update("getCardView",num);
	      if(re>0)
	    	  return true;
	      else
	    	  return false;
	      
	   }
	   @Override
	   public boolean guestUpdate(CardBean bean) {
	      int re = getSqlSession().update("guestUpdate",bean);
	      if(re>0) {
	         return true;
	      }
	      else 
	         return false;
	   }
	   @Override
	   public List<CardDto> getGuestCard(String id) {
	      // TODO Auto-generated method stub
	      return getSqlSession().selectList("getGuestCard",id);
	   }
	   
	   //전체 카드 수 세기
	   @Override
	public int getCardSu() {
		
		return getSqlSession().selectOne("totalCardSu");
	}
	   
	 //카드 정보(이미지 제외)만 수정
		@Override
		public boolean upAdminCardNoImage(CardDto dto) {
			try {
				getSqlSession().update("updateCardNoImage", dto);
				return true;
			} catch (Exception e) {
				System.out.println("upCard err : " + e);
				return false;
			}

		}
		
		//혜택 삭제
		@Override
		public boolean delBeneAll(String no) {
			int b = getSqlSession().delete("delBene", no);
			if(b>0)
				return true;
			else
				return false;
		}
		//혜택 수정
		@Override
		public boolean insUpBene(CardDto dto) {
			int b = getSqlSession().insert("insUpBene", dto);
			if(b>0)
			return true;
			else
				return false;
		}
		
		
}

