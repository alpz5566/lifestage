package com.youngball.stage.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.situationBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.SituationService;

@Service("situationService")
public class SituationServiceImpl extends BaseServiceImpl<situationBean> implements SituationService{

	/**
	 * 重写该方法,目的覆盖注解
	 */
	@Resource(name="situationDao")
	public void setDao(BaseDao<situationBean> dao){
		super.setDao(dao);
	}
}
