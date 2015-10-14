package com.youngball.stage.test;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.youngball.stage.bean.apartment_rentBean;
import com.youngball.stage.bean.house_typeBean;
import com.youngball.stage.utill.HqlHelper;

public class HqlHelperTest {

	/**
	 * 0 表示全部主题 <br>
	 * 1 表示只看精华帖
	 */
	private int viewType = 1;

	/**
	 * 0 代表默认排序(所有置顶帖在前面，并按最后更新时间降序排列)<br>
	 * 1 代表只按最后更新时间排序<br>
	 * 2 代表只按主题发表时间排序<br>
	 * 3 代表只按回复数量排序
	 */
	private int orderBy = 0;

	/**
	 * true 表示升序<br>
	 * false 表示降序
	 */
	private boolean asc = false;

	private apartment_rentBean arb = new apartment_rentBean();
	private house_typeBean htb = new house_typeBean();

	@Test
	public void testHqlHelper() {
		HqlHelper hqlHelper = new HqlHelper(apartment_rentBean.class, "a")//
				.addCondition("a.house_typeBean.id=?", htb)//
				//.addCondition(viewType == 1, "t.type=?",) // 1表示只看精华帖
				.addOrder(true, "a.plotName", true) // 1 代表只按最后更新时间排序
				//.addOrder(orderBy == 2, "t.postTime", asc) // 2 代表只按主题发表时间排序
				//.addOrder(orderBy == 3, "t.replyCount", asc) // 3 代表只按回复数量排序
				//.addOrder(orderBy == 0, "(CASE t.type WHEN 2 THEN 2 ELSE 0 END)", false)//
				//.addOrder(orderBy == 0, "t.lastUpdateTime", false) // 0 代表默认排序(所有置顶帖在前面，并按最后更新时间降序排列)
		;

		System.out.println(hqlHelper.getQueryListHql());
		System.out.println(hqlHelper.getQueryCountHql());
		System.out.println(hqlHelper.getParameters());

	}
}
