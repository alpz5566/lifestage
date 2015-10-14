package com.youngball.stage.bean;


public class imgBean implements java.io.Serializable{
	private String id;
	private String url;
	private company_registeredBean company_registeredBean;
	public imgBean(String id, String url,
			company_registeredBean companyRegisteredBean) {
		super();
		this.id = id;
		this.url = url;
		company_registeredBean = companyRegisteredBean;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public company_registeredBean getCompany_registeredBean() {
		return company_registeredBean;
	}
	public void setCompany_registeredBean(
			company_registeredBean companyRegisteredBean) {
		company_registeredBean = companyRegisteredBean;
	}
	

}
