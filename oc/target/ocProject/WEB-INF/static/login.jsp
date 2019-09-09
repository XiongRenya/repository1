<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/4 0004
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<!-- 引入头部页面 -->
<%@include file="/WEB-INF/pages/commons/header.jsp"%>
<div class="f-main">
    <div class="types-block clearfix" style="text-align: center;">
        <h3 class="types-title">登录</h3><span style="color: red">${requestScope.erro}</span>
        <form class="oc-form" id="infoForm" style="text-align: center;border: 1px solid #CCC;width: 600px;margin:0 auto;padding:20px;" method="post" action="/user/login">
             <li><label>用户名</label>
                <input name="username"  value="" type="text"  class="input-text"  placeholder="请输入用户名" >
            </li>
            <li><label>密码</label>
                <input id="password" name="password" type="password" class="input-text" placeholder="请输入密码" autocomplete="off" />
            </li>

            <li>
                <label style="background-color:#FFF;"></label>
                <input type="checkbox" value="1" id="checkbox1" name="rememberMe" style="float: left;">
                <span class="text"  style="float: left;margin-left:2px;">下次自动登录</span>
            </li>



            <li class="clearfix" style="margin-top: 20px;">
                <input type="submit" value="登录" class="btn"style="margin-right:20px;">
                <div class="btn" style="margin-right:20px;"> <a href="/user/registerPage">注册</a> </div>
            </li>
        </form>
    </div>
</div>

<!--页脚部分-->
<%@include file="/WEB-INF/pages/commons/foot.jsp"%>
</body>
</html>
