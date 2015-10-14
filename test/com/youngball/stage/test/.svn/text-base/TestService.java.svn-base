package com.youngball.stage.test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.youngball.stage.bean.apartment_rentBean;
import com.youngball.stage.service.ApartmentRentService;
import com.youngball.stage.service.IPersonService;

public class TestService {
	private static ApplicationContext ac = null;
	
	@BeforeClass
	public static void iniAC(){
		ac = new ClassPathXmlApplicationContext("beans.xml");
	}
	
	@Test
	public void findApaertment()throws Exception{
		System.out.println("==========");
		ApartmentRentService as = (ApartmentRentService)ac.getBean("apartmentRentService");
		/*User u  = new User();
		u.setEmail("321@qq.com");
		u.setPassword("544");
		u.setNickname("liao");
		us.saveEntity(u);
		*/
		String hql = "from apartment_rentBean ab where ab.room = ?";
		apartment_rentBean ab = (apartment_rentBean) as.findEntityByHQL(hql, 2);
		System.out.println(ab.getConfiguration());
//		System.out.println(as);
	}
	
	
	
}
