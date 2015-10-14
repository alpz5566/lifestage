package com.youngball.stage.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.apartment_rentBean;
import com.youngball.stage.bean.house_typeBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.HouseTypeService;

@Service("houseTypeService")
public class HouseTypeServiceImpl extends BaseServiceImpl<house_typeBean> implements HouseTypeService{

	/**
	 * 重写该方法,目的覆盖注解
	 */
	@Resource(name="houseTypeDao")
	public void setDao(BaseDao<house_typeBean> dao){
		super.setDao(dao);
	}
}
