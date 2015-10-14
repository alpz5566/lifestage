package com.youngball.stage.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * company_registeredBean entity. @author MyEclipse Persistence Tools
 */

public class company_registeredBean implements java.io.Serializable {

	// Fields

	private String id;
	private regionalBean regionalBean;
	private natureBean natureBean;
	private welfareBean welfareBean;
	private String name;
	private String compaySize;
	private String linkman;
	private String detailedAddr;
	private String email;
	private String url;
	private String company_profile;
	private String tel;
	private String publisher;
	private Set employment_infoBeans = new HashSet(0);

	// Constructors

	/** default constructor */
	public company_registeredBean() {
	}

	/** full constructor */
	public company_registeredBean(regionalBean regionalBean,
			natureBean natureBean, welfareBean welfareBean, String name,
			String compaySize, String linkman, String detailedAddr,
			String email,  String url, String publisher,
			Set employment_infoBeans) {
		this.regionalBean = regionalBean;
		this.natureBean = natureBean;
		this.welfareBean = welfareBean;
		this.name = name;
		this.compaySize = compaySize;
		this.linkman = linkman;
		this.detailedAddr = detailedAddr;
		this.email = email;
		this.url = url;
		this.publisher = publisher;
		this.employment_infoBeans = employment_infoBeans;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public regionalBean getRegionalBean() {
		return this.regionalBean;
	}

	public void setRegionalBean(regionalBean regionalBean) {
		this.regionalBean = regionalBean;
	}

	public natureBean getNatureBean() {
		return this.natureBean;
	}

	public void setNatureBean(natureBean natureBean) {
		this.natureBean = natureBean;
	}

	public welfareBean getWelfareBean() {
		return this.welfareBean;
	}

	public void setWelfareBean(welfareBean welfareBean) {
		this.welfareBean = welfareBean;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompaySize() {
		return this.compaySize;
	}

	public void setCompaySize(String compaySize) {
		this.compaySize = compaySize;
	}

	public String getLinkman() {
		return this.linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getDetailedAddr() {
		return this.detailedAddr;
	}

	public void setDetailedAddr(String detailedAddr) {
		this.detailedAddr = detailedAddr;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getPublisher() {
		return this.publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Set getEmployment_infoBeans() {
		return this.employment_infoBeans;
	}

	public void setEmployment_infoBeans(Set employment_infoBeans) {
		this.employment_infoBeans = employment_infoBeans;
	}

	public String getCompany_profile() {
		return company_profile;
	}

	public void setCompany_profile(String companyProfile) {
		company_profile = companyProfile;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
}