package com.youngball.stage.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * monny_typeBean entity. @author MyEclipse Persistence Tools
 */

public class monny_typeBean implements java.io.Serializable {

	// Fields

	private String id;
	private String name;

	// Constructors

	/** default constructor */
	public monny_typeBean() {
	}

	/** full constructor */
	public monny_typeBean(String name) {
		this.name = name;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}


}