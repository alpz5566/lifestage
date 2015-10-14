package com.youngball.stage.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * CarColorBean entity. @author MyEclipse Persistence Tools
 */

public class CarColorBean implements java.io.Serializable {

	// Fields

	private String id;
	private String color;
	private Set carBeans = new HashSet(0);

	// Constructors

	/** default constructor */
	public CarColorBean() {
	}

	/** full constructor */
	public CarColorBean(String color, Set carBeans) {
		this.color = color;
		this.carBeans = carBeans;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getColor() {
		return this.color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Set getCarBeans() {
		return this.carBeans;
	}

	public void setCarBeans(Set carBeans) {
		this.carBeans = carBeans;
	}

}