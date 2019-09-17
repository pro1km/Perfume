package kr.ac.kopo.perfume.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.perfume.model.Perfume;

@Repository
public class PerfumeDaoImpl implements PerfumeDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Perfume item) {
		sql.insert("perfume.add", item);
	}

	@Override
	public void delete(int pNum) {
		sql.delete("perfume.delete", pNum);
	}

}
