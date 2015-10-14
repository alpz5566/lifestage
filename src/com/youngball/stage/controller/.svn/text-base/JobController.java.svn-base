package com.youngball.stage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.opensymphony.xwork2.ActionContext;
import com.youngball.stage.bean.company_registeredBean;
import com.youngball.stage.bean.educationBean;
import com.youngball.stage.bean.employment_infoBean;
import com.youngball.stage.bean.jobtypeBean;
import com.youngball.stage.bean.regionalBean;
import com.youngball.stage.bean.salaryBean;
import com.youngball.stage.service.CompanyService;
import com.youngball.stage.service.EducationService;
import com.youngball.stage.service.EmploymentInfoService;
import com.youngball.stage.service.JobtypeService;

@Controller
@RequestMapping("/job")
public class JobController extends ModelDrivenBaseController<employment_infoBean>{
	
	/*private String id;*/
	/**
	 * 求职招聘首页
	 * 查找出所有的公司信息
	 * @return
	 */
	@RequestMapping("/index")
	public String Index(HttpServletRequest req,String id) throws Exception{
		//System.out.println(">>>>>>>>>" + id);
		if(id == null){
			System.out.println(">>>>>>>>>>>>>>");
			List<employment_infoBean> companys = employmentInfoService.findAllEntity();
			req.setAttribute("companys", companys);
		}else{
			List<employment_infoBean> companys = employmentInfoService.findEmploymentByJobtypeId(id);
			req.setAttribute("companys", companys);
			System.out.println("<<<<<<<<<<<<<<<<");
		}
		
		//准备学历数据
		List<educationBean> ListEducations = educationService.findAllEntity();
		//准备薪资数据
		List<salaryBean> LisSalarys = salaryService.findAllEntity();
		//准备职位类别数据
		List<jobtypeBean> jobtyps = jobtypeService.findAllSecondJobtype();
		//准备地域数据
		List<regionalBean> Listregionals = regionalService.findAllEntity();
		req.setAttribute("Listregionals", Listregionals);
		req.setAttribute("LisSalarys", LisSalarys);
		req.setAttribute("ListEducations", ListEducations);
		req.setAttribute("jobtyps", jobtyps);
		//req.setAttribute("listEmployment", listEmployment);
		
		return "job/job_index";
	} 

	@RequestMapping("/user")
	public String job_user(){
		
		return "job/job_user";
	}
	
	@RequestMapping("/artical")
	public String job_artical(HttpServletRequest req,String id){
	
		System.out.println("LLLLLLLLLLLLL" + id);
		employment_infoBean empb = employmentInfoService.getEntity(id);
		System.out.println(">>>>>>>>>>>>>" + empb.getNumb());
		req.setAttribute("empb", empb);
		return "job/job_artical";
	}
	@RequestMapping("/findJobByJobTypeId")
	public String findJobByJobTypeId(HttpServletRequest req ,String id){
		List<employment_infoBean> companys = employmentInfoService.findEmploymentByJobtypeId(id);
		req.setAttribute("companys", companys);
		return "job/job_index";
	}
	
	
	
	

	/*public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}*/

	
	
	
	
}
