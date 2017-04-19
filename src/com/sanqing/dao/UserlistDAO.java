package com.sanqing.dao;

import java.util.List;

import com.sanqing.po.Userlist;

/**
 * 
 * @author sunys
 * @description：
 * @date 2016-8-8 下午9:49:19
 */
public interface UserlistDAO {
	// 添加用户
	public void add(Userlist user);

	// 删除用户
	public void delete(Userlist user);

	// 更新用户
	public void update(Userlist user);

	// 查询所有用户
	public List queryAll();

	// 按id查询用户
	public Userlist queryByID(String username);
}
