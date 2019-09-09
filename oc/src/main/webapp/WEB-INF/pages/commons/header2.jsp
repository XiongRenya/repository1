<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/5 0005
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

</head>
<body>
<div class="f-header">
    <div class="f-header-box clearfix">
        <a href="${s.base}"  class="logo" title="在线网校学习平台"></a>
        <nav class="header-nav">
            <a href="/changePage/indexPage" class="header-nav-item">首 页</a>
            <a href="/changePage/listPage" class="header-nav-item">课 程</a>
            <a href="../user/home.html" class="header-nav-item">我的</a>
            <a href="../opt/index.html"  style="width:100px;" target="_blank" class="header-nav-item">运营CMS</a>
            <a href="http://m.ioswift.org" target="_blank" class="header-nav-item" style="width:100px;">M站</a>
        </nav>
    </div>
</div>
<script>
    function reloadIndityImg(eleId){
        document.getElementById(eleId).src = CONTEXT_PATH + "/tools/identiry/code.html?ticket=" + Math.random();
    }
</script>

</body>
</html>
