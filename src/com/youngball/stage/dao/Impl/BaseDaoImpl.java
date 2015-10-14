package com.youngball.stage.dao.Impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import com.youngball.stage.cfg.Configuration;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.utill.HqlHelper;
import com.youngball.stage.utill.PageBean;

/**
 * dao基本实现，不实现事务管理
 * @author idea
 *
 * @param <T>
 */
@SuppressWarnings("unchecked")
public abstract class BaseDaoImpl<T> implements BaseDao<T>{

	@Resource
	private SessionFactory sf;
	
	private Class<T> clazz;
	
	public BaseDaoImpl(){
		ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
		clazz = (Class<T>) type.getActualTypeArguments()[0];
	}
	
	public void batchEntityByHQL(String hql, Object...objects) {
		Query q = sf.getCurrentSession().createQuery(hql);
		for(int i = 0 ; i < objects.length ; i++){
			q.setParameter(i, objects[i]);
		}
		q.executeUpdate();
	}

	public void deleteEntity(T t) {
		sf.getCurrentSession().delete(t);
	}

	public List<T> findEntityByHQL(String hql, Object...objects) {
		Query q = sf.getCurrentSession().createQuery(hql);
		for(int i = 0 ; i< objects.length ; i++){
			q.setParameter(i, objects[i]);
		}
		return q.list();
	}

	public T getEntity(String id) {
		return (T) sf.getCurrentSession().get(clazz, id);
	}

	public T loadEntity(String id) {
		return (T) sf.getCurrentSession().load(clazz, id);
	}

	public void saveEntity(T t) {
		sf.getCurrentSession().save(t);
	}

	public void saveOrUpdateEntity(T t) {
		sf.getCurrentSession().saveOrUpdate(t);
	}

	public void updateEntity(T t) {
		sf.getCurrentSession().update(t);
	}

	public List<T> findAllEntity() {
		return sf.getCurrentSession().createQuery(//
				"FROM " + clazz.getSimpleName())//
				.list();
	}
	
	public Long findCount(){
		return (Long) sf.getCurrentSession().createQuery(//
				"SELECT COUNT(*) FROM "+ clazz.getSimpleName())//
				.uniqueResult();
	}
	
	public PageBean getPageBean(int pageNum, HqlHelper hqlHelper) {
		System.out.println("--------------> BaseDaoImpl.getPageBean( int pageNum, HqlHelper hqlHelper )");
		int pageSize = Configuration.getPageSize();
		List<Object> parameters = hqlHelper.getParameters();

		// 查询本页的数据列表
		Query listQuery = sf.getCurrentSession().createQuery(hqlHelper.getQueryListHql());
		if (parameters != null && parameters.size() > 0) { // 设置参数
			for (int i = 0; i < parameters.size(); i++) {
				listQuery.setParameter(i, parameters.get(i));
			}
		}
		listQuery.setFirstResult((pageNum - 1) * pageSize);
		listQuery.setMaxResults(pageSize);
		List list = listQuery.list(); // 执行查询

		// 查询总记录数
		Query countQuery = sf.getCurrentSession().createQuery(hqlHelper.getQueryCountHql());
		if (parameters != null && parameters.size() > 0) { // 设置参数
			for (int i = 0; i < parameters.size(); i++) {
				countQuery.setParameter(i, parameters.get(i));
			}
		}
		Long count = (Long) countQuery.uniqueResult(); // 执行查询

		return new PageBean(pageNum, pageSize, count.intValue(), list);
	}
	

}
