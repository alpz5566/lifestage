package com.youngball.stage.bean;

/**
 * skillBean entity. @author MyEclipse Persistence Tools
 */

public class skillBean implements java.io.Serializable {

	// Fields

	private String id;
	private String name;

	// Constructors

	/** default constructor */
	public skillBean() {
	}

	/** full constructor */
	public skillBean(String name) {
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