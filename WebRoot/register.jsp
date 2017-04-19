<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<title>新博客系统注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/main.css" media="all" />
<!--[if IE 6]><link type="text/css" rel="stylesheet" href="css/ie6.css" media="all" /><![endif]-->
<script type="text/javascript" src="js/mootools.js"></script>
<script type="text/javascript" src="js/site.js"></script>
</head>
<body>
<div id="wrapper">
<div id="left">
   <jsp:include page="include/searchbox.jsp" />
    <jsp:include page="include/sidebar.jsp" />
 </div>
 <div id="container">
   <jsp:include page="include/header.jsp" /> 
  <div id="content">
     <div id="col_left">
       <jsp:include page="include/registerinfo.jsp" /> 
     </div>
     <div id="col_right">      
     </div>
     <div class="clear"> </div>
  </div>    
   <jsp:include page="include/footer.jsp" />   
  </div>
  
</div>
</body>
</html>
