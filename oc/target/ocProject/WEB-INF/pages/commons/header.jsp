<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/3 0003
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>

    <link href="../../res/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../res/css/reset.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../res/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../../res/js/bootstrap.min.js"></script>

    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="icon" type="image/png" href="../../res/i/ico.png" sizes="16x16">
    <script type="text/javascript">
        CONETXT_PATH = '';
    </script>
</head>
<body>
<script type="text/javascript">


    $(function(){
        $("#userdetail").popover({
            trigger:'manual',
            placement : 'bottom',
            html: 'true',
            content : '<div style="width:300px;height:300px;"></div>',
            animation: false
        }).on("mouseenter", function () {
            var _this = this;
            $(this).popover("show");
            $(this).siblings(".popover").on("mouseleave", function () {
                $(_this).popover('hide');
            });
        }).on("mouseleave", function () {
            var _this = this;
            setTimeout(function () {
                if (!$(".popover:hover").length) {
                    $(_this).popover("hide")
                }
            }, 0);
        });
        //课程分类展示
        $(".category").popover({
            trigger:'manual',
            placement : 'right',
            html: 'true',
            content : '',
            animation: false
        }).on("mouseenter", function () {
            var cid = $(this).attr('c-id');
            $('#' + cid).show();
            $('#' + cid).hover(function(){
                $('#' + cid).show();
            },function(){
                $('#' + cid).hide();
            });
        }).on("mouseleave", function () {
            var cid = $(this).attr('c-id');
            $('#' + cid).hide();
        });
    });
</script>
<!-- 头部-start -->
<div class="f-header">
    <div class="f-header-box clearfix">
        <a href="../../" class="logo" title="网校在线学习平台"></a>
        <nav class="header-nav">
            <a href="/changePage/indexPage" class="header-nav-item">首 页</a>
            <a href="/changePage/listPage" class="header-nav-item">课 程</a>
            <a href="../user/home.html" class="header-nav-item">我的</a>
            <a href="../opt/index.html"  style="width:100px;" target="_blank" class="header-nav-item">运营CMS</a>
        </nav>
        <c:if test="${empty user1}">
        <nav class="header-nav" style="float:right">
            <a href="/changePage/loginPage" class="header-nav-item" data-toggle="modal" style="margin-right:0px;font-size:14px;">登录</a>
            <a href="/changePage/registerPage" class="header-nav-item" style="margin-left:0px;font-size:14px;">注册</a>

        </nav>
        </c:if>
  <c:if test="${not empty user1}">
    <nav class="header-nav" style="float:right">
 <table >
          <tr>
              <td >  <a href="/changePage/userPage" title="点击进入个人信息">欢迎您！${sessionScope.user1.name}</a></td>
              <td  rowspan="2">     <img src="${photoImg}" border="1" alt="头像.."height="40px" width="40px"/></td>

          </tr>
          <tr> <td ><a href="/user/exit" title="点击退出登录">退出</a></td></tr>
      </table>


    </nav>
</c:if>
    </div>
</div>
<!-- 头部-end -->


</body>
</html>
