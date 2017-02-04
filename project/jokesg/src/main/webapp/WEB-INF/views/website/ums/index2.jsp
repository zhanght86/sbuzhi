<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<link href="${ctx}/ui/website/01/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx}/ui/website/01/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="${ctx}/ui/website/01/css/style.css" rel='stylesheet' type='text/css' />
 <!-- Custom Theme files -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta name="keywords" content="" />
<!--<link href='http://fonts.googleapis.com/css?family=Asap:400,700,400italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'> -->
 <!---- start-smoth-scrolling---->
<script type="text/javascript" src="${ctx}/ui/website/01/js/move-top.js"></script>
<script type="text/javascript" src="${ctx}/ui/website/01/js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
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
						<h1><a href="${ctx}/ui/website/01/index.html"><span>时光</span>匆匆的流年</a></h1>
					</div>
					<div class="navigation-right">
						<span class="menu"><img src="${ctx}/ui/website/01/images/menu.png" alt=" " /></span>
						<nav class="link-effect-3" id="link-effect-3">
							<ul class="nav1 nav nav-wil">
								<li class="active"><a data-hover="首页" href="${ctx}/ui/website/01/index.html">首页</a></li>
								<li><a class="scroll" data-hover="About" href="${ctx}/ui/website/01/#about">简介</a></li>
								<li><a class="scroll" data-hover="Services" href="${ctx}/ui/website/01/#services" >Services</a></li>
								<li><a class="scroll" data-hover="Experience" href="${ctx}/ui/website/01/#work">Experience</a></li>
								<li><a class="scroll" data-hover="Portfolio" href="${ctx}/ui/website/01/#port">Portfolio</a></li>
								<li><a class="scroll" data-hover="Blog" href="${ctx}/ui/website/01/#blogs">Blog</a></li>
								<li><a class="scroll" data-hover="联系我们" href="${ctx}/ui/website/01/#contact">联系我们</a></li>
							</ul>
						</nav>
							<!-- script-for-menu -->
								<script>
								   $( "span.menu" ).click(function() {
									 $( "ul.nav1" ).slideToggle( 300, function() {
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
								<li>以为错过的只是一个人</li>
							</ul>
						</li>
						<li>
							<ul class="address-text">
								<li><b></b></li>
								<li>谁知道丢失的是一生</li>
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
						<br/>
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
				<div class="clearfix"> </div>
						
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
											<h2>Hi! I'm <span>Rob Lee</span></h2>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis.</p>
											<ul>
												<li><a class="a-btn-a scroll" href="${ctx}/ui/website/01/#port">My Work</a></li>
												<li><a class="a-btn-h scroll" href="${ctx}/ui/website/01/#contact">Hire Me</a></li>
											</ul>
										</div>
					                </div>
					                  <div class="item">
					                	<div class="about-left-grid">
											<h2>Hi! I'm <span>Rob Lee</span></h2>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis.</p>
											<ul>
												<li><a class="a-btn-a scroll" href="${ctx}/ui/website/01/#port">My Work</a></li>
												<li><a class="a-btn-h scroll" href="${ctx}/ui/website/01/#contact">Hire Me</a></li>
											</ul>
										</div>
					                </div>
					                  <div class="item">
					                	<div class="about-left-grid">
											<h2>Hi! I'm <span>ROB LEE</span></h2>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis.</p>
											<ul>
												<li><a class="a-btn-a scroll" href="${ctx}/ui/website/01/#port">My Work</a></li>
												<li><a class="a-btn-h scroll" href="${ctx}/ui/website/01/#contact">Hire Me</a></li>
											</ul>
										</div>
					                </div>
					</div>
				</div>
				<div class="col-md-6 about-right">
					
				</div>
				<div class="clearfix"> </div>
							<link href="${ctx}/ui/website/01/css/owl.carousel.css" rel="stylesheet">
							    <script src="${ctx}/ui/website/01/js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo1").owlCarousel({
						items : 1,
						lazyLoad : false,
						autoPlay : true,
						navigation : false,
						navigationText :  false,
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
						navigationText :  true,
						pagination :true,
					});
				});
			</script>
			</div>
			<!-- /about -->
			<!-- services -->
			<div id="services" class="services">
				<div class="container">
					<div class="service-head one text-center ">
						<h4>WHAT I DO</h4>
						<h3>MY <span>SERVICES</span></h3>
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
						<h4>Web Design</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-cog"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>Web Design</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-leaf"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>Web Design</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-gift"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>Web Design</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim.</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>

					<!-- services-grids -->
				</div>
			</div>
			<!-- services -->
			<!--work-experience-->
	<div id="work" class="work">
		<div class="container">
			<div class="service-head text-center">
						<h4>WHAT I DID</h4>
						<h3>MY <span>EXPERIENCE</span></h3>
						<span class="border one"></span>
					</div>
					<div class="time-main w3l-agile">
							<div class="col-md-6 year-info">
							   <ul class="year">
								   <li>2016</li>
								   <li>2015</li>
								   <li>2014</li>
								   <li>2013</li>
								   <li>2012</li>
								   <div class="clearfix"></div>
								</ul>
							</div> 
					                        <ul class="col-md-6 timeline">
																<li>
																  <div class="timeline-badge info"><i class="glyphicon glyphicon-briefcase"></i></div>
																  <div class="timeline-panel">
																	<div class="timeline-heading">
																	  <h4 class="timeline-title">COMPANY NAME</h4>
																	</div>
																	<div class="timeline-body">
																	  <p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus </p>
																	</div>
																  </div>
																</li>
																
																<li>
																  <div class="timeline-badge primary"><i class="glyphicon glyphicon-briefcase"></i></div>
																  <div class="timeline-panel">
																	<div class="timeline-heading">
																	  <h4 class="timeline-title">COMPANY NAME</h4>
																	</div>
																	<div class="timeline-body">
																	  <p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus </p>
																	</div>
																  </div>
																</li>
																
																
																
																<li>
																  <div class="timeline-badge danger"><i class="glyphicon glyphicon-briefcase"></i></div>
																  <div class="timeline-panel">
																	<div class="timeline-heading">
																	  <h4 class="timeline-title">COMPANY NAME</h4>
																	</div>
																	<div class="timeline-body">
																	  <p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus </p>
																	</div>
																  </div>
																</li>
																
																<li>
																  <div class="timeline-badge success"><i class="glyphicon glyphicon-briefcase"></i></div>
																  <div class="timeline-panel">
																	<div class="timeline-heading">
																	  <h4 class="timeline-title">COMPANY NAME</h4>
																	</div>
																	<div class="timeline-body">
																	  <p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus </p>
																	</div>
																  </div>
																</li>
																<li>
																  <div class="timeline-badge pass"><i class="glyphicon glyphicon-briefcase"></i></div>
																  <div class="timeline-panel">
																	<div class="timeline-heading">
																	  <h4 class="timeline-title">COMPANY NAME</h4>
																	</div>
																	<div class="timeline-body">
																	  <p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus </p>
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
						<h3>长得<span>太丑了</span></h3>
						<span class="border"></span>
					</div>
			<div class="portfolio-grids">
				<script src="${ctx}/ui/website/01/js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
									$(document).ready(function () {
										$('#horizontalTab').easyResponsiveTabs({
											type: 'default', //Types: default, vertical, accordion           
											width: 'auto', //auto or any width like 600px
											fit: true   // 100% fit in a container
										});
									});
									
				</script>
				<div class="sap_tabs">
					<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						<ul class="resp-tabs-list">
							<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>全部</span></li> 
							<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Boy</span></li> 
							<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Girl</span></li> 				
							<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span>这是什么鬼</span></li> 
						</ul>				  	 
						<div class="resp-tabs-container">
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
								<div class="col-md-3 team-gd ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal1" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/img/a1.jpg" alt="">
										
										</a>
									
								</div>
								
								<div class="col-md-3 team-gd ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal3" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/img/a0.jpg" alt="">
										
										</a>
									
								</div>
								<div class="col-md-3 team-gd ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal2" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic9.jpg" alt="">
										
										</a>
									
								</div>
								<div class="col-md-3 team-gd ">
								
										<a href="${ctx}/ui/website/01/#portfolioModal4" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic6.jpg" alt="">
										
										</a>
									
								</div>
								<div class="col-md-3 team-gd yes_marg ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal5" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic10.jpg" alt="">
										
										</a>
									
								</div>
								<div class="col-md-3 team-gd yes_marg ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal6" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic11.jpg" alt="">
										
										</a>
									
								</div>
								<div class="col-md-3 team-gd yes_marg ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal7" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic13.jpg" alt="">
										
										</a>
								
								</div>
								<div class="col-md-3 team-gd yes_marg ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal8" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic14.jpg" alt="">
										
										</a>
									
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
								<div class="col-md-3 team-gd ">
									<div class="thumb">
										<a href="${ctx}/ui/website/01/#portfolioModal5" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic10.jpg" alt="">
										
										</a>
									</div>
								</div>
								<div class="col-md-3 team-gd  ">
									<div class="thumb">
										<a href="${ctx}/ui/website/01/#portfolioModal6" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic11.jpg" alt="">
										
										</a>
									</div>
								</div>
								<div class="col-md-3 team-gd ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal7" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic13.jpg" alt="">
										
										</a>
									
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
								<div class="col-md-3 team-gd ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal2" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic9.jpg" alt="">
										
										</a>
								
								</div>
								<div class="col-md-3 team-gd ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal4" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic6.jpg" alt="">
										
										</a>
									
								</div>
								<div class="col-md-3 team-gd">
									
										<a href="${ctx}/ui/website/01/#portfolioModal5" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic10.jpg" alt="">
										
										</a>
									
								</div>
								<div class="col-md-3 team-gd">
									
										<a href="${ctx}/ui/website/01/#portfolioModal6" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic11.jpg" alt="">
									
										</a>
									
								</div>
								<div class="clearfix"></div>
							</div>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
								<div class="col-md-3 team-gd ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal5" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic10.jpg" alt="">
										
										</a>
									
								</div>
								<div class="col-md-3 team-gd">
									
										<a href="${ctx}/ui/website/01/#portfolioModal6" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic11.jpg" alt="">
										
										</a>
									
								</div>
								<div class="col-md-3 team-gd ">
									
										<a href="${ctx}/ui/website/01/#portfolioModal7" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="${ctx}/ui/website/01/images/pic13.jpg" alt="">
										
										</a>
									
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	<!-- //portfolio -->
    <!-- top-grids -->
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
				<!-- top-grids -->
	<!-- /blog-pop-->
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
			<!-- //blog-pop-->

			<!-- /header -->
<div class="footer" id="contact">
	<div class="container">
	<div class="service-head one text-center">
						<h4>联系我们</h4>
						<h3>GET <span>IN TOUCH WITH ME</span></h3>
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
							<h4>电话</h4>
							<ul>
								<li>Phone: +152 3029 7756</li>
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
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-6 mail_right">
				<form action="#" method="post">
					<input type="text" name="Name" value="姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '姓名';}" required="">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="text" name="Mobile number" value="电话" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话';}" required="">
					<textarea name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '消息...';}" required="">消息...</textarea>
					<input type="submit" value="提交">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="copy_right text-center">
			<p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="#">stealth.Lee</a></p>
			 <ul class="social-icons two">
							<li><a href="${ctx}/ui/website/01/#"> </a></li>
							<li><a href="${ctx}/ui/website/01/#" class="fb"> </a></li>
							<li><a href="${ctx}/ui/website/01/#" class="in"> </a></li>
							<li><a href="${ctx}/ui/website/01/#" class="dott"> </a></li>
						</ul>
		</div>
	</div>
</div>
			<!-- //footer -->
		<!-- /container -->
		<div class="portfolio-modal modal fade slideanim" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
						<h3>Image-Title</h3>
                        <img src="${ctx}/ui/website/01/images/pic4.jpg" class="img-responsive img-centered" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
						<h3>Image-Title</h3>
                        <img src="${ctx}/ui/website/01/images/pic9.jpg" class="img-responsive img-centered" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
						<h3>Image-Title</h3>
                        <img src="${ctx}/ui/website/01/images/pic5.jpg" class="img-responsive img-centered" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
						<h3>Image-Title</h3>
                        <img src="${ctx}/ui/website/01/images/pic6.jpg" class="img-responsive img-centered" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
						<h3>Image-Title</h3>
                        <img src="${ctx}/ui/website/01/images/pic10.jpg" class="img-responsive img-centered" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
						<h3>Image-Title</h3>
                        <img src="${ctx}/ui/website/01/images/pic11.jpg" class="img-responsive img-centered" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal7" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
						<h3>Image-Title</h3>
                        <img src="${ctx}/ui/website/01/images/pic13.jpg" class="img-responsive img-centered" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal8" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
						<h3>Image-Title</h3>
                        <img src="${ctx}/ui/website/01/images/pic14.jpg" class="img-responsive img-centered" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal9" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			<div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <img src="${ctx}/ui/website/01/images/pic1.jpg" class="img-responsive img-centered" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<a href="${ctx}/ui/website/01/#home" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--start-smooth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
								<!--end-smooth-scrolling-->
<!-- //for bootstrap working -->
	<script src="${ctx}/ui/website/01/js/bootstrap.js"></script>
	

	</body>
</html>

