package kr.ac.kopo.perfume.service;

import kr.ac.kopo.perfume.model.Member;

public interface UserService {

	boolean login(Member member);

	void information(Member member);

	int loginChk(String id);

	int loginOk(String id, String pw);
}
