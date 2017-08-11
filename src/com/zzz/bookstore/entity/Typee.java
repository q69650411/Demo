package com.zzz.bookstore.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Typee entity. @author MyEclipse Persistence Tools
 */

public class Typee implements java.io.Serializable {

	// Fields

	private Integer id;
	private String typename;
	private Set books = new HashSet(0);

	// Constructors

	/** default constructor */
	public Typee() {
	}

	/** full constructor */
	public Typee(String typename, Set books) {
		this.typename = typename;
		this.books = books;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTypename() {
		return this.typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public Set getBooks() {
		return this.books;
	}

	public void setBooks(Set books) {
		this.books = books;
	}

}