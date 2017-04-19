<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>源创博客系统</title>
  </head>
<frameset rows="50%,*"  frameborder="no" border="0" framespacing="0">
    <!--头部-->
    <frame src="include/header.jsp" name="top" noresize="noresize" 
           frameborder="0"  scrolling="no" marginwidth="0" marginheight="0" />
    <!--主体部分-->
    <frameset cols="75%,*">
        <!--主体左部分-->
        <frame src="include/content.jsp" name="left" noresize="noresize" 
           frameborder="0" scrolling="no" marginwidth="0" marginheight="0" />
        <!--主体右部分-->
        <frame src="include/searchbox.jsp" name="searchbox" noresize="noresize" 
           frameborder="0" scrolling="no" marginwidth="0" marginheight="0" />
        <frame src="include/sidebar.jsp" name="sidebar" noresize="noresize" 
           frameborder="0" scrolling="no" marginwidth="0" marginheight="0" />
     </frameset>
 
<noframes>
<body>您的浏览器无法处理框架!</body>
</noframes>
</frameset>
 <jsp:include page="include/footer.jsp" />
</html>
