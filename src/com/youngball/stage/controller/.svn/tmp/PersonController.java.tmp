package com.youngball.stage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.youngball.stage.bean.Person;
import com.youngball.stage.service.IPersonService;


@Controller
@RequestMapping(value="/person")
public class PersonController extends ModelDrivenBaseController<Person>{
	@Resource(name="personService")
	private IPersonService personService;
	
	@RequestMapping(value="/savePersonUI")
	public String savePersonUI(){
		return "savePersonForm";
	}

	@RequestMapping(value="/save")
	public String savePerson(Person p){
		personService.savePerson(p);
		System.out.println("savePerson()...");
		return "redirect:/person/findAllPerson";
	}
	
	@RequestMapping(value="/findAllPerson")
	public String findAllPerson(HttpServletRequest req){
		List<Person> persons = personService.findAllPerson();
		System.out.println(">>>>>>>>>>>>" + persons.size());
		req.setAttribute("persons", persons);
		return "personList";
	}
	
	@RequestMapping(value="/deletePerson")
	public String deletePerson(Person p){
		personService.deletePerson(p);
		return "redirect:/person/findAllPerson";
	}
	
	@RequestMapping(value="/deletePersons")
	public String deletePersons(String ids){
		ids = ids.substring(0, ids.length() -1);
		
		String[] idss = ids.split(",");
		Person p = new Person();
		
		for(int i=0;i<idss.length;i++){
			p.setId(idss[i]);
			personService.deletePerson(p);
		}
		return "redirect:/person/findAllPerson";
	}
	
	@RequestMapping(value="/updatePersonUI")
	public String updatePersonUI(String id,HttpServletRequest req){
		model = personService.findPersonById(id);
		req.setAttribute("p", model);
		return "updatePersonForm";
	}
	
	@RequestMapping(value="/updatePerson")
	public String updatePerson(Person p){
		personService.updatePerson(p);
		
		return "redirect:/person/findAllPerson";
	}
}
