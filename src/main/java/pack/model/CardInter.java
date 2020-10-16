package pack.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pack.controller.CardBean;

public interface CardInter {

	public List<CardDto> beneList(String[] bene, String type);
	public List<CardDto> cardList(); //고객이 혜택 선택한만큼 혜택 출력
	public List<CardDto> searchCardNames(String type, String val) throws DataAccessException;//카드이름이나 카드사명으로 찾기
	public CardDto cardAdminInfo(String no);  //관리자 카드 리스트
	public List<CardDto> beneAdminInfo(String no); //관리자 카드 수정 눌렀을 때
	public boolean upAdminCard(CardDto dto);//카드 정보만 수정
	public boolean insAdminCard(CardDto dto);//혜택 선택
	public void insAdminBene(String sql);//혜택 삽입
	public boolean delAdminCard(String no);//카드 삭제
	public CardDto getCardDetail(String num);//카드 정보(관리자)
	public int getCardSu(); //전체 카드 수 세기
	public boolean insUpBene(CardDto dto);//혜택 수정
	public boolean delBeneAll(String no); //혜택 수정할 때 삭제
	//******************상욱
	//**********************
	List<CardDto> searchCard(CardBean bean) throws DataAccessException;
	boolean getView(String num);
	List<CardDto> searchCardPart(String part) throws DataAccessException;
	String getGuestLogin(CardBean bean) throws DataAccessException;
	CardDto getGuestInfo(String id) throws DataAccessException;
	boolean guestUpdate(CardBean bean);
	List<CardDto> getGuestCard(String id);

	
	//혜민
	public boolean upAdminCardNoImage(CardDto dto) ;


}
