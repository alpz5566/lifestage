package com.youngball.stage.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.educationBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.EducationService;

@Service("educationService")
public class EducationServiceImpl extends BaseServiceImpl<educationBean> implements EducationService{

	
	@Resource(name="educationDao")
	public void setDao(BaseDao<educationBean> dao){
		super.setDao(dao);
	}
}
