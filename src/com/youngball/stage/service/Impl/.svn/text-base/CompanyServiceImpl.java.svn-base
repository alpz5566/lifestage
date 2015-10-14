package com.youngball.stage.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.company_registeredBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.CompanyService;

@Service("companyService")
public class CompanyServiceImpl extends BaseServiceImpl<company_registeredBean> implements CompanyService{

	/**
	 * 重写该方法,目的覆盖注解
	 */
	@Resource(name="companyDao")
	public void setDao(BaseDao<company_registeredBean> dao){
		super.setDao(dao);
	}
}
