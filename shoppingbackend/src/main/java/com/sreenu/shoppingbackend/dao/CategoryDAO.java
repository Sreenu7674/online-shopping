package com.sreenu.shoppingbackend.dao;

import java.util.List;

import com.sreenu.shoppingbackend.dto.Category;

/**
 * @author Sreenu
 *
 */
public interface CategoryDAO {
	
	
	
	Category get(int id);
	
	List<Category> list();
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
	
	
	
	

}
