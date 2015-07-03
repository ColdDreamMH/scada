<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'spamIdentify.jsp' starting page</title>
  </head>
  
  <body>
  	<div>
  		<span>添加新的敏感词：</span><br>
  		<form action="spamIdentifyAction_save.action" method="post">
  			<input type="text" name="sensitiveWord" />
  			<input type="submit" value="提交">
  		</form>
  	</div>
  	<hr>
  	<div>
  		<span>已有的敏感词：</span>
  		<s:iterator value="#request.spamIdentify">
  			<span>${field}</span>
  		</s:iterator>
  	</div>
  </body>
</html>
