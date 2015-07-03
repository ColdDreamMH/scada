<%@page import="com.scada.utils.MailUtils,javax.mail.Message,javax.mail.internet.MimeMessage"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'mailHome.jsp' starting page</title>
    <style type="text/css">
    	table{width:90%;padding:10px;border-collapse:collapse;}
    	th{text-align:left;padding:5px;}
    	tr{text-align:left;border-bottom:1px solid silver;}
    	tr:hover{background-color:#ccc;}
    	td{padding:10px 5px;}
    	.noactived:hover{background-color:#fff;}
    </style>
    <script type="text/javascript">
    	function showMailMessage(i){
    		self.location("mailMessgaeShow.action?id="+i);
    	}
    </script>
  </head>
  
  <body>
  	邮件总数：<%=request.getAttribute("allMailCount") %>
  	<%
  	out.print("<hr>");
  	Message[] messages = (Message[])request.getAttribute("mailMessages");
  	/*for(int i=0,count=messages.length;i<count;i++){
	  	MimeMessage msg = (MimeMessage) messages[i]; 
	  	out.print("<br>");
	  	out.print("发件人："+MailUtils.getFrom(msg));
	  	out.print("<br>");
	  	out.print("邮件主题："+MailUtils.getSubject(msg));
	  	out.print("<br>");
	  	out.print("发件人地址："+MailUtils.getReceiveAddress(msg, null));
	  	out.print("<br>");
	  	out.print("发送日期："+MailUtils.getSentDate(msg, "yyyy年MM月dd日 E HH:mm"));
	  	out.print("<br>");
	  	StringBuffer content = new StringBuffer(30);
	  	MailUtils.getMailTextContent(msg, content);
	  	out.print("邮件正文：" + (content.length() > 100 ? content.substring(0,100) + "..." : content));
	  	out.print("<br>");
	  	out.print("<hr>");
  	}*/
  	%>
  	<table>
  		<tr class="noactived">
  			<th style="width:25%;">发件人</th>
  			<th style="width:40%;">主题</th>
  			<th style="width:25%;">时间</th>
  		</tr>
  		<%
  		for(int i=0,count=messages.length;i<count;i++){
  			MimeMessage msg = (MimeMessage) messages[i];
  		%>
  		<tr>
  			<td onclick="showMailMessage(<%=i%>)">
  				<%
  				out.print(MailUtils.getFrom(msg));
  				%>
  			</td>
  			<td>
  				<%
  				out.print(MailUtils.getSubject(msg));
  				%>
  			</td>
  			<td>
  				<%
  				out.print(MailUtils.getSentDate(msg, "yyyy年MM月dd日 E HH:mm"));
  				%>
  			</td>
  		</tr>
  		<%
  		}
  		%>
  	</table>
  </body>
</html>
