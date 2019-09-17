package kr.ac.kopo.perfume.dao;

import kr.ac.kopo.perfume.model.Member;

public interface UserDao {
	
	boolean login(Member member);

	void information(Member member);

	int loginChk(String id);

	int loginOk(String id, String pw);

}
