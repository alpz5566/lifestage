package com.youngball.stage.dao;

import java.util.List;

import com.youngball.stage.utill.HqlHelper;
import com.youngball.stage.utill.PageBean;


/**
 * BaseDao接口
 * @author idea
 *
 * @param <T>
 */
public interface BaseDao<T> {
	//增删改查
	public void saveEntity(T t);
	public void updateEntity(T t);
	public void saveOrUpdateEntity(T t);
	public void deleteEntity(T t);
	//按照hql语句批处理实体
	public void batchEntityByHQL(String hql,Object...objects);
	
	//读操作
	public T getEntity(String id);
	public T loadEntity(String id);
	public List<T> findEntityByHQL(String hql,Object...objects);
	public List<T> findAllEntity();
	public Long findCount();
	/**
	 * 公共的查询分页信息的方法
	 * 
	 * @param pageNum
	 * @param hqlHelper
	 *            查询条件（HQL语句与参数列表）
	 * @return
	 */
	public PageBean getPageBean(int pageNum, HqlHelper hqlHelper);
}
