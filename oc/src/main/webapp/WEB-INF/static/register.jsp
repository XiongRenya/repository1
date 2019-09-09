<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/4 0004
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>
    //表单校验

</script>
<body>
<!-- 引入头部页面 -->
<%@include file="/WEB-INF/pages/commons/header.jsp"%>
<div class="f-main">
    <div class="types-block clearfix" style="text-align: center;">
        <h3 class="types-title">注册</h3>
        <form id="registerForm" method="post" action="/user/register" class="oc-form"  style="text-align: center;border: 1px solid #CCC;width: 600px;margin:0 auto;padding:20px;" >
            <li><label>用户名</label>
                <input maxlength="20" id="username" name="username"  type="text"  class="input-text"  placeholder="请输入用户名（英文数字）" />
                <span style="display: none;color: red;font-size: 10px;" id="tip_1">长度不能小于3</span><br>
            </li>

            <li><label>密码</label>
            <input maxlength="20" id="password" name="password" type="password" class="input-text" placeholder="请输入密码" autocomplete="off" />
        </li>
            <li><label>确认密码</label>
                <input maxlength="20" id="password1" name="password1" type="password" class="input-text" placeholder="请再次输入密码" autocomplete="off" />
            </li>
            <li><label>姓名</label>
                <input maxlength="20" id="name" name="name" type="text" class="input-text" placeholder="请输入姓名" autocomplete="off" />
            </li>
    <li><label>性别</label>
    <div  class="input-text" >
        <div style="float:left"><input  name="sex" type="radio" value="男"/><h6>男</h6></div>
        <div  style="float: left"> <input   name="sex" type="radio" value="女"/><h6>女</h6></div>

    </div>
            </li>
            <li><label>学校</label>
                <input type="text" name="collegeName"   class="input-text">
            </li>
            <li><label>资格证书</label>
                <input type="text" name="certNo" class="input-text">
            </li>
            <li><label>学历</label>
                <select class="input-select" name="education">
                    <option value="本科" >本科</option>
                    <option value="硕士" >硕士</option>
                    <option value="博士" >博士</option>
                    <option value="博士后">博士后</option>
                    <option value="大专">大专</option>
                </select>
            </li>
            <li><label>qq</label>
                <input type="text" name="qq"   class="input-text">
            </li>
            <li><label>个性签名</label>
                <input type="text" name="sign"   class="input-text">
            </li>
            <li><label>验证码</label>
                <input id="identiryCode" name="identiryCode" maxlength="6" class="input-text" type="text" style="width: 150px;" placeholder="请输入验证码"/>
                <a class="vali-base"><img  onclick="reloadIndityImg('indeityImgRegister');" id="indeityImgRegister"  src="${s.base}/tools/identiry/code.html" style="width:80px;height:40px;float:left;margin-left:10px;"/></a>
            </li>
           <li class="clearfix" style="margin-top: 30px;">
                <input type="submit" value="注册" class="btn">
            </li>
            <li>
                <a style="float: left;" href="/ChangePage/loginPage">已有账号，去登录</a>
            </li>
        </form>
    </div>
</div>
<!--页脚部分-->
<%@include file="/WEB-INF/pages/commons/foot.jsp"%>

</body>
</html>
