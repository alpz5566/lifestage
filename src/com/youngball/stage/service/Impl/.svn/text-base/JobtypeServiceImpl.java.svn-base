package com.youngball.stage.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import com.youngball.stage.bean.jobtypeBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.JobtypeService;

@Service("jobtypeService")
public class JobtypeServiceImpl extends BaseServiceImpl<jobtypeBean> implements JobtypeService{

	
	@Resource(name="sf")
	private SessionFactory sf;
	
	@Resource(name="jobtypeDao")
	public void setDao(BaseDao<jobtypeBean> dao) {
		super.setDao(dao);
	}
	
	public List<jobtypeBean> findAllSecondJobtype() {
		String hql = "FROM jobtypeBean jtb WHERE jtb.pid != " + "0" + "";
		List<jobtypeBean> list = sf.getCurrentSession().createQuery(hql).list();
		return list;
	}

}
