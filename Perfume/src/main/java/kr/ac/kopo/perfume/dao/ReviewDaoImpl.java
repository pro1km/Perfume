package kr.ac.kopo.perfume.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.perfume.model.Review;
import kr.ac.kopo.perfume.util.Pager;

@Repository
public class ReviewDaoImpl implements ReviewDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Review> list(Pager pager) {
		return sql.selectList("review.list", pager);
	}

	@Override
	public void add(Review item) {
		sql.insert("review.add", item);
	}

	@Override
	public void delete(int rNum) {
		sql.delete("review.delete", rNum);
	}

	@Override
	public Review getNum(int rNum) {
		return sql.selectOne("review.item", rNum);
	}

	@Override
	public void update(Review item) {
		sql.update("review.update", item);
	}

	@Override
	public int total(Pager pager) {
		int total = sql.selectOne("review.total", pager);
		
		return total;
	}

}
