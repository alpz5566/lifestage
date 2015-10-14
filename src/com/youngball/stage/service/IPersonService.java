package com.youngball.stage.service;

import java.util.List;

import com.youngball.stage.bean.Person;

public interface IPersonService {

public void savePerson(Person p);
	
	public void deletePerson(Person p);
	
	public void updatePerson(Person p);
	
	public Person findPersonById(String id);
	
	public List<Person> findAllPerson();
}
