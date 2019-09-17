package kr.ac.kopo.perfume.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.perfume.dao.UserDao;
import kr.ac.kopo.perfume.model.Member;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao dao;

	@Override
	public boolean login(Member member) {
		return dao.login(member);
	}

	@Override
	public void information(Member member) {
		dao.information(member);
		
	}

	@Override
	public int loginChk(String id) {
		return dao.loginChk(id);
	}

	@Override
	public int loginOk(String id, String pw) {
		return dao.loginOk(id, pw);
	}

}
