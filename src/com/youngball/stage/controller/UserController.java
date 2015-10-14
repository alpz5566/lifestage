package com.youngball.stage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youngball.stage.bean.User;
import com.youngball.stage.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController extends ModelDrivenBaseController<User>{

	@Resource(name="userService")
	private UserService userService;
	
	@RequestMapping(value="saveUserUI")
	public String saveUserUI(){
		return "saveUserForm";
	}
	
	@RequestMapping(value="/save")
	public String saveUser(User u){
		userService.saveEntity(u);
		return "redirect:/user/findAllUser";
	}
	
	@RequestMapping(value="/findAllUser")
	public String findAllUser(HttpServletRequest req){
		List<User> users = userService.findAllEntity();
		req.setAttribute("users", users);
		return "userList";
	}
	
	@RequestMapping(value="deleteUser")
	public String deleteUser(User u){
		userService.deleteEntity(u);
		return "redirect:/user/findAllUser";
	}
	
	@RequestMapping(value="deleteUsers")
	public String deleteUsers(String ids){
		ids = ids.substring(0,ids.length()-1);
		
		String[] idss = ids.split(",");
		for(int i = 0;i<idss.length;i++){
			model.setId(idss[i]);
			userService.deleteEntity(model);
		}
		return "redirect:/user/findAllUser";
	}
	
	@RequestMapping(value="/updatePersonUI")
	public String updateUserUI(String id,HttpServletRequest req){
		System.out.println("============" + model.getId());
		model = userService.getEntity(id);
		req.setAttribute("u", model);
		return "updateUserForm";	
	}
	
	@RequestMapping(value="/updateUser")
	public String updateUser(User u){
		userService.updateEntity(u);
		return "redirect:/person/findAllPerson";
	}
	
	
	
	
	
}
