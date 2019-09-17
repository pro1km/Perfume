package kr.ac.kopo.perfume.dao;

import kr.ac.kopo.perfume.model.Perfume;

public interface PerfumeDao {

	void add(Perfume item);

	void delete(int pNum);

}
