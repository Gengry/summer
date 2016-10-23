package com.gry.summer.dao;

import com.gry.summer.domain.SysUser;

public interface UserDao {

	public SysUser getUser(String loginName,String password);
	
	public int addUser(SysUser user);
}
