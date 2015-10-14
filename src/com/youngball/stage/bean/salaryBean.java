package com.youngball.stage.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * salaryBean entity. @author MyEclipse Persistence Tools
 */

public class salaryBean implements java.io.Serializable {

	// Fields

	private String id;
	private Long lsalary;
	private Long hsalary;

	// Constructors

	/** default constructor */
	public salaryBean() {
	}

	/** full constructor */
	public salaryBean(Long lsalary, Long hsalary) {
		this.lsalary = lsalary;
		this.hsalary = hsalary;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Long getLsalary() {
		return this.lsalary;
	}

	public void setLsalary(Long lsalary) {
		this.lsalary = lsalary;
	}

	public Long getHsalary() {
		return this.hsalary;
	}

	public void setHsalary(Long hsalary) {
		this.hsalary = hsalary;
	}


}