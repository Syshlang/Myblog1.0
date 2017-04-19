<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<link type="text/css" rel="stylesheet" href="css/registerinfo.css" />
<div class="post">
	<div class="comments">
		<div class="comment">
			<h5>注册信息</h5>
		</div>
		<form class="h" action="register.action" method="post">
		<div class="tab">
        <table id="logintab">
        <th>注册信息</th>
             <tr><td><p>
                <label>帐号:</label> 
				<input type="text" name="username" />
				<span>
                 <s:fielderror><s:param>errmess</s:param></s:fielderror>
                </span>  
              </p></td></tr>
              
               <tr><td><p>
                <label>密码:</label> <input type="password" name="password" /> 
                <span id="errmsg"> <s:fielderror>
						<s:param>password</s:param>
					</s:fielderror>
				</span>   
              </p></td></tr>
              
               <tr><td><p>
                 <label>确认密码:</label> <input type="password" name="repassword" /><span
					id="errmsg"> <s:fielderror>
						<s:param>repassword</s:param>
					</s:fielderror>
				</span>
              </p></td></tr>
              
              <tr><td><p>
                <label>昵称:</label> <input type="text" name="nickname" /><span
					id="errmsg"> <s:fielderror>
						<s:param>nickname</s:param>
					</s:fielderror>
				</span> 
              </p></td></tr>
              
              <tr><td><p>
                <label>密码保护问题:</label> <input type="text" name="question" /><span
					id="errmsg"><s:fielderror>
						<s:param>question</s:param>
					</s:fielderror></span> 
              </p></td></tr>
              
              <tr><td><p>
                <label>密码保护的答案:</label> <input type="text" name="answer" /><span
					id="errmsg"> <s:fielderror>
						<s:param>answer</s:param>
					</s:fielderror>
				</span> 
              </p></td></tr>
              
              <tr><td><p>
              <div class="button_wrapper" >
                <input name="提交" type="submit" class="button" value="注册" />
              </div>  
              </p></td></tr>
		</table>
		</div>
		</form>
	</div>
</div>
