<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="com.scada.utils.MailUtils"%>
<%@page import="javax.mail.Message"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'showMail.jsp' starting page</title>
    <style type="text/css">
    	#mailContent{
    		padding:10px 8px;
    	}
    	#mailHead span{
    		font: bold 14px "lucida Grande",Verdana,"Microsoft YaHei";
    	}
    	#mailHead p{
    		font: normal 12px "lucida Grande",Verdana,"Microsoft YaHei";
  			color: #7f7f7f;
    	}
    </style>
  </head>
  
  <body>
  	<%
    Message message = (Message)request.getAttribute("message");
    MimeMessage msg = (MimeMessage) message;
    %>
  	<div id="mailHead">
  		<span><%=MailUtils.getSubject(msg) %></span>
  		<p>发件人：<%=MailUtils.getFrom(msg) %></p>
  		<p>时间：<%=MailUtils.getSentDate(msg, "yyyy年MM月dd日 E HH:mm") %></p>
  		<p>收件人：<%=MailUtils.getReceiveAddress(msg, null) %></p>
  	</div>
  	<hr>
  	<div id="mailContent">
  		<%
	    StringBuffer content = new StringBuffer(30); 
	    MailUtils.getMailTextContent(msg, content); 
	    out.print(content);
	    %>
  	</div>
    
    
  </body>
</html>
