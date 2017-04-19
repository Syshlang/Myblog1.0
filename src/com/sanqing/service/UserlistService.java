package com.sanqing.service;

import com.sanqing.po.Userlist;

public interface UserlistService {
	static String nouser="NO_USERNAME";//用户不存在
	static String errpass="ERR_PASSWORD";//密码错误
	static String success="LOGIN_SUCCESS";//成功登陆
	static String existusername="EXIST_USER";//用户已存在                        
	static String addsuccess = "ADD_SUCCESS";//注册
	//用户注册
	public String registerUser(Userlist user);
	
	//用户登陆
	public String loginUser(Userlist user);
}
