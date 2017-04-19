package com.sanqing.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.po.Userlist;
import com.sanqing.service.UserlistService;

public class Register extends ActionSupport{
	private String username;
	private String password;
	private String repassword;
	private String nickname;
	private String question;
	private String answer;
	private UserlistService userService;
	
	public UserlistService getUserService() {
		return userService;
	}
	public void setUserService(UserlistService userService) {
		this.userService = userService;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	private static Userlist user = new Userlist();
	private static HttpServletRequest request =null;
	private static String regresult =null;
	private static String regstatus = null;
	/**
	 * 获取注册信息
	 */
	public void init(){
		//封装一个user对象		
		user.setUsername(username);
		user.setPassword(password);
		user.setNickname(nickname);
		user.setQuestion(question);
		user.setAnswer(answer);
		//获得request
		 request = ServletActionContext.getRequest();
		 //验证注册信息返回结果
		 regresult = userService.registerUser(user);
		}
	
	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#validate()
	 */
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		init();
		if (regresult.equals("EXIST_USER")){
			addFieldError("errmess", "用户已存在！");
			regstatus=userService.existusername;			
		}else{//注册成功
			//将username保存到session范围中
			request.setAttribute("url", "showAllArticle.action");
			regstatus=userService.addsuccess;
		}
		
		
	}

	
	public String execute() throws Exception {				 
		if(regstatus.equals("ADD_SUCCESS")) {
			request.setAttribute("url", "login.jsp");
			request.setAttribute("info", "注册成功");
			return SUCCESS;
		}else {			
			return null;
		}
	}
	
}
