package com.sreenu.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.sreenu.shoppingbackend.dao.CategoryDAO;
import com.sreenu.shoppingbackend.dto.Category;


@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories=new ArrayList<>();
	
	static {
		Category category=new Category();
		//adding first category
		category.setId(1);
		category.setName("Television");
		category.setDescription("this is some description for television");
		category.setImageURL("CAT_1.png");
		//adding to list
		categories.add(category);
		
		category=new Category();
		//adding second category
		category.setId(2);
		category.setName("Mobiles");
		category.setDescription("this is some description for Mobiles");
		category.setImageURL("CAT_2.png");
		//adding to list
		categories.add(category);
		
		category=new Category();
		//adding third category
		category.setId(3);
		category.setName("Laptops");
		category.setDescription("this is some description for Laptops");
		category.setImageURL("CAT_3.png");
		//adding to list
		categories.add(category);
		
		
		
		
		
	}
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

}
