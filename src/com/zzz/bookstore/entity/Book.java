package com.zzz.bookstore.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private Integer isbn;
	private Typee typee;
	private String bname;
	private Float price;
	private String bookdescribe;
	private Float discount;
	private Set orderses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(String bname) {
		this.bname = bname;
	}

	/** full constructor */
	public Book(Typee typee, String bname, Float price, String bookdescribe,
			Float discount, Set orderses) {
		this.typee = typee;
		this.bname = bname;
		this.price = price;
		this.bookdescribe = bookdescribe;
		this.discount = discount;
		this.orderses = orderses;
	}

	// Property accessors

	public Integer getIsbn() {
		return this.isbn;
	}

	public void setIsbn(Integer isbn) {
		this.isbn = isbn;
	}

	public Typee getTypee() {
		return this.typee;
	}

	public void setTypee(Typee typee) {
		this.typee = typee;
	}

	public String getBname() {
		return this.bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getBookdescribe() {
		return this.bookdescribe;
	}

	public void setBookdescribe(String bookdescribe) {
		this.bookdescribe = bookdescribe;
	}

	public Float getDiscount() {
		return this.discount;
	}

	public void setDiscount(Float discount) {
		this.discount = discount;
	}

	public Set getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set orderses) {
		this.orderses = orderses;
	}

}