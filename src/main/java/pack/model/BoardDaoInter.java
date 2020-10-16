package pack.model;

import java.util.ArrayList;
import java.util.List;

import pack.controller.BoardBean;

public interface BoardDaoInter {
	ArrayList<BoardDto> getList();
	ArrayList<BoardDto> getSearch(BoardBean bean);
	
	boolean insert(BoardBean bean);
	BoardDto getDetail(String num);
	boolean update(BoardBean bean);
	boolean delete(String num);
	
	int currentNum();
	int totalCnt();
	boolean updateReadcnt(String num);
	String selectPass(String num);
	
	boolean updateOnum(BoardBean bean);
	boolean insertReply(BoardBean bean);
	String logcheckAdmin(BoardBean bean);
	
	List<BoardDto> getBoard(String id);
}
