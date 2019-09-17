package kr.ac.kopo.perfume.service;

import java.util.List;

import kr.ac.kopo.perfume.model.Review;
import kr.ac.kopo.perfume.util.Pager;

public interface ReviewService {

	List<Review> list(Pager pager);

	void add(Review item);

	void delete(int rNum);

	Review getNum(int rNum);

	void update(Review item);

}
