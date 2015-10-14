package com.youngball.stage.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * userBean entity. @author MyEclipse Persistence Tools
 */

public class userBean implements java.io.Serializable {

	// Fields

	private String id;
	private String username;
	private String email;
	private Long tel;
	private String password;
	private String type;

	// Constructors

	/** default constructor */
	public userBean() {
	}

	/** full constructor */
	public userBean(String username, String email, Long tel, String password,
			String type) {
		this.username = username;
		this.email = email;
		this.tel = tel;
		this.password = password;
		this.type = type;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getTel() {
		return this.tel;
	}

	public void setTel(Long tel) {
		this.tel = tel;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}


}