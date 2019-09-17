package kr.ac.kopo.perfume.service;

import java.util.List;

import kr.ac.kopo.perfume.model.Mypage;
import kr.ac.kopo.perfume.model.Review;
import kr.ac.kopo.perfume.util.Pager;
import kr.ac.kopo.perfume.util.Pager2;

public interface MypageService {

	Mypage getCs(String cs);

	List<Mypage> list(Pager2 pager, String id);

	void add(Review item);

	int percount(String count, String id);

	int rvcount(String count, String id);

}
