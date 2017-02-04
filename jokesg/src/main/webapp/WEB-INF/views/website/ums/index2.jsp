<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>时光匆匆似流年</title>
<link href="${ctx}/ui/website/01/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<script src="${ctx}/ui/website/01/js/jquery.min.js"></script>
<link href="${ctx}/ui/website/01/css/style.css" rel='stylesheet'
	type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="时光匆匆似流年,李建章,唐县四中" />
<script type="text/javascript" src="${ctx}/ui/website/01/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/ui/website/01/js/easing.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<style type="text/css">
ul.year li:nth-child(2) {
	margin-top: 96px;
}

ul.year li:nth-child(3) {
	margin-top: 123px;
}

ul.year li:nth-child(4) {
	margin-top: 95px;
}
</style>
<!---- start-smoth-scrolling---->
</head>
<body>
	<!-- container -->
	<!-- header -->
	<div id="home" class="header">
		<div class="container">
			<!-- top-hedader -->
			<div class="top-header">
				<!-- /logo -->
				<!--top-nav---->
				<div class="top-nav">
					<div class="navigation">
						<div class="logo">
							<h1>
								<a href="${ctx}/ui/website/01/index.html"><span>时光</span>匆匆的流年</a>
							</h1>
						</div>
						<div class="navigation-right">
							<span class="menu"><img
								src="${ctx}/ui/website/01/images/menu.png" alt=" " /></span>
							<nav class="link-effect-3" id="link-effect-3">
								<ul class="nav1 nav nav-wil">
									<li class="active"><a data-hover="&nbsp;&nbsp;"
										href="${ctx}/ui/website/01/index.html">首页</a></li>
									<li><a class="scroll" data-hover="&nbsp;&nbsp;"
										href="${ctx}/ui/website/01/#about">简介</a></li>
									<li><a class="scroll" data-hover="&nbsp;&nbsp;&nbsp;"
										href="${ctx}/ui/website/01/#services">待开发</a></li>
									<li><a class="scroll" data-hover="&nbsp;&nbsp;&nbsp;"
										href="${ctx}/ui/website/01/#work">时间轮</a></li>
									<li><a class="scroll" data-hover="&nbsp;&nbsp;"
										href="${ctx}/ui/website/01/#port">相册</a></li>
									<li><a class="scroll" data-hover="&nbsp;&nbsp;&nbsp;"
										href="${ctx}/ui/website/01/#blogs">待开发</a></li>
									<li><a class="scroll"
										data-hover="&nbsp;&nbsp;&nbsp;&nbsp;"
										href="${ctx}/ui/website/01/#contact">关于我们</a></li>
								</ul>
							</nav>
							<!-- script-for-menu -->
							<script>
								$("span.menu").click(function() {
									$("ul.nav1").slideToggle(300, function() {
										// Animation complete.
									});
								});
							</script>
							<!-- /script-for-menu -->
						</div>
						<div class="clearfix"></div>
					</div>
					<!-- /top-hedader -->
				</div>
				<div class="banner-info">
					<div class="col-md-7 header-right">
						<h1>Hi !</h1>
						<h6>欢迎浏览</h6>
						<ul class="address">
							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>谁又想得到</li>
								</ul>
							</li>
							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>短暂的相知之后是漫漫一生的告别</li>
								</ul>
							</li>

							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>以为失去的只是一个人</li>
								</ul>
							</li>
							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>谁知道错过的是一生</li>
								</ul>
							</li>
							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>既然如此</li>
								</ul>
							</li>
							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>我们无需作答</li>
								</ul>
							</li>
							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>就让那段温暖的青春年月</li>
								</ul>
							</li>
							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>淌在我们的内心里</li>
								</ul>
							</li>
							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>淌在幽幽的岁月之中</li>
								</ul>
							</li>
							<br />
							<li>
								<ul class="address-text">
									<li><b></b></li>
									<li>时光匆匆的流年!</li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="col-md-5 header-left">
						<img src="${ctx}/ui/website/01/images/timg1.jpg" alt="">
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
		</div>
	</div>
	<!-- about -->
	<div id="about" class="about">
		<div class="col-md-6 about-left">
			<div id="owl-demo1" class="owl-carousel owl-carousel2">
				<div class="item">
					<div class="about-left-grid">
						<h2>
							匆匆<span>那年</span>
						</h2>
						<p>多少人曾为时光匆匆流逝而遗憾，曾为生命如此短暂而感伤，曾为花草树木的调残而惆怅，曾为生活的坚信而彷徨，
							当情海思绪积压心头的时候，想寻找一叶扁舟，在大海上游荡，让思绪尽情的释放。 青春是一场美丽的梦，当你醒来的时候，她早已消失无踪！
							燕子去了，有再来的时候；杨柳枯了，有再青的时候；桃花谢了，有再开的时候。今日离别，只为他日更美的相聚</p>
						<ul>
							<li><a class="a-btn-h scroll"
								href="${ctx}/ui/website/01/#contact">写出我的青春</a></li>
						</ul>
					</div>
				</div>
				<c:forEach items="${sgcc }" var="sg">
					<div class="item">
						<div class="about-left-grid">
							<input type="hidden" id="email${sg.id }" value="${sg.email }">
							<input type="hidden" id="title${sg.id }" value="${sg.title }">
							<h2>
								Hi! I'm <span id="name${sg.id }">${sg.name }</span>
							</h2>
							<p id="content${sg.id }">${sg.content }</p>
							<ul>
								<li><a class="a-btn-a scroll"
									href="${ctx}/ui/website/01/#contact"
									onclick="upda('${sg.id}');">修改青春</a></li>
								<li><a class="a-btn-h scroll"
									href="${ctx}/ui/website/01/#contact">写出我的青春</a></li>
							</ul>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-md-6 about-right"></div>
		<div class="clearfix"></div>
		<link href="${ctx}/ui/website/01/css/owl.carousel.css"
			rel="stylesheet">
		<script src="${ctx}/ui/website/01/js/owl.carousel.js"></script>
		<script>
			$(document).ready(function() {
				$("#owl-demo1").owlCarousel({
					items : 1,
					lazyLoad : false,
					autoPlay : true,
					navigation : false,
					navigationText : false,
					pagination : true,
				});
			});
		</script>
		<!-- Feedback -->
		<script>
			$(document).ready(function() {
				$("#owl-demo3").owlCarousel({
					items : 1,
					lazyLoad : false,
					autoPlay : true,
					navigation : false,
					navigationText : true,
					pagination : true,
				});
			});
		</script>
	</div>
	<!-- /about -->
	<!-- services -->
	<div id="services" class="services">
		<div class="container">
			<div class="service-head one text-center ">
				<h4>敬请期待</h4>
				<h3>
					告诉你 <span>一个秘密</span>
				</h3>
				<span class="border two"></span>
			</div>
			<!-- services-grids -->
			<div class="wthree_about_right_grids w3l-agile">
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-pencil"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>秘密</h4>
						<p>站长是一个帅哥</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-cog"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>此模块待开发</h4>
						<p>此模块待开发</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-leaf"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>此模块待开发</h4>
						<p>此模块待开发</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-gift"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>此模块待开发</h4>
						<p>把这个网站送给你把。</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>

			<!-- services-grids -->
		</div>
	</div>
	<!-- services -->
	<!--work-experience-->
	<div id="work" class="work">
		<div class="container">
			<div class="service-head text-center">
				<h4>时间轮</h4>
				<h3>
					我们的<span>青春</span>
				</h3>
				<span class="border one"></span>
			</div>
			<div class="time-main w3l-agile">
				<div class="col-md-6 year-info">
					<ul class="year">
						<li>相见</li>
						<li>相知</li>
						<li>离别</li>
						<li>再聚首</li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<ul class="col-md-6 timeline">
					<li>
						<div class="timeline-badge info">
							<i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">相见</h4>
							</div>
							<div class="timeline-body">
								<p>世间有这么一种情感，虽然不能时时相聚，但却能一见如故，这就是同窗之情</p>
							</div>
						</div>
					</li>

					<li>
						<div class="timeline-badge primary">
							<i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">相知</h4>
							</div>
							<div class="timeline-body">
								<p>青春像一杯茶，苦涩中带着一丝清甜;青春像一本书，有读不完的故事与哲理;青春像一首歌，歌唱着欢乐与悲伤。让我们放声歌唱，歌唱青春的神秘与珍贵，让我们踏上青春之旅，体会青春的美好与飞扬!</p>
							</div>
						</div>
					</li>



					<li>
						<div class="timeline-badge danger">
							<i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">离别</h4>
							</div>
							<div class="timeline-body">
								<p>悄悄是别离的笙箫，沉默是今晚的康桥。悄的我走了，正如我悄悄的来；我挥一挥衣袖，不带走一片云彩</p>
							</div>
						</div>
					</li>

					<li>
						<div class="timeline-badge success">
							<i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">再聚首</h4>
							</div>
							<div class="timeline-body">
								<p>明月几时有？把酒问青天。不知天上宫阙，今夕是何年。我欲乘风归去，又恐琼楼玉宇，高处不胜寒。起舞弄清影，何似在人间？转朱阁，低绮户，照无眠。不应有恨，何事长向别时圆？人有悲欢离合，月有阴晴圆缺，此事古难全。但愿人长久，千里共婵娟。</p>
							</div>
						</div>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//work-experience-->

	<!-- portfolio -->
	<div class="portfolio" id="port">
		<div class="service-head text-center">
			<h4>相册</h4>
			<h3>
				长得<span>太丑了</span>
			</h3>
			<span class="border"></span>
		</div>
		<div class="portfolio-grids">
			<script src="${ctx}/ui/website/01/js/easyResponsiveTabs.js"
				type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function() {
					$('#horizontalTab').easyResponsiveTabs({
						type : 'default', //Types: default, vertical, accordion           
						width : 'auto', //auto or any width like 600px
						fit : true
					// 100% fit in a container
					});
				});
			</script>
			<div class="sap_tabs">
				<div id="horizontalTab"
					style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Boy</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Girl</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span>这是什么鬼</span></li>
					</ul>
					<div class="resp-tabs-container">
						
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<c:forEach items="${boy }" var="b">
								<div class="col-md-3 team-gd ">
									<div class="thumb">
										<a href="${ctx}/ui/website/01/#portfolioModal5"
											class="portfolio-link b-link-diagonal b-animate-go"
											data-toggle="modal"><img
											src="${ctx}${b.picUrl}" alt=""> </a>
									</div>
								</div>
							</c:forEach>
							<div class="clearfix"></div>
						</div>
						
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
							<c:forEach items="${gril }" var="g">
								<div class="col-md-3 team-gd ">
									<div class="thumb">
										<a href="${ctx}/ui/website/01/#portfolioModal5"
											class="portfolio-link b-link-diagonal b-animate-go"
											data-toggle="modal"><img
											src="${ctx}${g.picUrl}" alt=""> </a>
									</div>
								</div>
							</c:forEach>
							<div class="clearfix"></div>
						</div>
						
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
							<c:forEach items="${ogter }" var="o">
								<div class="col-md-3 team-gd ">
									<div class="thumb">
										<a href="${ctx}/ui/website/01/#portfolioModal5"
											class="portfolio-link b-link-diagonal b-animate-go"
											data-toggle="modal"><img
											src="${ctx}${o.picUrl}" alt=""> </a>
									</div>
								</div>
							</c:forEach>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //portfolio -->

	<!-- 
				<div class="blog" id="blogs">
					<div class="container">
						<div class="service-head text-center">
						<h4>嗯...啊..</h4>
						<h3>嗯...<span>啊..</span></h3>
						<span class="border one"></span>
					</div> 
					   <div class="news-grid w3l-agile">
					    <div class="col-md-6 news-img">
						  <a href="${ctx}/ui/website/01/#" data-toggle="modal" data-target="#myModal1"> <img src="${ctx}/ui/website/01/images/b1.jpg" alt=" " class="img-responsive"></a>
						 
						</div>
					    <div class="col-md-6 news-text">
						   <h3> <a href="${ctx}/ui/website/01/#" data-toggle="modal" data-target="#myModal1">HERE GOES AN AWESOME BLOG TITLE</a></h3>
							<ul class="news">
								<li><i class="glyphicon glyphicon-user"></i> <a href="${ctx}/ui/website/01/#">Admin</a></li>
								<li><i class="glyphicon glyphicon-comment"></i> <a href="${ctx}/ui/website/01/#">2 Comments</a></li>
								<li><i class="glyphicon glyphicon-heart"></i> <a href="${ctx}/ui/website/01/#">50 Likes</a></li>
								<li><i class="glyphicon glyphicon-tags"></i> <a href="${ctx}/ui/website/01/#">3 Tags</a></li>
							</ul>
							<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
							<a href="${ctx}/ui/website/01/#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">Read More</a>
					
						</div>
		
						<div class="clearfix"></div>
					 </div>
					  <div class="news-grid">

					    <div class="col-md-6 news-text two">
						   <h3> <a href="${ctx}/ui/website/01/#" data-toggle="modal" data-target="#myModal1">HERE GOES AN AWESOME BLOG TITLE</a></h3>
							<ul class="news">
								<li><i class="glyphicon glyphicon-user"></i> <a href="${ctx}/ui/website/01/#">Admin</a></li>
								<li><i class="glyphicon glyphicon-comment"></i> <a href="${ctx}/ui/website/01/#">2 Comments</a></li>
								<li><i class="glyphicon glyphicon-heart"></i> <a href="${ctx}/ui/website/01/#">50 Likes</a></li>
								<li><i class="glyphicon glyphicon-tags"></i> <a href="${ctx}/ui/website/01/#">3 Tags</a></li>
							</ul>
							<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
								<a href="${ctx}/ui/website/01/#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">Read More</a>
					
						</div>
						<div class="col-md-6 news-img two">
						   <a href="${ctx}/ui/website/01/#" data-toggle="modal" data-target="#myModal1"> <img src="${ctx}/ui/website/01/images/b2.jpg" alt=" " class="img-responsive"></a>
						 
						</div>
						<div class="clearfix"></div>
					 </div>
					  <div class="news-grid">
					    <div class="col-md-6 news-img">
						  <a href="${ctx}/ui/website/01/#" data-toggle="modal" data-target="#myModal1"> <img src="${ctx}/ui/website/01/images/b3.jpg" alt=" " class="img-responsive"></a>
						 
						</div>
					    <div class="col-md-6 news-text">
						   <h3> <a href="${ctx}/ui/website/01/#" data-toggle="modal" data-target="#myModal1">HERE GOES AN AWESOME BLOG TITLE</a></h3>
							<ul class="news">
								<li><i class="glyphicon glyphicon-user"></i> <a href="${ctx}/ui/website/01/#">Admin</a></li>
								<li><i class="glyphicon glyphicon-comment"></i> <a href="${ctx}/ui/website/01/#">2 Comments</a></li>
								<li><i class="glyphicon glyphicon-heart"></i> <a href="${ctx}/ui/website/01/#">50 Likes</a></li>
								<li><i class="glyphicon glyphicon-tags"></i> <a href="${ctx}/ui/website/01/#">3 Tags</a></li>
							</ul>
							<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
							<a href="${ctx}/ui/website/01/#" data-toggle="modal" data-target="#myModal1" class="read hvr-shutter-in-horizontal">Read More</a>
					
						</div>
		
						<div class="clearfix"></div>
					 </div>
					</div>
				</div>
			<div class="modal ab fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog about" role="document">
					<div class="modal-content about">
						<div class="modal-header">
							<button type="button" class="close ab" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body about">
								<div class="about">
									
									  <div class="about-inner">
									   
									      <img src="${ctx}/ui/website/01/images/b3.jpg" alt="about"/>
										     <h4 class="tittle">A Fews words about us</h4>
										   <p>Lorem ipsum dolor sit amet Integer gravida,Lorem ipsum dolor sit amet Integer gravida velit,Ming sits in the corner the whole day. She's into crochet. quis dolor tristiqumsan.Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. velit quis dolor tristiqumsan.</p>
										    <p>Lorem ipsum dolor sit amet. Integer gravida velit quis dolor tristiqumsan.anteposuerit litterarum formas humanitatis per seacula amet Integer gravida velit. </p>
									  </div>
												
								</div>
						</div>
					</div>
				</div>
			</div>
			-->

	<div class="footer" id="contact">
		<div class="container">
			<div class="service-head one text-center">
				<h4>关于我们</h4>
				<h3>
					GET <span>IN TOUCH WITH ME</span>
				</h3>
				<span class="border two"></span>
			</div>
			<div class="mail_us">
				<div class="col-md-6 mail_left">
					<div class="contact-grid1-left">
						<div class="contact-grid1-left1">
							<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
							<h4>电子邮箱</h4>
							<ul>
								<li>Mail1: <a href="mailto:314975605@qq.com">314975605@qq.com</a></li>
								<li>Mail2: <a href="mailto:lijianzhang@gionee.com">lijianzhang@gionee.com</a></li>
							</ul>
						</div>
					</div>
					<div class="contact-grid1-left">
						<div class="contact-grid1-left1">
							<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
							<h4>群号</h4>
							<ul>
								<li>Q群: +497 435 457</li>
							</ul>
						</div>
					</div>
					<div class="contact-grid1-left">
						<div class="contact-grid1-left1">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
							<h4>联系地址</h4>
							<ul>
								<li>保定市唐县军城镇</li>
								<li>Baoding Tangxian Juncheng</li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 mail_right">
					<form action="${ctx }/ws/save.do" method="post" id="ws_save"
						ng-app="app" ng-controller="valid">
						<input type="hidden" name="id" id="id" value=""> <input
							type="text" name="name" id="name" placeholder="姓名"
							ng-model="name" required> <input type="email"
							name="email" id="email" placeholder="电子邮箱"> <input
							type="text" name="title" id="title" placeholder="标题">
						<textarea name="content" id="content" placeholder="内容"></textarea>
						<input type="submit" value="提交">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="copy_right text-center">
				<p>
					Copyright &copy; 2016.Company name All rights reserved.<a
						target="_blank" href="#">stealth.Lee</a>
				</p>
				<ul class="social-icons two">
					<li><a href="${ctx}/ui/website/01/#"> </a></li>
					<li><a href="${ctx}/ui/website/01/#" class="fb"> </a></li>
					<li><a href="${ctx}/ui/website/01/#" class="in"> </a></li>
					<li><a href="${ctx}/ui/website/01/#" class="dott"> </a></li>
				</ul>
			</div>
		</div>
	</div>

	<a href="${ctx}/ui/website/01/#home" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});

		function upda(id) {
			$('#id').val(id);
			$('#name').val($('#name' + id + '').text());
			$('#email').val($('#email' + id + '').val());
			$('#title').val($('#title' + id + '').val());
			$('#content').val($('#content' + id + '').text());
		};
	</script>
	<script src="${ctx}/ui/website/01/js/bootstrap.js"></script>
	<script src="${ctx}/ui/website/01/js/ws-validate.js"></script>
</body>
</html>

