<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title></title>
    <link href="Styles/bootstrap-new.min.css" rel="stylesheet">
    <link href="Styles/login.css" rel="stylesheet">
    <style type="text/css">
    .errorMessage{
    	list-style: none;
    	color: red;
    	font-size: 20px;
    }
    </style>
  </head>

  <body>
    <div class="container">
      <form class="form-signin" action="loginAction" method="post">
        <h2 class="form-signin-heading">电力云安全监控平台</h2><br>
        <label for="inputEmail" class="sr-only">用户名</label>
        <input name="username" type="text" id="inputEmail" class="form-control" placeholder="用户名" required autofocus><br>
        <label for="inputPassword" class="sr-only">密码</label>
        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="密码" required>
        <s:fielderror name="error" />
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住密码
          </label>
        </div>
        <input type="submit" value="登录"  class="btn btn-lg btn-primary btn-block" />
      </form>
    </div>
  </body>
</html>
