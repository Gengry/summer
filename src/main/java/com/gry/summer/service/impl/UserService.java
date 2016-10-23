package com.gry.summer.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gry.summer.dao.UserDao;
import com.gry.summer.domain.SysUser;

@Service
public class UserService implements com.gry.summer.service.UserService {

	@Autowired
	private UserDao userDao;
	
	public SysUser getUser(String loginName, String password) {
		return userDao.getUser(loginName, password);
	}

	@Override
	public int addUser(SysUser user) {
		return userDao.addUser(user);
	}

}
