package kr.ac.kopo.perfume.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.perfume.dao.ReviewDao;
import kr.ac.kopo.perfume.model.Review;
import kr.ac.kopo.perfume.util.Pager;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	ReviewDao dao;

	@Override
	public List<Review> list(Pager pager) {
		
		int total = (int) dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Review item) {
		dao.add(item);
	}

	@Override
	public void delete(int rNum) {
		dao.delete(rNum);
	}

	@Override
	public Review getNum(int rNum) {
		return dao.getNum(rNum);
	}

	@Override
	public void update(Review item) {
		dao.update(item);
	}

}
