package com.youngball.stage.bean;

/**
 * certicateBean entity. @author MyEclipse Persistence Tools
 */

public class certicateBean implements java.io.Serializable {

	// Fields

	private String id;
	private resume_infoBean resume_infoBean;
	private String certificateName;
	private String certificateTime;
	private String imageurl;

	// Constructors

	/** default constructor */
	public certicateBean() {
	}

	/** full constructor */
	public certicateBean(resume_infoBean resume_infoBean,
			String certificateName, String certificateTime, String imageurl) {
		this.resume_infoBean = resume_infoBean;
		this.certificateName = certificateName;
		this.certificateTime = certificateTime;
		this.imageurl = imageurl;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public resume_infoBean getResume_infoBean() {
		return this.resume_infoBean;
	}

	public void setResume_infoBean(resume_infoBean resume_infoBean) {
		this.resume_infoBean = resume_infoBean;
	}

	public String getCertificateName() {
		return this.certificateName;
	}

	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}

	public String getCertificateTime() {
		return this.certificateTime;
	}

	public void setCertificateTime(String certificateTime) {
		this.certificateTime = certificateTime;
	}

	public String getImageurl() {
		return this.imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}

}