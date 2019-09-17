package kr.ac.kopo.perfume.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.perfume.dao.PerfumeDao;
import kr.ac.kopo.perfume.model.Perfume;

@Service
public class PerfumeServiceImpl implements PerfumeService {
	
	@Autowired
	PerfumeDao dao;
	
	@Override
	public void add(Perfume item) {
		dao.add(item);
	}

	@Override
	public void delete(int pNum) {
		dao.delete(pNum);
	}

}
