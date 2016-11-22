package com.kvn.ujianonline.dao;

import java.util.List;

import com.kvn.ujianonline.model.UserAccount;

import java.util.ArrayList;

public class DaoUserAccount {
	private List<UserAccount> listUser = new ArrayList<UserAccount>();
	
	public void save(UserAccount userAccount){
		userAccount.setId(listUser.size()+1);
		listUser.add(userAccount);
	}
	
	public List<UserAccount> getAll(){
		return listUser;
	}
	
	public UserAccount getById(int idUser){
		for (UserAccount user : listUser) {
			if(idUser == user.getId()){
				return user;
			}
		}
		return null;
	}
	
	public UserAccount getByUsername(String username){
		for (UserAccount user : listUser) {
			if(username.equals(user.getUsername())){
				return user;
			}
		}
		return null;
	}
}
