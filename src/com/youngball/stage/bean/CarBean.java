package com.youngball.stage.bean;

import java.util.Date;

/**
 * CarBean entity. @author MyEclipse Persistence Tools
 */

public class CarBean implements java.io.Serializable {

	// Fields

	private String id;
	private CarColorBean carColorBean;
	private String name;
	private Double price;
	private Double transfer;
	private String contact;
	private String contactTel;
	private String contactType;
	private String contactAdd;
	private String miles;
	private String accident;
	private String describe;
	private String care;
	private Date businessRisks;
	private Date compulsory;
	private Date shangpai;
	private Date daoqi;
	private Date createtime;

	// Constructors

	/** default constructor */
	public CarBean() {
	}

	/** full constructor */
	public CarBean(CarColorBean carColorBean, String name, Double price,
			Double transfer, String contact, String contactTel,
			String contactType, String contactAdd, String miles,
			String accident, String describe, String care, Date businessRisks,
			Date compulsory, Date shangpai, Date daoqi, Date createtime) {
		this.carColorBean = carColorBean;
		this.name = name;
		this.price = price;
		this.transfer = transfer;
		this.contact = contact;
		this.contactTel = contactTel;
		this.contactType = contactType;
		this.contactAdd = contactAdd;
		this.miles = miles;
		this.accident = accident;
		this.describe = describe;
		this.care = care;
		this.businessRisks = businessRisks;
		this.compulsory = compulsory;
		this.shangpai = shangpai;
		this.daoqi = daoqi;
		this.createtime = createtime;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public CarColorBean getCarColorBean() {
		return this.carColorBean;
	}

	public void setCarColorBean(CarColorBean carColorBean) {
		this.carColorBean = carColorBean;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getTransfer() {
		return this.transfer;
	}

	public void setTransfer(Double transfer) {
		this.transfer = transfer;
	}

	public String getContact() {
		return this.contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getContactTel() {
		return this.contactTel;
	}

	public void setContactTel(String contactTel) {
		this.contactTel = contactTel;
	}

	public String getContactType() {
		return this.contactType;
	}

	public void setContactType(String contactType) {
		this.contactType = contactType;
	}

	public String getContactAdd() {
		return this.contactAdd;
	}

	public void setContactAdd(String contactAdd) {
		this.contactAdd = contactAdd;
	}

	public String getMiles() {
		return this.miles;
	}

	public void setMiles(String miles) {
		this.miles = miles;
	}

	public String getAccident() {
		return this.accident;
	}

	public void setAccident(String accident) {
		this.accident = accident;
	}

	public String getDescribe() {
		return this.describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public String getCare() {
		return this.care;
	}

	public void setCare(String care) {
		this.care = care;
	}

	public Date getBusinessRisks() {
		return this.businessRisks;
	}

	public void setBusinessRisks(Date businessRisks) {
		this.businessRisks = businessRisks;
	}

	public Date getCompulsory() {
		return this.compulsory;
	}

	public void setCompulsory(Date compulsory) {
		this.compulsory = compulsory;
	}

	public Date getShangpai() {
		return this.shangpai;
	}

	public void setShangpai(Date shangpai) {
		this.shangpai = shangpai;
	}

	public Date getDaoqi() {
		return this.daoqi;
	}

	public void setDaoqi(Date daoqi) {
		this.daoqi = daoqi;
	}

	public Date getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

}