package com.gry.summer.domain;

import java.io.Serializable;

public class SysUser implements Serializable{

	
	private static final long serialVersionUID = 8620077619803225801L;
	private String id;  //UUID
	private String nickName;
	private String userName;
	private String password; //md5
	private String random;
	
	public SysUser() {
	}
	public SysUser(String id, String nickName, String userName, String password, String random) {
		super();
		this.id = id;
		this.nickName = nickName;
		this.userName = userName;
		this.password = password;
		this.random = random;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRandom() {
		return random;
	}
	public void setRandom(String random) {
		this.random = random;
	}
	
	@Override
	public String toString() {
		return "SysUser [id=" + id + ", nickName=" + nickName + ", userName=" + userName + ", password=" + password
				+ ", random=" + random + "]";
	}
}
