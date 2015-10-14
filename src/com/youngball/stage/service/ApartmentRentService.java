package com.youngball.stage.service;

import java.util.List;

import com.youngball.stage.bean.apartment_rentBean;
import com.youngball.stage.utill.PageBean;

public interface ApartmentRentService extends BaseService<apartment_rentBean>{

	/**
	 * 根据卧室数查找全部房子
	 * @param room
	 * @return
	 */
	public List<apartment_rentBean> findApartmentByRoom(Integer room);

	/**
	 * 更具房屋类型查找房子
	 * @param housetype
	 * @return
	 */
	public List<apartment_rentBean> findApartmentByHouseType(String housetype);

	/**
	 * 更新数据库img_url路径
	 * @param id
	 * @param string
	 */
	public void updateImgPath(String id, String url);

	/**
	 * 得到全部实体分页显示
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public PageBean getAllByPage(int pageNum, int pageSize);



}
