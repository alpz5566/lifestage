package com.youngball.stage.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import com.youngball.stage.bean.Person;
import com.youngball.stage.bean.User;
import com.youngball.stage.bean.apartment_rentBean;
import com.youngball.stage.bean.house_typeBean;
import com.youngball.stage.bean.monny_typeBean;
import com.youngball.stage.bean.situationBean;
import com.youngball.stage.dao.BaseDao;
import com.youngball.stage.service.ApartmentRentService;
import com.youngball.stage.service.HouseTypeService;
import com.youngball.stage.service.IPersonService;
import com.youngball.stage.service.MonnyTypeService;
import com.youngball.stage.service.SituationService;
import com.youngball.stage.utill.HqlHelper;
import com.youngball.stage.utill.PageBean;
import com.youngball.stage.utill.ValidateUtill;

@Controller
@RequestMapping(value="/apartment")
public class ApartmentController extends ModelDrivenBaseController<apartment_rentBean> implements ServletContextAware{
	
	@Resource(name="apartmentRentService")
	private ApartmentRentService apartmentRentService;
	
	@Resource(name="houseTypeService")
	private HouseTypeService houseTypeService;
	
	@Resource(name="situationService")
	private SituationService situationService;
	
	@Resource(name="monnyTypeService")
	private MonnyTypeService monnyTypeService;
	
	private File imgUrl;
	private File logoPhoto;
	private String logoPhotoFileName;
	
	public String getLogoPhotoFileName() {
		return logoPhotoFileName;
	}

	public void setLogoPhotoFileName(String logoPhotoFileName) {
		this.logoPhotoFileName = logoPhotoFileName;
	}

	public File getLogoPhoto() {
		return logoPhoto;
	}

	public void setLogoPhoto(File logoPhoto) {
		this.logoPhoto = logoPhoto;
	}

	public File getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(File imgUrl) {
		this.imgUrl = imgUrl;
	}
	
	PageBean pageBean = new PageBean();

	//接受ServletContext对象
	private ServletContext sc;
	
	//注入ServletContext对象
	public void setServletContext(ServletContext context) {
		this.sc = context;
	}
	
	@RequestMapping("/index")
	public String index(){
		return "apartment/fcindex";
	}
	
	/**
	 * 房产首页信息展示
	 * @return
	 */
	@RequestMapping("fcym")
	public String findAllApartment(HttpServletRequest req){
		try {
			//System.out.println("=========测试=========");
			 
			//从前台url获取参数
			int pageNum = 1;
			if(req.getParameter("pageNum") != null && !"".equals(req.getParameter("pageNum"))){
				pageNum = Integer.valueOf(req.getParameter("pageNum"));
			}
			Integer room = null;
			String roomStr = req.getParameter("room");
			if(roomStr != null){
				room = Integer.valueOf(roomStr);
			}
			String housetype = req.getParameter("housetype");
			String monny = req.getParameter("monny");
			
			//房屋类型所有数据
			List<house_typeBean> houseList = houseTypeService.findAllEntity();
			List<apartment_rentBean> arb = null;
			List<monny_typeBean> monnyList = monnyTypeService.findAllEntity();
			
			/*if(roomStr != null){
				Integer room = Integer.parseInt(roomStr);
				arb = apartmentRentService.findApartmentByRoom(room);
				
			}else if(housetype != null){
				//Integer housetype = Integer.parseInt(housetypeStr);
				arb = apartmentRentService.findApartmentByHouseType(housetype);
			}else {
				arb = apartmentRentService.findAllEntity();
				//pageBean = apartmentRentService.getAllByPage(pageNum, pageSize);
			}
			
			//传到前台
			req.setAttribute("arb", arb);
			//req.setAttribute("pageBean", pageBean);*/
			
			//查询所有方法重构了hqlhelper
			HqlHelper hqlHelper = new HqlHelper(apartment_rentBean.class, "a")//
				.addCondition(roomStr != null, "a.room=?", room)
				.addCondition(housetype != null, "a.house_typeBean.id = ?", housetype)
				.addCondition("0".equals(monny), "a.monny between 0 and 300 ")
				.addCondition("1".equals(monny), "a.monny between 300 and 600 ")
				.addCondition("2".equals(monny), "a.monny between 600 and 1200 ")
				.addCondition("3".equals(monny), "a.monny between 1200 and 2000 ")
				.addCondition("4".equals(monny), "a.monny > 2000")
				.addOrder("a.createtime", false);	
			System.out.println("++++++++++++++++++++" + hqlHelper.getQueryListHql());
			PageBean pageBean = apartmentRentService.getPageBean(pageNum, hqlHelper);
			req.setAttribute("monnyList", monnyList);
			req.setAttribute("pageBean", pageBean);
			req.setAttribute("houseList", houseList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/apartment/fcym";
	}
	
	/**
	 * 测试一下findEntityByHql
	 * @param room
	 * @param req
	 * @return
	 */
	@RequestMapping("fcym2")
	public String findApartmentByRoom(Integer room,HttpServletRequest req){
		List<apartment_rentBean> arb = apartmentRentService.findApartmentByRoom(room);
		req.setAttribute("arb", arb);
		return "/apartment/fcym";
	}
	
	@RequestMapping("artical")
	public String artical(){
		return "/apartment/apartment_artical";
	}
	
	@RequestMapping("message")
	public String message(){
		return "/apartment/fcmessage";
	}
	
	/**
	 * 跳转到保存出租房屋页面
	 * @return
	 */
	@RequestMapping("saveUI")
	public String messagezu(HttpServletRequest req){
		//准备数据
		List<house_typeBean> houseList = houseTypeService.findAllEntity();
		List<situationBean> situationList = situationService.findAllEntity();
		List<monny_typeBean> monnyList = monnyTypeService.findAllEntity();
		req.setAttribute("monnyList", monnyList);
		req.setAttribute("situationList", situationList);
		req.setAttribute("houseList", houseList);
		return "/apartment/fcmessagezu";
	}
	
	/**
	 * 保存租房信息
	 * @param arb
	 * @return
	 */
	@RequestMapping("save")
	public String saveApartmentRent(@RequestParam(value = "file", required = false)MultipartFile txfile,apartment_rentBean arb){
		System.out.println(txfile.getOriginalFilename());
		arb.setCreatetime(new Date());
		String path = this.uploadImg(arb,txfile);
		arb.setImgUrl(path);
		apartmentRentService.saveEntity(arb);
		return "redirect:/apartment/fcym";
	}
	
	@RequestMapping(value="json1",method=RequestMethod.GET)
	public @ResponseBody
	apartment_rentBean getEntity(@PathVariable("id") int id){
		apartment_rentBean ab = (apartment_rentBean)apartmentRentService.findAllEntity();
		return ab;
	}
	
	/**
	 * 根据id得到apartment_rent的的详情页面
	 * @param req
	 * @return
	 */
	@RequestMapping(value="info")
	public String info(HttpServletRequest req){
		String id = req.getParameter("id");
		apartment_rentBean arb = apartmentRentService.getEntity(id);
		req.setAttribute("arb", arb);
		return "/apartment/apartment_rent_info";
	}

	/**
	 * 上传图片方法
	 * @return
	 */
	public String uploadImg(apartment_rentBean arb, MultipartFile txfile) {
		String path = "";
		if(ValidateUtill.isValid(txfile.getOriginalFilename())){
			//上传文件
				//可以使用这样的方法得到upload的真实路径,但是这种代码方式不优雅,解决:实现一个ServletContextAware的接口注入servletcontext对象
				//ServletActionContext.getServletContext().getRealPath("/upload");
			String dir = sc.getRealPath("/upload");
			//按时间命名图片
			long i = System.nanoTime();
			//设置图片后缀名
			String ext = txfile.getOriginalFilename().substring(txfile.getOriginalFilename().lastIndexOf("."));
			//命名文件
			File newFile = new File(dir,i+ext);
			//System.out.println("============" + newFile);	
			
			if(!newFile.exists() && !newFile.isDirectory()){
				newFile.mkdirs();
			}
			//保存
			try {
				txfile.transferTo(newFile);
			} catch (Exception e) {	
				e.printStackTrace();
			}
			path = "/upload/" + i + ext;
		}
		return path;
	}
	
	/**
	 * 判断图片是否存在
	 * @return
	 */
	public boolean ImgUrlIsExists(){
		String path = model.getImgUrl();
		if(ValidateUtill.isValid(path)){
			String realPath = sc.getRealPath(path);
			return new File(realPath).exists();
		}
		return false;
	}
	
	/**
	 * 得到图片路径
	 * @param logoPath
	 * @return
	 */
	public String getImageUrl(apartment_rentBean arb){
		if(ValidateUtill.isValid(arb.getImgUrl())){
			String realPath = sc.getRealPath(arb.getImgUrl());
			if(new File(realPath).exists()){
				return sc.getContextPath() + imgUrl;
			}
		}
		return sc.getContextPath() + "public/images/fcymgdpic.gif";
	}
}
