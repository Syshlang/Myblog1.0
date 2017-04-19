<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<link type="text/css" rel="stylesheet" href="css/footer.css" />
<script type="text/javascript">  
  //非动态显示  
  //document.getElementById('time1').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());  
 //动态显示 12小时制  
 //setInterval("document.getElementById('time1').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);  
//动态显示 24小时制
//setInterval("time1.innerHTML=new Date().getHours() + ':' + new Date(). getMinutes() + ':'+ new Date().getSeconds()   +' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
 //setInterval("document.getElementById('time1').innerHTML=(new Date()).toLocaleDateString()+ '  ' + new Date().getHours() + ':' + new Date(). getMinutes() +':'+ new Date().getSeconds()+'  星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);  
function getDateDemo(){
	//分别获取年、月、日、时、分、秒
	var myDate = new Date();
	var year = myDate.getFullYear();
	var month = myDate.getMonth() + 1;
	var date = myDate.getDate();
	var hours = myDate.getHours();
	var minutes = myDate.getMinutes();
	var seconds = myDate.getSeconds();
	
	//月份、时间显示为两位数字
	if(month < 10 ){
		month = "0" + month;
	}
	if(date < 10 ){
		date = "0" + date;
	}	
	if(minutes < 10 ){
		minutes = "0" + minutes;
	}
	if(seconds < 10 ){
		seconds = "0" + seconds;
	}
	//时间拼接
	var dateTime = year + "/" + month + "/" + date + " " + hours + ":" + minutes + ":" + seconds;
	//插入当前时间	
	var divNode = document.getElementById("time1");
	divNode.innerHTML = dateTime;
}
window.setInterval("getDateDemo()",1000);//每隔1秒，调用一次getDateDemo()
 </script> 
<div id="footer">
<%--<div class="clear"> </div> 
--%><hr />
<p class="credit" >源创博客网站系统
<label id="time1" ></label>
</p>       
<div id="copyright">
Copyright &nbsp; &copy; &nbsp;20160806 &nbsp;
<span>sunys</span>&nbsp; Co.Ltd All Rights Reserved<br> &nbsp;
版权所有 by <span><a id="by" href="http://158990605.qzone.qq.com">sunys</a></span>
</div>
</div>