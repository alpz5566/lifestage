package com.youngball.stage.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.apartment_rentBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.ApartmentRentService;
import com.youngball.stage.utill.PageBean;

@Service("apartmentRentService")
public class ApartmentRentServiceImpl extends BaseServiceImpl<apartment_rentBean> implements ApartmentRentService{
	
	/**
	 * 重写该方法,目的覆盖注解
	 */
	@Resource(name="apartmentRentDao")
	public void setDao(BaseDao<apartment_rentBean> dao){
		super.setDao(dao);
	}

	/**
	 * 根据卧室数查找全部房子
	 * @param room
	 * @return
	 */
	public List<apartment_rentBean> findApartmentByRoom(Integer room) {
		String hql = "FROM apartment_rentBean ab WHERE ab.room = ?";
		System.out.println(this.findEntityByHQL(hql, room));
		return this.findEntityByHQL(hql, room);
	}

	/**
	 * 更具房屋类型查找房子
	 * @param housetype
	 * @return
	 */
	public List<apartment_rentBean> findApartmentByHouseType(String housetype) {
		String hql = "FROM apartment_rentBean ab WHERE ab.house_typeBean.id = ?";
		//System.out.println(this.findEntityByHQL(hql, housetype));
		return this.findEntityByHQL(hql, housetype);
	}

	/**
	 * 更新数据库img_url路径
	 * @param id
	 * @param string
	 */
	public void updateImgPath(String id, String url) {
		String hql = "UPDATE apartment_rentBean ab set ab.imgUrl = ? where ab.id = ?";
		this.batchEntityByHQL(hql, url,id);
	}

	/**
	 * 得到全部实体分页显示
	 */
	public PageBean getAllByPage(int pageNum, int pageSize) {
		//查询本页面的数据列表
		String hql = "FROM apartment_rentBean ab ORDER BY ab.id ASC";
		List list = this.findEntityByHQL(hql, (pageNum - 1)*pageSize,pageSize);
		
		//查询总记录数量
		Long count = this.findCount();
		return new PageBean(pageNum, pageSize, count.intValue(), list);
	}

	

}
