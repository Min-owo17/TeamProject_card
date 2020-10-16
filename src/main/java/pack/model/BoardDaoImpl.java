package pack.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pack.controller.BoardBean;

@Repository
public class BoardDaoImpl extends SqlSessionDaoSupport implements BoardDaoInter{
	@Autowired
	public BoardDaoImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	public ArrayList<BoardDto> getList(){
		return (ArrayList)getSqlSession().selectList("selectListBoard");
	}
	
	@Override
	public ArrayList<BoardDto> getSearch(BoardBean bean) {
		return (ArrayList)getSqlSession().selectList("searchListBoard", bean);
	}
	//怨좉컼�씠 湲� �옉�꽦
	@Override
	public boolean insert(BoardBean bean) {
		int re = getSqlSession().insert("insertDataBoard", bean);
		if(re > 0)
			return true;
		else
			return false;
	}
	
	@Override
	public BoardDto getDetail(String num) {
		return getSqlSession().selectOne("selectOneBoard", num);
	}
	
	@Override
	public boolean update(BoardBean bean) {
		int re = getSqlSession().update("updateDataBoard", bean);
		if(re > 0)
			return true;
		else
			return false;
	}
	
	@Override
	public boolean delete(String num) {
		int re = getSqlSession().delete("deleteDataBoard", num);
		if(re > 0)
			return true;
		else
			return false;
	}
	
	@Override
	public int currentNum() {
		// 揶쏉옙占쎌삢 占쎄쿃 甕곕뜇�깈
		if(getSqlSession().selectOne("currentNumBoard") == null) return 0;
		return getSqlSession().selectOne("currentNumBoard");
	}
	
	@Override
	public int totalCnt() {
		return getSqlSession().selectOne("totalCntBoard");
	}
	
	@Override
	public boolean updateReadcnt(String num) { //鈺곌퀬�돳占쎈땾 筌앹빓占�
		int re = getSqlSession().update("updateReadcntBoard", num);
		if(re > 0)
			return true;
		else
			return false;
	}
	
	@Override
	public String selectPass(String num) {
		// 占쎈땾占쎌젟占쎌뒠
		return getSqlSession().selectOne("selectPassBoard", num);
	}
	
	@Override
	public boolean updateOnum(BoardBean bean) {
		// 占쎈솊疫뀐옙占쎌뒠
		int re = getSqlSession().update("updateOnumBoard", bean);
		if(re > 0)
			return true;
		else
			return false;
	}
	//�뙎湲��떖湲�
	@Override
	public boolean insertReply(BoardBean bean) {
		// 占쎈솊疫뀐옙 占쎈쾻嚥∽옙
		bean.setName("관리자");
		int re = getSqlSession().insert("insertReDataAdmin", bean);
		if(re > 0)
			return true;
		else
			return false;
	}
	//愿�由ъ옄 濡쒓렇�씤
	@Override
	   public String logcheckAdmin(BoardBean bean) {
	      return getSqlSession().selectOne("logcheckadmin", bean);
	   }
	@Override
	public List<BoardDto> getBoard(String id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("getGuestBoard", id);
	}
}