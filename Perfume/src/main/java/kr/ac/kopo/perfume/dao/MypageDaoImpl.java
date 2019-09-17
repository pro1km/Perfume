package kr.ac.kopo.perfume.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.perfume.model.Mypage;
import kr.ac.kopo.perfume.model.Review;
import kr.ac.kopo.perfume.util.Pager;
import kr.ac.kopo.perfume.util.Pager2;

@Repository
public class MypageDaoImpl implements MypageDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public Mypage getCs(String cs) {
		return sql.selectOne("mypage.item", cs);
	}

	@Override
	public int total(Pager2 pager, String id) {
		Map<String, Object> map = new HashMap<String, Object>(); 
		map.put("id", id);
		map.put("pager", pager);
		
		int total = sql.selectOne("mypage.total", map);
		return total;
	}

	@Override
	public List<Mypage> list(Pager2 pager, String id) {
		Map<String, Object> map = new HashMap<String, Object>(); 
		map.put("id", id);
		map.put("pager", pager);
		
		return sql.selectList("mypage.list", map);
	}

	@Override
	public void add(Review item) {
		sql.insert("mypage.add", item);
	}

	@Override
	public int percount(String count, String id) {
		Map<String, String> map = new HashMap<String, String>(); 
		map.put("id", id);
		map.put("count", count);

		return sql.selectOne("mypage.total", map);
	}

	@Override
	public int rvcount(String count, String id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("count", count);
		map.put("id", id);
		
		return sql.selectOne("mypage.rvtotal", map);
	}

}
