package com.youngball.stage.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ServletContextAware;

import com.youngball.stage.bean.CarBean;
import com.youngball.stage.bean.CarColorBean;
import com.youngball.stage.service.CarColorService;
import com.youngball.stage.service.CarService;
import com.youngball.stage.utill.HqlHelper;
import com.youngball.stage.utill.PageBean;

@Controller
@RequestMapping(value="/car")
public class CarController extends ModelDrivenBaseController<CarBean> implements ServletContextAware{

	//接受ServletContext对象
	private ServletContext sc;
	
	//注入ServletContext对象
	public void setServletContext(ServletContext context) {
		this.sc = context;
	}

	@Resource(name="carService")
	private CarService carService;
	
	@Resource(name="carColorService")
	private CarColorService carColorService;
	
	/**
	 * 车辆首页面
	 * @param req
	 * @return
	 */
	@RequestMapping("index")
	public String findAllCar(HttpServletRequest req){
		try {
			int pageNum = 1;
			if(req.getParameter("pageNum") != null && !"".equals(req.getParameter("pageNum"))){
				pageNum = Integer.valueOf(req.getParameter("pageNum"));
			}
			String keyword = req.getParameter("keyword");
			HqlHelper hqlHelper = new HqlHelper(CarBean.class,"c")
				.addOrder("c.createtime", false)
				.addCondition(keyword != null && !"".equals(keyword), "c.name like ? ", "%"+keyword+"%");
			System.out.println("++++++++++++++++++++" + hqlHelper.getQueryListHql());
			PageBean pageBean = carService.getPageBean(pageNum, hqlHelper);
			req.setAttribute("pageBean", pageBean);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return "/car/index";
	}
	
	/**
	 * 车辆详情页面
	 * @return
	 */
	@RequestMapping(value="info")
	public String carinfo(HttpServletRequest req){
		String id = req.getParameter("id");
		CarBean car = carService.getEntity(id);
		req.setAttribute("car", car);
		return "/car/info";
	}
	
	/**
	 * 跳转到保存car页面
	 * @return
	 */
	@RequestMapping("saveUI")
	public String addcar(HttpServletRequest req){
		//准备数据
		List<CarColorBean> colorList = carColorService.findAllEntity();
		req.setAttribute("colorList", colorList);
		return "/car/add";
	} 
	
	/**
	 * 保存车辆信息
	 * @return
	 */
	@RequestMapping("save")
	public String savecar(CarBean car){
		car.setCreatetime(new Date());
		carService.saveEntity(car);
		return "redirect:/car/index";
	}
	
	
}
