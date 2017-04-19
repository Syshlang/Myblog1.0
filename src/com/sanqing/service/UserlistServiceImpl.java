package com.sanqing.service;

import com.sanqing.dao.UserlistDAO;
import com.sanqing.po.Userlist;

public class UserlistServiceImpl implements UserlistService {
	private UserlistDAO userDAO;
	/**
	 * 注册用户
	 */
	public String registerUser(Userlist user) {
		//判断用户是否存在
		if(userDAO.queryByID(user.getUsername()) != null) {
			//用户已存在，不予注册
			return UserlistService.existusername;
		}else {
			//否则添加用户
			userDAO.add(user);
			return UserlistService.addsuccess;
		}
	}

	public UserlistDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserlistDAO userDAO) {
		this.userDAO = userDAO;
	}

	/**
	 * 登录用户
	 */
	public String loginUser(Userlist user) {
		//查询用户信息
		Userlist queryUser = userDAO.queryByID(user.getUsername());
		//判断用户是否存在
		if(queryUser == null) {
			return UserlistService.nouser;
		} else {
			//若用户存在，则判断密码是否正确			
			if(queryUser.getPassword().equals(user.getPassword())) {
				return UserlistService.success;
			} else {
				return UserlistService.errpass;
			}
		}
	}
	
	

}
