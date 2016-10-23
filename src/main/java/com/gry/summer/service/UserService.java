package com.gry.summer.service;

import com.gry.summer.domain.SysUser;

public interface UserService {

	public SysUser getUser(String loginName,String password);
	public int addUser(SysUser user);
}
