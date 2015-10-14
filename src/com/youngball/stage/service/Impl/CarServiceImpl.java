package com.youngball.stage.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.CarBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.CarService;

@Service("carService")
public class CarServiceImpl extends BaseServiceImpl<CarBean> implements CarService{
	/**
	 * 重写该方法,目的覆盖注解
	 */
	@Resource(name="carDao")
	public void setDao(BaseDao<CarBean> dao){
		super.setDao(dao);
	}
}
