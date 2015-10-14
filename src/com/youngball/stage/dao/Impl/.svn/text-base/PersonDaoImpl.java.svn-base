package com.youngball.stage.dao.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.youngball.stage.bean.Person;
import com.youngball.stage.dao.IPersonDao;



@Repository(value="personDao")
public class PersonDaoImpl implements IPersonDao {
	
	@Resource(name="sf")
	private SessionFactory sf;

	public void savePerson(Person p) {
		sf.getCurrentSession().save(p);
	}

	public void deletePerson(Person p) {
		sf.getCurrentSession().delete(p);
	}

	public List<Person> findAllPerson() {
		List<Person> list = sf.getCurrentSession().createQuery("from Person").list();
		return list;
	}

	public Person findPersonById(String id) {
		return (Person) sf.getCurrentSession().get(Person.class, id);
	}

	public void updatePerson(Person p) {
		sf.getCurrentSession().update(p);
	}

}
