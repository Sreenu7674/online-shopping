package com.sreenu.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sreenu.shoppingbackend.dao.CategoryDAO;
import com.sreenu.shoppingbackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;

	private static CategoryDAO categoryDAO;

	private Category category;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.sreenu.shoppingbackend");
		context.refresh();

		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}

	/*
	 * @Test public void testAddCategory() { category = new Category();
	 * category.setName("Mobiles");
	 * category.setDescription("this is some description for Mobiles");
	 * category.setImageURL("CAT_2.png");
	 * 
	 * assertEquals("Successfully added a category inside the table", true,
	 * categoryDAO.add(category));
	 * 
	 * }
	 */
	/*
	 * @Test public void testGetCategory() { category=categoryDAO.get(3);
	 * 
	 * assertEquals("Successfully fatched a single category from the table"
	 * ,"Mobiles",category.getName()); }
	 */

	/*
	 * @Test public void testUpdateCategory() { category=categoryDAO.get(3);
	 * 
	 * category.setName("Sreenu laptop");
	 * assertEquals("Successfully updated a single category in the table",true,
	 * categoryDAO.update(category)); }
	 */

	/*
	 * @Test public void testUpDeleteCategory() { category = categoryDAO.get(3);
	 * 
	 * assertEquals("Successfully deleted a single category in the table", true,
	 * categoryDAO.delete(category)); }
	 */

	/*
	 * @Test public void testListCategory() {
	 * assertEquals("Successfully fetched the list of categories from the table",2,
	 * categoryDAO.list().size()); }
	 */

	@Test
	public void testCRUDCategory() {
		//adding operetion
		category = new Category();
		category.setName("Mobiles");
		category.setDescription("this is some description for Mobiles");
		category.setImageURL("CAT_1.png");

		category = new Category();
		category.setName("Television");
		category.setDescription("this is some description for Television");
		category.setImageURL("CAT_2.png");
		
		assertEquals("Successfully added a category inside the table", true, categoryDAO.add(category));
		
		//updating operetion
		 category=categoryDAO.get(2);
		 category.setName("Sreenu ");
		 
		 assertEquals("Successfully updated a single category in the table",true, categoryDAO.update(category)); 

		 //delete operetion
		 assertEquals("Successfully deleted a single category in the table", true,categoryDAO.delete(category)); 
		 
		 
		 //fetching operetion
		assertEquals("Successfully fetched the list of categories from the table",1, categoryDAO.list().size());
	}

}
