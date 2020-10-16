package pack.model;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class GuestImpl extends SqlSessionDaoSupport implements GuestInter {
	
	public GuestImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}

	@Override
	public List<CardDto> guestList() {
		return getSqlSession().selectList("selectGuestData");
	}
	
	@Override
	public List<CardDto> guestSearchList(String word, String option) {
		if(option.equals("id"))
			return getSqlSession().selectList("selectIdGuestData", word);
		else if(option.equals("name"))
			return getSqlSession().selectList("selectNameGuestData", word);
		else
			return getSqlSession().selectList("selectIdGuestData", word);
	}

	@Override
	public CardDto getGuestInfo(String id) {
		return getSqlSession().selectOne("selectGuestDataInfo", id);
	}
	
	@Override
	public List<RegisterDto> guestCard(String registerno) {
		return getSqlSession().selectList("selectGuestCardData", registerno);
	}

	@Override
	public int guestUpdate(CardDto dto) {
		return getSqlSession().update("updateGuestDataAdmin", dto);
	}
	
	@Override
	public int guestCardUpdate(RegisterDto dto) {
		return getSqlSession().update("updateGuestCardData", dto);
	}

	@Override
	public int guestDelete(String id) {
		return getSqlSession().delete("deleteGuestData", id);
	}

	@Override
	public RegisterDto guestCardInfo(String registerno) {
		return getSqlSession().selectOne("selectGuestCard", registerno);
	}
	
	@Override
	public int currentNum() {
		// 가장 큰 번호
		if(getSqlSession().selectOne("currentNum") == null) return 0;
		return getSqlSession().selectOne("currentNum");
	}
	
	@Override
	public int totalCnt() {
		return getSqlSession().selectOne("totalCnt");
	}
	
	@Override
	public boolean insData(CardDto dto) {
		try {
			getSqlSession().insert("insertGuest", dto); 
			return true;
		} catch (Exception e) {
			System.out.println("insData data : " + e);
			return false;
		}
		
	}
	
	//아이디체크
	@Override
	public boolean idCheck(String id){
		if(getSqlSession().selectOne("idCheck", id) == null) return true;
		else return false; 
	}
}
