package com.zs.LoginDemo.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.zs.LoginDemo.model.UserInfo;
@Repository
public interface IUserInfoDao {
	public UserInfo checkuser(@Param("username") String username, @Param("password") String password);
}