package com.zs.LoginDemo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zs.LoginDemo.dao.IUserInfoDao;
@Service
public class UserInfoService implements IUserInfoService {
	
	@Autowired
	private IUserInfoDao userInfoDao;
		public boolean login(String username, String password) {
			if(username == null || password == null || "".equals(username) || "".equals(password)) {
				return false;
			}
			if(userInfoDao.checkuser(username, password) == null)
				return false;
			return true;
		}
}
