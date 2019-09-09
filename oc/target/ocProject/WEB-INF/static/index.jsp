<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1">
		<meta name="keywords" content="">
		<meta name="description" content="">
		<title>在线网校学习平台</title>



	</head>

	<body>
	<!-- 引入头部页面 -->
	<%@include file="/WEB-INF/pages/commons/header.jsp"%>

		<div class="f-main">
			<!-- 轮播 分类-start -->
			<div class="clearfix">
				<div class=main-category>
					<div class="main-bg">
						<div class="main-bg-item " style="background-image: url('../../res/i/c1.jpg'); ">
							<div class="main-title-1"></div>
						</div>
		
						<div class="main-bg-item " style="background-image: url('../../res/i/c2.jpg'); ">
							<div class="main-title-2"></div>
						</div>
		
						<div class="main-bg-item " style="background-image: url('../../res/i/c3.jpg'); ">
							<div class="main-title-3"></div>
						</div>
					</div>
		
					<div class="f-nav-box">
						<div class="bg-nav">
							<a class="cur"></a> <a></a> <a></a>
						</div>
					</div>
					
					<div class="main-category-menu">
						<div class="category" c-id="a">
							<a><div class="group">数据开发 </div></a>
						</div>
						
						<div class="category" c-id="b">
							<a><div class="group">移动开发</div></a>
						</div>
						
						<div class="category" c-id="c">
							<a><div class="group">后端开发</div></a>
						</div>
						
						<div class="category" c-id="d">
							<a><div class="group">数据库</div></a>
						</div>
						
						<div class="category" c-id="e">
							<a><div class="group">运维&测试</div></a>
						</div>
						
						<div class="category" c-id="f">
							<a><div class="group">UI设计</div></a>
						</div>
					</div>
										
					<div class="main-category-submenu-content"  id="a" >
						AAAAAAAAAA
					</div>
					
					<div class="main-category-submenu-content"  id="b" >
						BBBBBBBBBBBB
					</div>
					
					<div class="main-category-submenu-content"  id="c" >
						CCCCCCCCCCCC
					</div>
					
					<div class="main-category-submenu-content"  id="d" >
						DDDDDDDDDDDDDD
					</div>
					
					<div class="main-category-submenu-content"  id="e" >
						EEEEEEEEE
					</div>
					
					<div class="main-category-submenu-content"  id="f" >
						FFFFFFFFFF
					</div>
					
				</div>
			</div>
			<!-- 轮播 分类-end -->
			
			<!-- 实战推荐-start -->
			<div class="types-block clearfix">
				<h3 class="types-title">实战推荐</h3>
				<div class="types-content">
					
					<a href="">
					<div class="course-card-container">
						<div class="course-card-top green-bg">
							<span>测试</span>
						</div>

						<div class="course-card-content">
							<h3 class="course-card-name">Android自动化测试实战 工具 框架 脚本</h3>
							<p title="找Android自动化测试工作必学的主流工具、框架和自动化脚本">找Android自动化测试工作必学的主流工具、框架和自动化脚本</p>
							<div class="course-card-bottom">
								<div class="course-card-info">178人在学</div>
								<div class="course-card-price">￥179.00</div>
							</div>
						</div>
					</div>
					</a>

					<a href="">
					<div class="course-card-container">
						<div class="course-card-top pink-bg">
							<span>WebApp</span>
						</div>
						<div class="course-card-content">
							<h3 class="course-card-name">AngularJS仿拉勾网WebApp 开发移动端单页应用</h3>
							<p title="基于AngularJS，仿拉勾网开发一个招聘类的移动端单页应用">基于AngularJS，仿拉勾网开发一个招聘类的移动端单页应用</p>
							<div class="clearfix course-card-bottom">
								<div class="course-card-info">344人在学</div>
	
								<div class="course-card-price">￥99.00</div>
							</div>
						</div>
					</div>
					</a>
					
					<a href="">
					<div class="course-card-container">
						<div class="course-card-top brown-bg">
							<span>Django</span>
						</div>
	
						<div class="course-card-content">
							<h3 class="course-card-name">强力django杀手级xadmin 打造上线标准的在线教育平台</h3>
							<p title="全面掌握django框架,轻松应对python web开发工作">全面掌握django框架,轻松应对python web开发工作</p>
							<div class="clearfix course-card-bottom">
								<div class="course-card-info">488人在学</div>
								<div class="course-card-price">￥369.00</div>
							</div>
						</div>
					</div>
					</a>
	
					<a href="">
					<div class="course-card-container">
						<div class="course-card-top purple-bg">
							<span>Python</span>
						</div>
	
						<div class="course-card-content">
							<h3 class="course-card-name">Python高级编程技巧实战</h3>
							<p title="精选50个python训练任务，提升实战技能与高效编程技巧">精选50个python训练任务，提升实战技能与高效编程技巧</p>
							<div class="clearfix course-card-bottom">
								<div class="course-card-info">813人在学</div>
								<div class="course-card-price">￥168.00</div>
							</div>
						</div>
					</div>
					</a>
					
					<a href="">
					<div class="course-card-container" style="margin-right: 0px;">
						<div class="course-card-top green-bg">
							<span>PHP</span>
						</div>
						
						<div class="course-card-content">
							<h3 class="course-card-name">前端后台ThinkPHP开发整站</h3>
							<p title="用PHP+MySQL+Ajax开完新闻资讯整站，实现“小全栈”的梦想">用PHP+MySQL+Ajax开完新闻资讯整站，实现“小全栈”的梦想</p>
							<div class="clearfix course-card-bottom">
								<div class="course-card-info">2324人在学</div>
								<div class="course-card-price">￥128.00</div>
							</div>
						</div>
					</div>
					</a>
					
				</div>
			</div>
			<!-- 实战推荐-end -->
			
			<!-- 免费好课-start -->
			<div class="types-block clearfix">
				<h3 class="types-title">免费好课</h3>
				<div class="types-content">
					<a href="">
					<div class="course-card-container">
						<div class="course-card-top green-bg">
							<span>测试</span>
						</div>

						<div class="course-card-content">
							<h3 class="course-card-name">Android自动化测试实战 工具 框架 脚本</h3>
							<p title="找Android自动化测试工作必学的主流工具、框架和自动化脚本">找Android自动化测试工作必学的主流工具、框架和自动化脚本</p>
							<div class="course-card-bottom">
								<div class="course-card-info">初级<span>·</span>178人在学</div>
							</div>
						</div>
					</div>
					</a>

					<a href="">
					<div class="course-card-container">
						<div class="course-card-top pink-bg">
							<span>WebApp</span>
						</div>
						<div class="course-card-content">
							<h3 class="course-card-name">AngularJS仿拉勾网WebApp 开发移动端单页应用</h3>
							<p title="基于AngularJS，仿拉勾网开发一个招聘类的移动端单页应用">基于AngularJS，仿拉勾网开发一个招聘类的移动端单页应用</p>
							<div class="clearfix course-card-bottom">
								<div class="course-card-info">初级<span>·</span>3444人在学</div>
							</div>
						</div>
					</div>
					</a>
					
					<div class="course-card-container">
						<div class="course-card-top brown-bg">
							<span>Django</span>
						</div>
	
						<div class="course-card-content">
							<h3 class="course-card-name">强力django杀手级xadmin 打造上线标准的在线教育平台</h3>
							<p title="全面掌握django框架,轻松应对python web开发工作">全面掌握django框架,轻松应对python web开发工作</p>
							<div class="clearfix course-card-bottom">
								<div class="course-card-info">初级<span>·</span>4888人在学</div>
							</div>
						</div>
					</div>

					<div class="course-card-container">
						<div class="course-card-top purple-bg">
							<span>Python</span>
						</div>
	
						<div class="course-card-content">
							<h3 class="course-card-name">Python高级编程技巧实战</h3>
							<p title="精选50个python训练任务，提升实战技能与高效编程技巧">精选50个python训练任务，提升实战技能与高效编程技巧</p>
							<div class="clearfix course-card-bottom">
								<div class="course-card-info">高级<span>·</span>81333人在学</div>
							</div>
						</div>
					</div>
					
					<div class="course-card-container" style="margin-right: 0px;">
						<div class="course-card-top green-bg">
							<span>PHP</span>
						</div>
						
						<div class="course-card-content">
							<h3 class="course-card-name">前端后台ThinkPHP开发整站</h3>
							<p title="用PHP+MySQL+Ajax开完新闻资讯整站，实现“小全栈”的梦想">用PHP+MySQL+Ajax开完新闻资讯整站，实现“小全栈”的梦想</p>
							<div class="clearfix course-card-bottom">
								<div class="course-card-info">中级<span>·</span>6133人在学</div>
							</div>
						</div>
					</div>
					
				</div>
				
			</div>
			<!-- 免费好课-end -->
			
			<!-- java课程-start -->
			<div class="types-block clearfix">
				<h3 class="types-title">Java开发工程师</h3>
				<div class="types-content-left "
					style="background-image: url(http://img.mukewang.com/58ac18fd00012a4202240348.jpg);">
					<div class="course-card-container-fix">
						<div class="course-card-content">
							<h3 class="course-card-name">Java职业路径</h3>
							<p class="color-fff" title="带你研究Java技术框架">带你研究Java技术框架，系统地学习java技术</p>
							<div class="course-card-bottom" style="margin-top: 50px;">
								<div class="course-card-info color-fff">了解详情 →</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="types-content-right ">
					<div class="types-content-banner ">
						<a target="_blank" href="http://coding.imooc.com/class/81.html">
							<div class="types-content-banner-block green-bg"  style="margin-right:20px;" >
								Spring框架实战讲解！
							</div>
						</a>
						<a target="_blank" href="http://coding.imooc.com/class/76.html">
							<div class="types-content-banner-block gray-bg"  >
								MyBatis框架实战讲解！
							</div>
						</a>
					</div>
					
					<div class="clearfix">
						<a href="">
							<div class="course-card-container">
								<div class="course-card-top green-bg">
									<span>测试</span>
								</div>
	
								<div class="course-card-content">
									<h3 class="course-card-name">Android自动化测试实战 工具 框架 脚本</h3>
									<p title="找Android自动化测试工作必学的主流工具、框架和自动化脚本">找Android自动化测试工作必学的主流工具、框架和自动化脚本</p>
									<div class="course-card-bottom">
										<div class="course-card-info">
											初级<span>·</span>178人在学
										</div>
									</div>
								</div>
							</div>
						</a> 
						
						<a href="">
							<div class="course-card-container">
								<div class="course-card-top pink-bg">
									<span>WebApp</span>
								</div>
								<div class="course-card-content">
									<h3 class="course-card-name">AngularJS仿拉勾网WebApp 开发移动端单页应用</h3>
									<p title="基于AngularJS，仿拉勾网开发一个招聘类的移动端单页应用">基于AngularJS，仿拉勾网开发一个招聘类的移动端单页应用</p>
									<div class="clearfix course-card-bottom">
										<div class="course-card-info">
											初级<span>·</span>3444人在学
										</div>
									</div>
								</div>
							</div>
						</a>
	
						<div class="course-card-container">
							<div class="course-card-top brown-bg">
								<span>Django</span>
							</div>
	
							<div class="course-card-content">
								<h3 class="course-card-name">强力django杀手级xadmin 打造上线标准的在线教育平台</h3>
								<p title="全面掌握django框架,轻松应对python web开发工作">全面掌握django框架,轻松应对python
									web开发工作</p>
								<div class="clearfix course-card-bottom">
									<div class="course-card-info">
										初级<span>·</span>4888人在学
									</div>
								</div>
							</div>
						</div>
	
						<div class="course-card-container" style="margin-right: 0px;">
							<div class="course-card-top purple-bg">
								<span>Python</span>
							</div>
	
							<div class="course-card-content">
								<h3 class="course-card-name">Python高级编程技巧实战</h3>
								<p title="精选50个python训练任务，提升实战技能与高效编程技巧">精选50个python训练任务，提升实战技能与高效编程技巧</p>
								<div class="clearfix course-card-bottom">
									<div class="course-card-info">
										高级<span>·</span>81333人在学
									</div>
								</div>
							</div>
						</div>
	
					</div>
				</div>
			</div>
			<!-- java课程-end -->
			
			<!--名校讲师-start -->
			<div class="types-block clearfix">
				<h3 class="types-title">名校讲师</h3>
				<a href="">
					<div class="lecturer-card-container">
						<div class="lecturer-item">
							<img class="lecturer-uimg" src="../../res/i/header.jpg">
							<span class="lecturer-name">王阳明</span>
							<span class="lecturer-title">中华大学</span>
							<span class="lecturer-p" >中华大学高级讲师，擅长写代码</span>
						</div>
					</div>
				</a>
					
				<a href="">
					<div class="lecturer-card-container">
						<div class="lecturer-item">
							<img class="lecturer-uimg" src="../../res/i/header.jpg">
							<span class="lecturer-name">王阳明</span>
							<span class="lecturer-title">中华大学</span>
							<span class="lecturer-p" >中华大学高级讲师，擅长写代码</span>
						</div>
					</div>
				</a>

				<div class="lecturer-card-container">
					<div class="lecturer-item">
						<img class="lecturer-uimg" src="../../res/i/header.jpg">
						<span class="lecturer-name">王阳明</span>
						<span class="lecturer-title">中华大学</span>
						<span class="lecturer-p" >中华大学高级讲师，擅长写代码</span>
					</div>
				</div>

				<div class="lecturer-card-container"  >
					<div class="lecturer-item">
						<img class="lecturer-uimg" src="../../res/i/header.jpg">
						<span class="lecturer-name">王阳明</span>
						<span class="lecturer-title">中华大学</span>
						<span class="lecturer-p" >中华大学高级讲师，擅长写代码</span>
					</div>
				</div>
					
				<div class="lecturer-card-container" style="margin-right: 0px;">
					<div class="lecturer-item">
						<img class="lecturer-uimg" src="../../res/i/header.jpg">
						<span class="lecturer-name">王阳明</span>
						<span class="lecturer-title">中华大学</span>
						<span class="lecturer-p" >中华大学高级讲师，擅长写代码</span>
					</div>
				</div>
					
			</div>
			<!--名校讲师-end -->
		</div>
		
		
<!--页脚部分-->
	<%@include file="/WEB-INF/pages/commons/foot.jsp"%>
		
	</body>
	

</html>
