package pack.model;

import java.util.List;

public interface GuestInter {
	List<CardDto> guestList(); //회원 전체
	List<CardDto> guestSearchList(String word, String option); //회원 검색 결과
	CardDto getGuestInfo(String id); //회원 상세정보
	RegisterDto guestCardInfo(String registerno); //회원별 카드정보(하나)
	List<RegisterDto> guestCard(String id); //회원별 카드정보(여럿)
	int guestUpdate(CardDto dto); //회원정보 수정
	int guestCardUpdate(RegisterDto dto); //회원 카드신청정보 수정
	int guestDelete(String id); //회원정보 삭제
	public boolean insData(CardDto dto);//회원가입 
	int currentNum();
	int totalCnt();
	public boolean idCheck(String id);//아이디  중복체크
}
