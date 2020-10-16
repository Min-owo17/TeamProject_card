package pack.model;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class CardCategoryImpl extends SqlSessionDaoSupport implements CardCategoryInter {
	
	public CardCategoryImpl(SqlSessionFactory factory) {
		setSqlSessionFactory(factory);
	}
	
	@Override
	public List<CardDto> loadListc(String category) {
		return getSqlSession().selectList("selectBenefit", category);
	}
	
	@Override
	public int currentNum() {
		// 가장 큰 번호
		if(getSqlSession().selectOne("currentNumC") == null) return 0;
		return getSqlSession().selectOne("currentNumC");
	}
	
	@Override
	public int totalCnt(String category) {
		return getSqlSession().selectOne("benefitCount", category);
	}
}
