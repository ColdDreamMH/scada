<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
  </head>

  <body>
    <div class="container">
      <form class="form-signin">
        <h2 class="form-signin-heading">电力云安全监控平台</h2><br>
        <label for="inputEmail" class="sr-only">用户名</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="用户名" required autofocus><br>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="密码" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住密码
          </label>
        </div>
        <a href="/WEB-INF/page/menu/home.jsp" class="btn btn-lg btn-primary btn-block">登录</a>
      </form>
    </div>
  </body>
</html>
