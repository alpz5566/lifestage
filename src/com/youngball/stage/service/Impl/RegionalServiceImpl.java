package com.youngball.stage.service.Impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.regionalBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.RegionalService;


@Service("reginonalService")
public class RegionalServiceImpl extends BaseServiceImpl<regionalBean> implements RegionalService {

	@Resource(name="regionalDao")
	public void setDao(BaseDao<regionalBean> dao){
		super.setDao(dao);
	}

}
