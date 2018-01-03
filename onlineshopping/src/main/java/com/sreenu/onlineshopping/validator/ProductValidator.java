package com.sreenu.onlineshopping.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.sreenu.shoppingbackend.dto.Product;

public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Product.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		Product product = (Product)target;
		if (product.getFile()==null || product.getFile().getOriginalFilename().equals("")) {
			errors.rejectValue("file",null,"please select an image file to upload!");
			return;
		}
		
		if(!(product.getFile().getContentType().equals("image/jpg")||
				product.getFile().getContentType().equals("image/png")||
				product.getFile().getContentType().equals("image/gif")	)) {
		errors.reject("file",null,"please use only image file for upload!");
		return;
		}
		
		

	}

}
