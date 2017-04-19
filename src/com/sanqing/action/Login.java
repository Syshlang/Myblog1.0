package com.sanqing.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.po.Userlist;
import com.sanqing.service.UserlistService;
/**
 * 
 * @author: sunys
 * @description:登录页面校验
 * @Data: 2016年8月6日 下午2:19:57
 */
public class Login extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 20160806;
	 HttpServletRequest  request=null;
	private static String logistatus=null;
	private String username;
	private String password;
	private String pagetype;
	private String code;
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

	/**
	 * @return the pagetype
	 */
	public String getPagetype() {
		return pagetype;
	}

	/**
	 * @param pagetype the pagetype to set
	 */
	public void setPagetype(String pagetype) {
		this.pagetype = pagetype;
	}

	
	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#validate()
	 */
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		if((!username.equals(""))&& (!password.equals(""))){	
		Userlist user = new Userlist();
		user.setUsername(username);
		user.setPassword(password);
		//验证码
		if(code.equals("")){
			addFieldError("errmess", "请输入验证码！");			
		}else{
			//获得request
			request = ServletActionContext.getRequest();
			String rand = (String) request.getSession().getAttribute("rand") ;
			if(this.code.equalsIgnoreCase(rand)){		
		String result=userService.loginUser(user);
		if(result.equals("NO_USERNAME")) {//用户不存在
			    addFieldError("errmess", "该用户不存在！");	
			}else if(result.equals("ERR_PASSWORD")){//用户密码错误
				addFieldError("errmess", "密码错误！");
				
			}else{//登录成功
				//将username保存到session范围中
				request.setAttribute("url", "showAllArticle.action");
				logistatus=userService.success;
			}
		}else{
			addFieldError("errmess", "验证码错误！");	
		}
		}
	}
	}


	public String execute() throws Exception {
		if(logistatus.equals("LOGIN_SUCCESS")){
			Map session = ActionContext.getContext().getSession();
			session.put("username", username);
			return SUCCESS;			
		}else{
			return null;
		}
	}

	

	
}
