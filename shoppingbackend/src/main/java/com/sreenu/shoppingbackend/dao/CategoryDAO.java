package com.sreenu.shoppingbackend.dao;

import java.util.List;

import com.sreenu.shoppingbackend.dto.Category;

/**
 * @author Sreenu
 *
 */
public interface CategoryDAO {
	
	List<Category> list();

	Category get(int id);
	
	
	

}
