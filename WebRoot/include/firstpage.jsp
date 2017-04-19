<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<link type="text/css" rel="stylesheet" href="css/firstpage.css" />
 <div class="post">
          <div class="meta"><a class="title" href="">博客系统首页</a>
            <div class="clear"></div>
          </div>
        <!-- 循环输出 -->
		<s:iterator value="#request.all" id="art" status="sta">
          <div class="comments">
            <div class="comment">
              <div class="meta"> <span><a href="user/showArticle.action?username=<s:property value='#art.username'/>&id=<s:property value='#art.id'/>"><s:property value="#art.title"/></a> <small>:<s:property value="#art.content" escape="false"/></small></span>
                <div class="clear"> </div>
              </div>
            </div>
            <div class="comment alt">
              <div class="meta"><span class="datetime">
              	<!-- 发表时间 -->
														发表于:
														<s:date name="#art.jlsj"/>
														<!-- 评论与点击数 -->
														|评论(<s:property value="#request.critiqueCounts[#sta.index]"/>)|点击(<s:property value="#art.hasread"/>)|作者:<s:property value="#art.username"/>
              </span>
                <div class="clear"> </div>
              </div>
            </div>
          </div>
		 </s:iterator>
		  <div class="comment" align="center">
		  	当前第${page.currentPage}页，共${page.totalPage}页，每页显示${page.everyPage}条记录
			<s:if test="#request.page.hasPrePage">
				<a href="showAllArticle.action?currentPage=1">首页</a>
				<a href="showAllArticle.action?currentPage=${page.currentPage -1 }">上一页</a>
			</s:if>
			<s:else>
				首页
				上一页
			</s:else>
			
			<s:if test="#request.page.hasNextPage">
				<a href="showAllArticle.action?currentPage=${page.currentPage + 1 }">下一页</a>
				<a href="showAllArticle.action?currentPage=${page.totalPage }">尾页</a>			
			</s:if>
			<s:else>
				下一页
				尾页
			</s:else>
		  </div>
        </div>
