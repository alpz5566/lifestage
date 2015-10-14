package com.youngball.stage.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.youngball.stage.bean.Person;
import com.youngball.stage.dao.IPersonDao;
import com.youngball.stage.service.IPersonService;

@Service(value="personService")
public class PersonServiceImpl implements IPersonService {

	@Resource(name="personDao")
	private IPersonDao personDao;
	
	public void savePerson(Person p) {
		personDao.savePerson(p);
	}
	public void deletePerson(Person p) {
		personDao.deletePerson(p);
	}
	public List<Person> findAllPerson() {
		return personDao.findAllPerson();
	}
	public Person findPersonById(String id) {
		return personDao.findPersonById(id);
	}
	public void updatePerson(Person p) {
		personDao.updatePerson(p);
	}

}
