<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/3 0003
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- 页脚-start -->
<div class="f-footer">
    <div class="f-footer-box clearfix">
        <div class="footer-link">
            <a href="javascript:void(0);"  target="_blank" title="企业合作">企业合作</a>
            <a href="javascript:void(0);" target="_blank" title="联系我们">联系我们</a>
            <a href="javascript:void(0);" target="_blank" title="常见问题">常见问题</a>
            <a href="javascript:void(0);" target="_blank" title="意见反馈">意见反馈</a>
            <a href="javascript:void(0);" target="_blank" title="友情链接">友情链接</a>
        </div>
        <div class="footer-copyright">
            <span>©&nbsp;2017&nbsp; 备案 </span>
        </div>
    </div>
</div>
<!-- 页脚-end-->
<script>
    $(function(){
        var index = 0;
        var timer = 4000;
        $('.bg-nav a').click(function(){
            index = $('.bg-nav a').index($(this));
            rollBg(index);
        });
        $('.index-roll-item').click(function(){
            index = $('.index-roll-item').index($(this));
            rollBg(index);
        });
        var rollBg = function(i){
            $('.main-bg-item').fadeOut(1000);
            $($('.main-bg-item')[i]).fadeIn(1000);
            $('.bg-nav a').removeClass('cur');
            $($('.bg-nav a')[i]).addClass('cur');
            $('.index-roll-item').removeClass('cur');
            $($('.index-roll-item')[i]).addClass('cur');
        }
        setInterval(function(){
            index += 1;
            index = index%3;
            rollBg(index);
        }, timer);

    });
</script>
</body>
</html>
