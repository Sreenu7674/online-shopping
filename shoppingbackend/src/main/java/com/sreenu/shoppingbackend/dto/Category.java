package com.sreenu.shoppingbackend.dto;

/**
 * @author Sreenu
 *
 */
public class Category {
	
	/*
	 * Private fileds
	 */
	
	private int id;
	private String name;
	private String description;
	private String imageURL;
	private boolean acive;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImageURL() {
		return imageURL;
	}
	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}
	public boolean isAcive() {
		return acive;
	}
	public void setAcive(boolean acive) {
		this.acive = acive;
	}
	
	
}
