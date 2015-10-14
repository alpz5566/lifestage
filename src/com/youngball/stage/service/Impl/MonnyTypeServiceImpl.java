package com.youngball.stage.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.apartment_rentBean;
import com.youngball.stage.bean.house_typeBean;
import com.youngball.stage.bean.monny_typeBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.HouseTypeService;
import com.youngball.stage.service.MonnyTypeService;

@Service("monnyTypeService")
public class MonnyTypeServiceImpl extends BaseServiceImpl<monny_typeBean> implements MonnyTypeService{

	/**
	 * 重写该方法,目的覆盖注解
	 */
	@Resource(name="monnyTypeDao")
	public void setDao(BaseDao<monny_typeBean> dao){
		super.setDao(dao);
	}
}
