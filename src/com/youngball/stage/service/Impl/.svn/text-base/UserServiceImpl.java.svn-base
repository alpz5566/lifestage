package com.youngball.stage.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.User;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.dao.Impl.UserDaoImpl;
import com.youngball.stage.service.UserService;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

	/**
	 * 重写该方法,目的覆盖注解
	 */
	@Resource(name="userDao")
	public void setDao(BaseDao<User> dao) {
		super.setDao(dao);
	}
	
}
