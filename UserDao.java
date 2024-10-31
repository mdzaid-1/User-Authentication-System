package com.project.dao;

import com.project.User;

public interface UserDao {

	boolean addUser(User user);
	boolean isValidUser(String username, String password);
}