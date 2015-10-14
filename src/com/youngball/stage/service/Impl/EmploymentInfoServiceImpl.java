package com.youngball.stage.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.employment_infoBean;
import com.youngball.stage.bean.jobtypeBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.EmploymentInfoService;

@Service("employmentInfoService")
public class EmploymentInfoServiceImpl extends BaseServiceImpl<employment_infoBean> implements EmploymentInfoService{
	
	@Resource(name="employmentInfoDao")
	public void setDao(BaseDao<employment_infoBean> dao) {
		super.setDao(dao);
	}

	public List<employment_infoBean> findEmploymentByJobtypeId(String id) {
		String hql = "FROM employment_infoBean eif WHERE eif.jobtypeBean.id= ?";
		List<employment_infoBean> emb = this.findEntityByHQL(hql, id);
		System.out.println(emb);
		return emb;
	}

	

}
