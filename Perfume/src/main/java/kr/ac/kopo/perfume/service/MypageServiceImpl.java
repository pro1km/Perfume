package kr.ac.kopo.perfume.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.perfume.dao.MypageDao;
import kr.ac.kopo.perfume.model.Mypage;
import kr.ac.kopo.perfume.model.Review;
import kr.ac.kopo.perfume.util.Pager;
import kr.ac.kopo.perfume.util.Pager2;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageDao dao;

	@Override
	public Mypage getCs(String cs) {
		return dao.getCs(cs);
	}

	@Override
	public List<Mypage> list(Pager2 pager, String id) {
		int total = (int) dao.total(pager,id);
		
		pager.setTotal(total);
		
		return dao.list(pager,id);
	}

	@Override
	public void add(Review item) {
		dao.add(item);
	}

	@Override
	public int percount(String count, String id) {
		return dao.percount(count,id);
	}

	@Override
	public int rvcount(String count, String id) {
		return dao.rvcount(count,id);
	}

}
