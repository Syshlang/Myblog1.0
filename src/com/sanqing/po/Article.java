package com.sanqing.po;

import java.util.Date;

public class Article {
	private int id;
	private String title;
	private String content;
	private String username;
	private Date jlsj;
	private int hasread;
	
	public int getHasread() {
		return hasread;
	}
	public void setHasread(int hasread) {
		this.hasread = hasread;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	/**
	 * @return the jlsj
	 */
	public Date getJlsj() {
		return jlsj;
	}
	/**
	 * @param jlsj the jlsj to set
	 */
	public void setJlsj(Date jlsj) {
		this.jlsj = jlsj;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
}
