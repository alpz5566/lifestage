package com.youngball.stage.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.BaseService;
import com.youngball.stage.utill.HqlHelper;
import com.youngball.stage.utill.PageBean;

/**
 * 抽象service实现类，专门用于继承
 * @author idea
 *
 * @param <T>
 */
public abstract class BaseServiceImpl<T> implements BaseService<T>{
	
	private BaseDao<T> dao;
	
	@Resource
	public void setDao(BaseDao<T> dao){
		this.dao = dao;
	}
	
	public void saveEntity(T t) {
		dao.saveEntity(t);
	}

	public void updateEntity(T t) {
		dao.updateEntity(t);
	}

	public void saveOrUpdateEntity(T t) {
		dao.saveOrUpdateEntity(t);
	}

	public void deleteEntity(T t) {
		dao.deleteEntity(t);
	}

	public void batchEntityByHQL(String hql, Object... objects) {
		dao.batchEntityByHQL(hql, objects);
	}

	public T getEntity(String id) {
		return dao.getEntity(id);
	}

	public T loadEntity(String id) {
		return dao.loadEntity(id);
	}

	public List<T> findEntityByHQL(String hql, Object... objects) {
		return dao.findEntityByHQL(hql, objects);
	}

	public List<T> findAllEntity() {
		return dao.findAllEntity();
	}
	
	public Long findCount(){
		return dao.findCount();
	}
	
	/**
	 * 公共的查询分页信息的方法
	 * 
	 * @param pageNum
	 * @param hqlHelper
	 *            查询条件（HQL语句与参数列表）
	 * @return
	 */
	public PageBean getPageBean(int pageNum, HqlHelper hqlHelper){
		return dao.getPageBean(pageNum, hqlHelper);
	}
	
	

}
