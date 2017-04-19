<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<link type="text/css" rel="stylesheet" href="css/header.css" />
<script type="text/javascript">
/**闪烁字体*/
function changeColor(){
	var color="#f00|#0f0|#00f|#880|#808|#088|yellow|green|blue|gray|aqua|black|blue|fuchsia|lime|orange";
	color=color.split("|");
	document.getElementById("blink").style.color=color[parseInt(Math.random() * color.length)];
	document.getElementById("blink1").style.color=color[parseInt(Math.random() * color.length)];
	}
	setInterval("changeColor()",100);	
</script>
<%
String currentuser = (String)session.getAttribute("username");
%> 
<div id="scene">
 <marquee scrollAmount="3"
          width="n" height="n" 
          direction="type" 
          scrollDelay="n" 
          behavior="type" 
          loop="n"
          onmousemove="this.stop()" 
          onmouseout="this.start()" >
 <img  src="images/scene/1.jpg" border="0" alt=""/>
 <img src="images/scene/2.jpg" border="0" alt=""/>
 <img src="images/scene/3.jpg" border="0" alt=""/>
 <img src="images/scene/4.jpg" border="0" alt=""/>
 <img src="images/scene/5.jpg" border="0" alt=""/>
 <img src="images/scene/6.jpg" border="0" alt=""/>
 </marquee>
 <marquee scrollAmount="3"
          width="n" height="n" 
          direction="type" 
          scrollDelay="n" 
          behavior="type" 
          loop="n" 
          onmouseover="this.stop()" 
          onmouseout="this.start()">
<font color="red" style="font-size: 12px">欢迎来到源创博客   当前用户：
<span id="blink1">${session.username}</span></font>
</marquee>
<span id="blink">源创博客网站系统</span>     
      <div id="scale_area">
        <div id="scale_knob" title="点击拖动可调整页面大小">&raquo; 页面 &laquo;</div>
      </div>
      <div id="menu">
        <div class="holder"> <a href="showAllArticle.action">首页</a> </div>
       </div>
 </div>