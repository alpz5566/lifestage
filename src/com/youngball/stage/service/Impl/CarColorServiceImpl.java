package com.youngball.stage.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.CarColorBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.CarColorService;

@Service("carColorService")
public class CarColorServiceImpl extends BaseServiceImpl<CarColorBean> implements CarColorService{
	/**
	 * 重写该方法,目的覆盖注解
	 */
	@Resource(name="carColorDao")
	public void setDao(BaseDao<CarColorBean> dao){
		super.setDao(dao);
	}

}
