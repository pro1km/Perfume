package kr.ac.kopo.perfume.dao;

import java.util.List;

import kr.ac.kopo.perfume.model.Review;
import kr.ac.kopo.perfume.util.Pager;

public interface ReviewDao {

	List<Review> list(Pager pager);

	void add(Review item);

	void delete(int rNum);

	Review getNum(int rNum);

	void update(Review item);

	int total(Pager pager);

}
