package com.youngball.stage.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.salaryBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.SalaryService;

@Service("salaryService")
public class SalaryServiceImpl extends BaseServiceImpl<salaryBean> implements SalaryService{

	
	@Resource(name="salaryDao")
	public void setDao(BaseDao<salaryBean> dao){
		super.setDao(dao);
	}
}
