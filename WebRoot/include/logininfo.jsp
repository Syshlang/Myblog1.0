<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<link type="text/css" rel="stylesheet" href="css/logininfo.css" />
<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
<script language="JavaScript" src="jquery.min.js"><%--
$(document).ready(function(){
    $("#signupForm").validate();
}
--%></script>
<div class="post">
     <div class="comments">
     <div class="comment">
 <h5>博客登录</h5></div>
            <form class="h" action="login.action" method="post" id="signupForm">
            <input type="hidden" name="pagetype" value="login"/>
            <div class="tab">
            <table id="logintab">           
             <th>登录信息</th>
             <tr><td><p>
                <label>用户名:</label>
                <input type="text" name="username" placeholder="请输入用户名" autofocus required/>                           
                 <span>
                 <s:fielderror><s:param>username</s:param></s:fielderror>
                 </span>     
              </p></td></tr>
              <tr><td><p>
                <label>密&nbsp;&nbsp;&nbsp;码:</label>
                <input type="password" name="password" placeholder="请输入6~16位用户密码" required/>  
                <span>
                 <s:fielderror><s:param>password</s:param></s:fielderror>
                 </span>
              </p></td></tr>
              <tr><td><p>
              <label>验证码：</label>
                <input type="text" name="code" placeholder="请输入输入图片中的验证码" required/>&nbsp;&nbsp;<img id="codimg" src="include/image.jsp"/>
              </p></td></tr>
             <tr>
             <td>
             <input type="hidden" name="errmess"/>
             <span>
             <s:fielderror><s:param>errmess</s:param></s:fielderror>
             </span>
             </td></tr>
              <tr><td><p>
              <div class="button_wrapper" >
                <input name="提交" type="submit" class="button" value="登录" />
              </div></p></td></tr> 
              <tr><td align="center">
              <span><font color="black">没有用户？请</font><a href="register.jsp">
              <font color="blue" size="3">&nbsp;注册</font></a></span>
              </td></tr>        
             </table>
              </div>             
            </form>
</div>
</div>
