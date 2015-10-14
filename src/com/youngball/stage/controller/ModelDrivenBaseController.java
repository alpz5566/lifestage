package com.youngball.stage.controller;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ModelDriven;
import com.youngball.stage.service.EducationService;
import com.youngball.stage.service.EmploymentInfoService;
import com.youngball.stage.service.JobtypeService;
import com.youngball.stage.service.RegionalService;
import com.youngball.stage.service.SalaryService;
import com.youngball.stage.service.Impl.RegionalServiceImpl;

public class ModelDrivenBaseController<T> implements ModelDriven<T>{
	
	protected T model;
	
	@SuppressWarnings("unchecked")
	public ModelDrivenBaseController(){
		try {
			// 得到model的类型信息
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class clazz = (Class) pt.getActualTypeArguments()[0];

			// 通过反射生成model的实例
			model = (T) clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	
	
	@Resource(name="salaryService")
	protected SalaryService salaryService;
	@Resource(name="jobtypeService")
	protected JobtypeService jobtypeService;
	
	@Resource(name="employmentInfoService")
	protected EmploymentInfoService employmentInfoService;
	
	@Resource(name="educationService")
	protected EducationService educationService;
	@Resource 
	protected RegionalService regionalService;
	
	public T getModel(){
		return model;
	}
	
	protected int pageNum = 1; // 当前页
	protected int pageSize = 10; // 每页显示多少条记录

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
}
