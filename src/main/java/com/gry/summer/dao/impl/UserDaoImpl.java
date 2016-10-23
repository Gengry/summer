package com.gry.summer.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import com.gry.summer.dao.UserDao;
import com.gry.summer.domain.SysUser;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public SysUser getUser(String loginName, String password) {
		final SysUser sysUser = new SysUser();
		String sql = "select * from t_user where username=? and password=? ";
		jdbcTemplate.query(sql, new Object[]{loginName,password}, new RowCallbackHandler() {
			
			public void processRow(ResultSet rs) throws SQLException {
				if(!rs.wasNull()){
					sysUser.setId(rs.getString(1));
					sysUser.setNickName(rs.getString(2));
					sysUser.setUserName(rs.getString(3));
					sysUser.setPassword(rs.getString(4));
				}
			}
		});
		return sysUser;
	}
	
	public int addUser(SysUser user){
		String sql = "insert into t_user values (?,?,?,?,?)";
		return jdbcTemplate.update(sql, new Object[]{user.getId(),user.getNickName(),user.getUserName(),user.getPassword(),user.getRandom()});
	}

}
