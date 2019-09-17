package kr.ac.kopo.perfume.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.perfume.model.Member;
import kr.ac.kopo.perfume.util.Pager2;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public boolean login(Member member) {
		if(sql.selectOne("member.login", member) == null)
			return false;
		
		return true;
	}

	@Override
	public void information(Member member) {
		sql.insert("member.information",member);
		
	}

	@Override
	public int loginChk(String id) {
		return sql.selectOne("member.loginChk", id);
	}

	@Override
	public int loginOk(String id, String pw) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("id", id);
		map.put("pw", pw);
		
		return sql.selectOne("member.loginOk", map);
	}

}
