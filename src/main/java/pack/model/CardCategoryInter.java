package pack.model;

import java.util.List;

public interface CardCategoryInter {
	List<CardDto> loadListc(String category);//카테고리 선택 후 해당 결과 불러옴
	
	int currentNum(); //최근번호
	int totalCnt(String category); //결과 수 세기
}
