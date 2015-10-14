package com.youngball.stage.bean;

import java.util.HashSet;
import java.util.Set;


/**
 * regionalBean entity. @author MyEclipse Persistence Tools
 */

public class regionalBean implements java.io.Serializable {

	// Fields

	private String id;
	private String name;
	private Set<company_registeredBean> companyRegisteredBeans = new HashSet<company_registeredBean>();

	// Constructors

	/** default constructor */
	public regionalBean() {
	}

	/** minimal constructor */
	public regionalBean(String name) {
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

	public Set<company_registeredBean> getCompanyRegisteredBeans() {
		return companyRegisteredBeans;
	}

	public void setCompanyRegisteredBeans(
			Set<company_registeredBean> companyRegisteredBeans) {
		this.companyRegisteredBeans = companyRegisteredBeans;
	}


}