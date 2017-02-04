<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="李建章，java软件开发工程师，个人网站，stealth.Lee，">
    <meta name="Description" content="">
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no" />

    <link rel="shortcut icon" href="" />
    <link href="${ctx}/ui/website/ws/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${ctx}/ui/website/ws/css/bootstrap-select.min.css">
    <link href="${ctx}/ui/website/ws/css/font-awesome.min.css" rel="stylesheet" />
    <link href="${ctx}/ui/website/ws/css/animsition.min.css" rel="stylesheet" />
    <link href="${ctx}/ui/website/ws/css/et-line-font.css" rel="stylesheet" />
    <link href="${ctx}/ui/website/ws/css/fontawesome-iconpicker.min.css" rel="stylesheet" />
    <link href="${ctx}/ui/website/ws/css/magnific-popup.css" rel="stylesheet" />
    <link href="${ctx}/ui/website/ws/css/menu-responsive.css" rel="stylesheet" />
    <link rel='stylesheet' id='woocommerce_prettyPhoto_css-css' href='${ctx}/ui/website/ws/css/prettyPhoto.css' type='text/css' media='all' />
    <link rel="stylesheet" href="${ctx}/ui/website/ws/css/nouislider.min.css">
    <link href="${ctx}/ui/website/ws/css/styles.css" rel="stylesheet" />
    <link href="${ctx}/ui/website/ws/css/yura.css" rel="stylesheet" />
    <title><shiro:principal property="name"/>的个人网站</title>
</head>

<body>

    <div id="loading">
        <div id="loading-center">
            <div id="loading-center-absolute">
                <img src="${ctx}/ui/website/ws/img/preloader_10.gif">
            </div>
        </div>
    </div>

    <!-- MAIN -->
    <div class="popup-search-wrapper">
        <form method="get" class="search-form" action="#">
            <label>
                <span class="screen-reader-text">找人:</span>
                <input type="search" class="search-field" placeholder="昵称、ID">
            </label>
            <input type="submit" class="search-submit" value="搜索">
        </form>
    </div>
	
	<header class="hawa-main-header sticky-header animsition hawa-show-menu dark">
    <div class="container">
        <div class="row">
            <div class="col-md-12 top-header">
                <div class="hawa-logo">
                    <a href="${ctx}/ui/website/ws/home-main.html">Hawa</a>
                </div>
                <div class="hawa-navigation width-nav">
                    <!-- SITE MENU -->
                    <nav>
                        <ul class="main-menu white-submenu">
                            <li class="menu-item current-menu-ancestor mega-menu"><a href="${ctx}/ui/website/ws/index.html"><i class="fa fa-user"></i>个人中心</a></li>
                            <li class="menu-item"><a href="${ctx}/ui/website/ws/Pages.html"><i class="fa fa-users"></i>好友</a></li>
                            <li class="menu-item"><a href="${ctx}/ws/ums/dress.do"><i class="fa fa-pencil"></i>装扮</a></li>
                            <li class="menu-item mega-menu"><a href="#"><i class="fa fa-comments"></i>消息</a></li>
                            <li class="menu-item"><a href="#"><i class="fa fa-edit"></i>留言板</a></li>
                            <li class="menu-item hawa-cart-btn"><a href="${ctx}/ui/website/ws/"><i class="cs-icon fa fa-male"></i>欢迎你 - <shiro:principal property="name"/></a></li>
                            <li class="menu-item"><a href="${ctx}/ui/website/ws/"><i class="fa fa-sign-out"></i>退出</a></li>
                            <li class="menu-item"><a href="${ctx}/ui/website/ws/shop.html"><i class="fa fa-cog"></i>设置</a></li>
                            <li class="menu-item hawa-search-btn"><a href="${ctx}/ui/website/ws/#"><i class="fa fa-search"></i></a></li>
                        </ul>
                    </nav>
                    <div class="hawa-nav-menu-icon">
                        <span></span>
                    </div>
                    <!-- END SITE MENU -->
                </div>
            </div>
        </div>
    </div>
</header>

		

<!-- 顶部五张图片 -->
<div class="row">
	<div class="col-sm-12">
		<div class="hawa-slider">
			<div class="swiper-container" data-autoplay="0" data-touch="0" data-mouse="0" data-slides-per-view="responsive" data-sm-slides="1" data-xs-slides="1" data-lg-slides="1" data-md-slides="1" data-loop="0" data-speed="500" data-mode="horizontal">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="hawa-banner home-page text-center buttons-modern">
							<img src="${ctx}/ui/website/ws/img/Untitled-1.jpg" alt="" class="img-simple s-img-switch">
							<div class="content col-md-12">
								<div class="titles">
									<h2 class="title">欢迎来访</h2>
									<div class="text">这里也是自定义文字.....</div>
								</div>
								<div class="buttons-buttom">
									<a href="#" class="black">没用的按钮</a>
									<a href="#" class="white">没用的按钮</a>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="hawa-banner home-page text-center buttons-modern">
								<img src="${ctx}/ui/website/ws/img/Untitled-4-8.jpg" alt="" class="img-simple s-img-switch">
							<div class="content col-md-12">
								<div class="titles">
									<h2 class="title">CREATIVE<br>STUDIO</h2>
									<div class="text">Design &amp; Technology Studio based in Australia</div>
								</div>
								<div class="buttons-buttom">
									<a href="#" class="black">按钮一</a>
									<a href="#" class="white">按钮二</a>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="hawa-banner home-page text-center buttons-modern">
								<img src="${ctx}/ui/website/ws/img/Untitled-3-10.jpg" alt="" class="img-simple s-img-switch">
							<div class="content col-md-12">
								<div class="titles">
									<h2 class="title">CREATIVE<br>STUDIO</h2>
									<div class="text">Design &amp; Technology Studio based in Australia</div>
								</div>
								<div class="buttons-buttom">
									<a href="#" class="black">按钮一</a>
									<a href="#" class="white">按钮二</a>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="hawa-banner home-page text-center buttons-modern">
								<img src="${ctx}/ui/website/ws/img/Untitled-2-9.jpg" alt="" class="img-simple s-img-switch">
							<div class="content col-md-12">
								<div class="titles">
									<h2 class="title">CREATIVE<br>STUDIO</h2>
									<div class="text">Design &amp; Technology Studio based in Australia</div>
								</div>
								<div class="buttons-buttom">
									<a href="#" class="black">按钮一</a>
									<a href="#" class="white">按钮二</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="slide-prev"></div>
				<div class="slide-next"></div>
				<div class="pagination style-numbers on_slides light"></div>
			</div>
		</div>
	</div>
</div>
<!-- End 顶部五张图片 -->

<div class="black-bg">
	<div class="container">
		<div class="row pt-md-50 pb-md-50 pt-sm-35 pb-sm-35 pt-xs-20 pb-xs-20">
			<div class="col-sm-12 col-lg-4 col-md-4  mt-md-50 mb-md-40 mt-sm-30 mb-sm-10 mt-xs-10 mb-xs-10 pt-md-5 pt-sm-5 pt-xs-5">
				<div class="hawa-text-block ">
					<h4 class="title text-right" >李建章</h4>
					<div class="devider enable text-right"></div>
				</div>
			</div>
			<div class="col-sm-1 col-has-fill "></div>
			<div class="col-sm-12 col-lg-7 col-md-7 mt-md-50 mb-md-40 mt-sm-20 mb-sm-30 mt-xs-10 mb-xs-10">
				<div class="hawa-text-block mb-md-20 pt-md-35 no-man">
					<h3 class=" text-left">一个帅气与智慧并存的男人，我的人生格言是:</h3>
				</div>
				<div class="hawa-text-block ">
					<div class="text-light text-left">The people who are crazy enough to think they can change the world are the ones who do!</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-sm-12 col-lg-6 col-md-12 no-padd">
		<div class="vc_custom_1464010458626">
			<div class="vc_empty_space">
				<span class="vc_empty_space_inner"></span>
			</div>
		</div>
	</div>
	<div class="col-sm-12 col-lg-6 col-md-12 f9-bg">
		<div class="row">
			<div class="col-sm-6 border-right-gray no-padd">
				<div class="hawa-icon-text clearfix icon-top text-center border-bottom-gray dark">
					<div class="icon"><i class="icon-adjustments"></i></div>
					<div class="hawa-icon-content">
						<div class="title">
							<h4>理想</h4>
						</div>
						<div class="devider enable"></div>
						<div class="content">
							1.周游世界<br>
							2.成为世界上最牛掰的程序员<br>
							3.世界和平！
						</div>
					</div>
				</div>
				<div class="hawa-icon-text clearfix icon-top text-center border-bottom-gray dark">
					<div class="icon"><i class="icon-video"></i></div>
					<div class="hawa-icon-content">
						<div class="title">
							<h4>爱好</h4>
						</div>
						<div class="devider enable"></div>
						<div class="content">
							coding!<br>
							coding!<br>
							还是coding!<br>
							重要的事情说三遍
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 no-padd">
				<div class="hawa-icon-text clearfix icon-top text-center border-bottom-gray dark">
					<div class="icon"><i class="icon-chat"></i></div>
					<div class="hawa-icon-content">
						<div class="title">
							<h4>爱情</h4>
						</div>
						<div class="devider enable"></div>
						<div class="content">
							我想找一个<br>
							女朋友<br>
							谁做我女朋友，我把这个网站送给她！\(^o^)/~
						</div>
					</div>
				</div>
				<div class="hawa-icon-text clearfix icon-top text-center border-bottom-gray dark">
					<div class="icon"><i class="icon-tools"></i></div>
					<div class="hawa-icon-content">
						<div class="title">
							<h4>联系方式</h4>
						</div>
						<div class="devider enable"></div>
						<div class="content">
							没有， <br>
							不给， <br>
							略略略！ <br> 
							不服来打我啊。
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
	
		<!-- Hawa Projects -->
<div class="col-sm-12 mt-md-50 mb-md-10 mt-sm-40 mb-sm-10 mt-xs-20 mb-xs-10 pt-md-40 pt-sm-10 pt-xs-10">
	<div class="hawa-text-block">
		<h2 class="title text-center">这里是该模块的标题</h2>
		<div class="devider enable text-center"></div>
		<div class="text-light text-center">
			<p></p>
			<h6>这里是该模块的子标题</h6>
			<p></p>
		</div>
	</div>
	<div class="izotope-container hawa-portfolio">
		<div class="row">
			<div class="col-md-12">
				<ul class="filters hawa-portfolio-filter  text-center">
					<li class="filter-item">
						<button class="but activbut" data-filter="*">全部</button>
					</li>
					<li class="filter-item">
						<button class="but" data-filter=".branding">品牌</button>
					</li>
					<li class="filter-item">
						<button class="but" data-filter=".photography">摄影</button>
					</li>
					<li class="filter-item">
						<button class="but" data-filter=".print">印刷</button>
					</li>
					<li class="filter-item">
						<button class="but" data-filter=".websites">网站</button>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="row hawa-portfolio-content pc popup-gallery hawa_masonry">
			<div class="portfolio-item pi col-sm-6 col-md-3 branding col-no-padd">
				<img src="${ctx}/ui/website/ws/img/Untitled-1-6.jpg" class="bg-responsive-img item-img" alt="Untitled-1">
				<div class="layer">
					<a href="${ctx}/ui/website/ws/sleek-modern.html" class="animsition-link " data-effect="zoomIn">
						<span class="icon-item icon-attachment"></span>
						<h4 class="item-title">文字内容</h4>
						<h4 class="item-category">品牌</h4>
					</a>
				</div>
			</div>
			<div class="portfolio-item pi col-sm-6 col-md-3 photography websites col-no-padd">
				<img src="${ctx}/ui/website/ws/img/Untitled-13-3.jpg" class="bg-responsive-img item-img" alt="Untitled-13">
				<div class="layer">
					<a href="${ctx}/ui/website/ws/sleek-modern.html" class="animsition-link " data-effect="zoomIn">
						<span class="icon-item icon-attachment"></span>
						<h4 class="item-title">Sleek modern</h4>
						<h4 class="item-category">PHOTOGRAPHY, WEBSITES</h4>
					</a>
				</div>
			</div>
			<div class="portfolio-item pi col-sm-6 col-md-3 websites col-no-padd">
				<img src="${ctx}/ui/website/ws/img/Untitled-14-3.jpg" class="bg-responsive-img item-img" alt="Untitled-14">
				<div class="layer">
					<a href="${ctx}/ui/website/ws/sleek-modern.html" class="animsition-link " data-effect="zoomIn">
						<span class="icon-item icon-attachment"></span>
						<h4 class="item-title">Sleek modern</h4>	
						<h4 class="item-category">WEBSITES</h4>
					</a>
				</div>
			</div>
			<div class="portfolio-item pi  col-sm-6 col-md-3 websites col-no-padd">
				<img src="${ctx}/ui/website/ws/img/Untitled-16.jpg" class="bg-responsive-img item-img" alt="Untitled-16">
				<div class="layer">
					<a href="${ctx}/ui/website/ws/sleek-modern.html" class="animsition-link " data-effect="zoomIn">
						<span class="icon-item icon-attachment"></span>
						<h4 class="item-title">Sleek modern</h4>
						<h4 class="item-category">WEBSITES</h4>
					</a>
				</div>
			</div>
			<div class="portfolio-item pi  col-sm-6 col-md-3 photography print col-no-padd">
				<img src="${ctx}/ui/website/ws/img/Untitled-12-5.jpg" class="bg-responsive-img item-img" alt="Untitled-12">
				<div class="layer">
					<a href="${ctx}/ui/website/ws/sleek-modern.html" class="animsition-link " data-effect="zoomIn">
						<span class="icon-item icon-attachment"></span>
						<h4 class="item-title">Sleek modern</h4>
						<h4 class="item-category">PHOTOGRAPHY, PRINT</h4>
					</a>
				</div>
			</div>
			<div class="portfolio-item pi  col-sm-6 col-md-3 branding websites col-no-padd">
				<img src="${ctx}/ui/website/ws/img/Untitled-15-2.jpg" class="bg-responsive-img item-img wp-post-image" alt="Untitled-15">
				<div class="layer">
					<a href="${ctx}/ui/website/ws/sleek-modern.html" class="animsition-link " data-effect="zoomIn">
						<span class="icon-item icon-attachment"></span>
						<h4 class="item-title">Sleek modern</h4>
						<h4 class="item-category">品牌, WEBSITES</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
</div><div class="clearfix"></div>
<!-- End Hawa Projects -->

<!-- Projects Button -->
<div class="row text-center mb-md-10 mb-sm-10 mb-xs-10 pt-md-50 pb-md-50 pt-sm-30 pb-sm-30 pt-xs-30 pb-xs-30">
	<div class="col-sm-12">
		<div class="hawa-button dark big button-modern">
			<a href="${ctx}/ui/website/ws/portfolio-grid-masonry-gutter-3-col.html" class="black">查看全部</a>
		</div>
	</div>
</div>
<!-- End Projects Button -->
	


<!-- Change is... -->
<div class="bg-one clearfix">
	<div class="container">
		<div class="row pt-md-40 pb-md-50 pt-sm-30 pb-sm-40 pt-xs-20 pb-xs-30">
			<div class="col-sm-12 pb-md-30 pb-sm-10 pt-md-55">
				<div class="hawa-text-block">
					<h2 class="title text-center">我的人生格言是<br><u>The people who are crazy enough to think they can change the world are the ones who do</u></h2>
					<div class="devider enable text-center"></div>
				</div>
				<div class="hawa-testimonials text-center">
					<div class="content">只要疯狂到认为自己能改变世界的人，<br>才能真正改变世界</div>
					<img src="${ctx}/ui/website/ws/img/Untitled-1.png" class="signature-img" alt="">
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Change is... -->
 
<!-- Workflow -->
<div class="bg-two">
	<div class="container">
		<div class="row pt-md-20 pb-md-50 pt-sm-20 pb-sm-40 pt-xs-10 pb-xs-30">
			<div class="col-sm-12  mt-md-50 mb-md-50 mt-sm-20 mb-sm-20 mt-xs-20 mb-xs-20 pt-md-45 pb-md-50 pb-sm-10 pb-xs-5">
				<div class="hawa-text-block">
					<h4 class="title text-center">个人简历</h4>
					<div class="devider enable text-center"></div>
				</div>
				<div class="hawa-testimonials text-center">
					<div class="content">Java web开发工程师，没有工作经验，没有专业技能，但是人长得帅！</div>
				</div>
				<div class="hawa-process clearfix  hawa-4-items">
					<div class="hawa-process-item">
						<div class="media">
							
							<i class="icon-pencil"></i>
							
						</div>
						<div class="title">01. 专业技能</div>
						<div class="subtitle">My professional skills</div>
						<div class="devider"></div>
						<div class="text"><p>熟练使用ssm、JFinal框架</p><p>熟练使用JQuery、ajax等</p><p>熟练AngularJs、bootstrap前端框架</p><p>其它技能不多说，请自行发现</p></div>
					</div>
					<div class="hawa-process-item">
						<div class="media">
							
							<i class="icon-lightbulb"></i>
							
						</div>
						<div class="title">02. 项目经验</div>
						<div class="subtitle">Project experience</div>
						<div class="devider"></div>
						<div class="text"><p>金立影音app后台管理系统</p> 本帅哥主要负责视频app后台管理系统的编码及测试，音乐app后台管理系统的完善修改BUG。并提供两款app公共接口。部署并上线项目 </div>
					</div>
					<div class="hawa-process-item">
						<div class="media">
							
							<i class="icon-pencil"></i>
							
						</div>
						<div class="title">03. 工作经验</div>
						<div class="subtitle">Hands-on background</div>
						<div class="devider"></div>
						<div class="text">目前就职于北京金立通信设备有限公司，合约期至2017-02-16日。对，忘了说了，我主要的做的是java web开发</div>
					</div>
					<div class="hawa-process-item">
						<div class="media">
							
							<i class="icon-hotairballoon"></i>
							
						</div>
						<div class="title">04. 联系方式</div>
						<div class="subtitle">Contact information</div>
						<div class="devider"></div>
						<div class="text"><p>QQ：314975605</p>  <p>Phone:15230297756</p>  <p>E-mail:314975605@qq.com</p></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Workflow -->

<!-- See how... -->
<div class="bg-f9f9f9 ov-hidden">
	<div class="container">
		<div class="row pt-md-50 pt-sm-15 pt-xs-20">
			<div class="col-sm-12 col-lg-6 col-md-12 mt-md-30 mb-md-50 mt-sm-20 mb-sm-20 mt-xs-10 mb-xs-10 pt-md-50 pt-sm-40 pt-xs-20">
				<div class="hawa-video-banner text-left text-style-dark simple background-disable">
					<div class="video-overlay s-back-switch"></div>
					<iframe class="video-iframe" src="${ctx}/ui/website/ws/about:blank"></iframe>
					<div class="video-content">
						<h3 class="video-title">See how the whole design works as an experience.</h3>
						<div class="devider"></div>
						<div class="video-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>
						<div class="video-info-btn">
							<a class="video-btn icon icon-Play" href=""></a>
							<span class="info-btn-subtitle">stealth.Lee</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 hidden-md hidden-sm hidden-xs mt-md-50 mt-sm-40 mt-xs-20">
				<div class="single_image absolute-image">		
						<img width="924" height="673" src="${ctx}/ui/website/ws/img/Untitled-cs.png" class="vc_single_image-img attachment-full" alt="Untitled-cs">
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End See how... -->

<!-- Who we are -->
<div class="container">
	<div class="row pb-md-50 pt-sm-10 pb-sm-35 pt-xs-10 pb-xs-5">
		<div class="col-sm-12 col-lg-6 col-md-6 mt-md-50 mt-sm-35 mt-xs-25 pt-md-30">
			<div class="hawa-text-block ">
				<h4 class="title text-left">我们团队</h4>
				<div class="devider enable text-left"></div>
			</div>
		</div>
		<div class="col-sm-12 col-lg-6 col-md-5 mt-md-50 mt-sm-5 mt-xs-5 pt-md-30 pt-sm-10 pt-xs-5">
			<div class="hawa-text-block ">
				<h6 class="title text-center">"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus." - Dieter Rams</h6>
			</div>
		</div>
	</div>
</div>
<!-- End Who we are -->

<!-- Who we are people -->
<div class="container">
	<div class="row pb-md-50 pb-sm-40 pb-xs-5">
		<div class="col-sm-12  mt-md-10 mt-sm-10 mb-sm-20 mb-xs-5 pb-md-50 pb-sm-30 pb-xs-5">
			<div class="hawa-slider view-3-slides">
				<div class="swiper-container" data-autoplay="0" data-touch="0" data-mouse="0" data-slides-per-view="responsive" data-sm-slides="1" data-xs-slides="1" data-lg-slides="3" data-md-slides="3" data-loop="0" data-speed="500" data-mode="horizontal">
				<div class="swiper-wrapper">
					<div class="swiper-slide" data-val="0">
						<div class="hawa-team modern  modern text-center">
							<div class="wrapper">
								<img src="${ctx}/ui/website/ws/img/Untitled-1-8.jpg" alt="">
								<div class="hover">
									<div class="title">stealth Lee.</div>
									<div class="text">不得不承认我是一个帅哥，<br>
									我问电扇我丑不丑，结果电扇摇了一晚上的头 </div>
									<div class="team-share hide">
										<a href="${ctx}/ui/website/ws/#" class="fa fa-facebook"></a>
										<a href="${ctx}/ui/website/ws/#" class="fa fa-twitter"></a>
										<a href="${ctx}/ui/website/ws/#" class="fa fa-linkedin"></a>
									</div>
								</div>
							</div>
							<div class="name">QQ：314975605</div>
							<div class="position">WX：wx-ljz6666</div>
						</div>
					</div>
					<div class="swiper-slide" data-val="1">
						<div class="hawa-team modern  modern text-center">
							<div class="wrapper">
								<img src="${ctx}/ui/website/ws/img/Untitled-12-6.jpg" alt="">
								<div class="hover">
									<div class="title">什么？</div>
									<div class="text">为什么这三个歪果仁下面都是我的联系方式？<br>
									说好的团队呢？<br>
									说好的歪果牛掰程序员呢？</div>
									<div class="team-share hide">
										<a href="#" class="fa fa-facebook"></a>
										<a href="#" class="fa fa-twitter"></a>
										<a href="#" class="fa fa-linkedin"></a>
									</div>
								</div>
							</div>
							<div class="name">QQ：314975605</div>
							<div class="position">WX：wx-ljz6666</div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="hawa-team modern modern text-center">
							<div class="wrapper">
								<img src="${ctx}/ui/website/ws/img/Untitled-13-4.jpg" alt="">
								<div class="hover">
									<div class="title">我很真诚的回答你</div>
									<div class="text">
									因为.............................<br>
									懂了吗？据说傻瓜都看不懂。</div>
									<div class="team-share hide">
										<a href="${ctx}/ui/website/ws/#" class="fa fa-facebook"></a>
										<a href="${ctx}/ui/website/ws/#" class="fa fa-twitter"></a>
										<a href="${ctx}/ui/website/ws/#" class="fa fa-linkedin"></a>
									</div>
								</div>
							</div>
							<div class="name">QQ：314975605</div>
							<div class="position">WX：wx-ljz6666</div>
						</div>
					</div>
				</div>
					<div class="pagination style-numbers under_slides dark"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Who we are people -->

<!-- 日记 -->
<div class="bg-four">
<div class="container">
<div class="row pt-md-100 pb-md-60 pt-sm-40 pb-sm-40 pt-xs-30 pb-xs-30">
	<div class="col-sm-12  mt-md-25 mb-md-50 mt-sm-15 mb-sm-40 mt-xs-10 mb-xs-30">
		<div class="hawa-text-block clients-say">
			<h4 class="title text-center">日记</h4>
			<div class="devider enable text-center"></div>
		</div>
		<div class="hawa-slider view-2-slides">
			<div class="swiper-container" data-autoplay="0" data-touch="0" data-mouse="0" data-slides-per-view="responsive" data-sm-slides="1" data-xs-slides="1" data-lg-slides="2" data-md-slides="2" data-loop="0" data-speed="500" data-mode="horizontal">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<div class="hawa-testimonials text-left  light">
							<i class="testimonials-icon icon-quote size-big"></i>
							<div class="content">为什么本帅哥到现在还没有女朋友？</div>
							<div class="author-title style-inline">
								<h2 class="author">2017-01-09</h2>
								<span>stealth.Lee</span>
							</div>
							<div class="devider line"></div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="hawa-testimonials text-left  light">
							<i class="testimonials-icon icon-quote size-big"></i>
							<div class="content">"和QQ上的一女网友聊得非常开，不过从来没视频聊天过，只是互相发短信。一天，她终于饥渴难耐约我开房了。刚见面我都震惊了！她说：“臭小子怎么是你？你对得起你老婆吗？”我说：“我错了！丈母娘。"</div>
							<div class="author-title style-inline">
								<h2 class="author">2017-01-09</h2>
								<span>stealth.Lee</span>
							</div>
							<div class="devider line"></div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="hawa-testimonials text-left  light">
							<i class="testimonials-icon icon-quote size-big"></i>
							<div class="content">"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."<br></div>
							<div class="author-title style-inline">
								<h2 class="author">2017-01-09</h2>
								<span>stealth.Lee</span>
							</div>
							<div class="devider line"></div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="hawa-testimonials text-left  light">
							<i class="testimonials-icon icon-quote size-big"></i>
							<div class="content">"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."</div>
							<div class="author-title style-inline">
								<h2 class="author">2017-01-09</h2>
								<span>stealth.Lee</span>
							</div>
							<div class="devider line"></div>
						</div>
					</div>
					<div class="swiper-slide">
						<div class="hawa-testimonials text-left  light">
							<i class="testimonials-icon icon-quote size-big"></i>
							<div class="content">"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</div>
							<div class="author-title style-inline">
								<h2 class="author">2017-01-09</h2>
								<span>stealth.Lee</span>
							</div>
							<div class="devider line"></div>
						</div>
					</div>
				</div>
				<div class="pagination hide style-points on_slides light"></div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
<!-- End 日记 -->

<!-- Index Services -->
<div class="row pt-md-25 pb-md-25">
	<div class="col-sm-12 mt-md-25">
		<div class="hawa-clients  inline border-enable row">
			<div class="clients-item col-md-2 col-sm-4 col-xs-12">
				<img class="service-icon" src="${ctx}/ui/website/ws/img/Untitled-2.png" alt="">
			</div>
			<div class="clients-item col-md-2 col-sm-4 col-xs-12">
				<img class="service-icon" src="${ctx}/ui/website/ws/img/Untitled-22.png" alt="">
			</div>
			<div class="clients-item col-md-2 col-sm-4 col-xs-12">
				<img class="service-icon" src="${ctx}/ui/website/ws/img/Untitled-23.png" alt="">
			</div>
			<div class="clients-item col-md-2 col-sm-4 col-xs-12">
				<img class="service-icon" src="${ctx}/ui/website/ws/img/Untitled-24.png" alt="">
			</div>
			<div class="clients-item col-md-2 col-sm-4 col-xs-12">
				<img class="service-icon" src="${ctx}/ui/website/ws/img/Untitled-25.png" alt="">
			</div>
			<div class="clients-item col-md-2 col-sm-4 col-xs-12">
				<img class="service-icon" src="${ctx}/ui/website/ws/img/Untitled-26.png" alt="">
			</div>
		</div>
	</div>
</div>
<!-- End Index Services -->

<!-- Our Journal -->
        <div class="bg-five" id="op-blog">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 mt-md-75 mb-md-15 mt-sm-65 mb-sm-15 mt-xs-45 pt-md-20">   
                        <div class="hawa-posts">
                            <h3 class="blog-title text-center">朋友圈</h3>         
                            <div class="row hawa-blog-content">             
                                <div class="portfolio-item col-sm-4">
                                    <img width="370" height="265" src="${ctx}/ui/website/ws/img/Untitled-21.jpg" class="bg-responsive-img item-img wp-post-image" alt="Untitled-21">                 
                                    <div class="post-info">
                                        <div class="post-date">
                                          	  2017/01/09                      
                                        </div>
                                        <div class="post-category">
                                            <a href="${ctx}/ui/website/ws/post-cat.html" rel="category tag">stealth.Lee</a>  
                                        </div>
                                    </div>
                                    <a href="${ctx}/ui/website/ws/img-post.html">
                                        <h4 class="post-title">没有标题的朋友圈不叫朋友圈</h4>   
                                    </a>
                                    <div class="post-content">
                                      	这是内容
                                    </div>
                                </div>
                                
                                <div class="portfolio-item col-sm-4">
                                    <img width="370" height="265" src="${ctx}/ui/website/ws/img/Untitled-23.jpg" class="bg-responsive-img item-img" alt="Untitled-23">                 
                                    <div class="post-info">
                                        <div class="post-date">
                                            2017/01/09  
                                        </div>
                                        <div class="post-category">
                                            <a href="${ctx}/ui/website/ws/post-cat.html" rel="category tag">Graphic Design</a>                        
                                        </div>
                                    </div>
                                    <a href="${ctx}/ui/website/ws/slider-post.html">
                                        <h4 class="post-title">How Drones Are Being Used to Help Stop Poaching</h4>                 
                                    </a>
                                    <div class="post-content">
                                       penatibus et magnis dis parturient montes, nascetur ridiculus mus....                    
                                    </div>
                                </div>
                                
                                <div class="portfolio-item col-sm-4">
                                    <img width="370" height="265" src="${ctx}/ui/website/ws/img/Untitled-24.jpg" class="bg-responsive-img item-img wp-post-image" alt="Untitled-24">                 
                                    <div class="post-info">
                                        <div class="post-date">
                                           2017/01/09  
                                        </div>
                                        <div class="post-category">
                                            <a href="${ctx}/ui/website/ws/post-cat.html" rel="category tag">Web Design</a>    
                                        </div>
                                    </div>
                                    <a href="${ctx}/ui/website/ws/video-post.html">
                                        <h4 class="post-title">Six Flashes in the Rain by Joe McNally</h4>                  
                                    </a>
                                    <div class="post-content">
                                   	 penatibus et magnis dis parturient montes, nascetur ridiculus mus.... 
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                </div>
            </div>

            <div class="row pb-md-50 pb-sm-35 pb-xs-25">
                <div class="text-center col-sm-12 mb-md-30 mb-sm-20 mb-xs-20 pb-md-50 pb-sm-35 pb-xs-25">
                    <div class="hawa-button dark big button-modern">
                        <a href="${ctx}/ui/website/ws/blog-no-sidebar.html" class="black">查看所有</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Our Journal-->

<!-- Have a project... -->
<div class="bg-six">
	<div class="container">
		<div class="row pt-md-45 pb-md-40 pt-sm-40 pb-sm-40 pt-xs-30 pb-xs-30">
			<div class="col-sm-9  mt-md-10 mb-md-10">
				<div class="hawa-text-block start-project">
					<h4 class="title text-left">是否也想要一个高大上的个人网站？</h4>
				</div>
			</div>
			<div class="col-sm-3 mt-md-10 mb-md-10">
				<div class="hawa-button light big button-modern">
					<a href="${ctx}/ui/website/ws/contact.html" class="black">立即拥有</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Have a project... -->

<!-- Footer-->
<footer class="main-footer hawa-light-footer" data-src="${ctx}/ui/website/ws/img/footer-bg.jpg">
        <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer-widget widget Info_Widget">
                            <h3 class="title"><a href="${ctx}/ui/website/ws/home-main.html">关于我们</a></h3>
                            <p class="hawa-lines"></p>
                            <div class="hawa-info">
                                <p class="text">站长是一个帅哥，站长是一个帅哥，站长是一个帅哥，站长是一个帅哥，站长是一个帅哥，站长是一个帅哥，站长是一个帅哥，站长是一个帅哥，站长是一个帅哥，站长是一个帅哥，站长是一个帅哥，站长是一个帅哥</p>
                                <ul class="social-info">
                                    <li><a href="${ctx}/ui/website/ws/#" class="fa fa-facebook"></a></li>
                                    <li><a href="${ctx}/ui/website/ws/#" class="fa fa-twitter"></a></li>
                                    <li><a href="${ctx}/ui/website/ws/#" class="fa fa-dribbble"></a></li>
                                    <li><a href="${ctx}/ui/website/ws/#" class="fa fa-pinterest-p"></a></li>
                                    <li><a href="${ctx}/ui/website/ws/#" class="fa fa-behance"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer-widget widget widget_instagram_widget">
                            <h3 class="title">Follow@Instagram</h3>
                            <p class="hawa-lines"></p>
                            <div class="hawa-instagram">
                                <figure>
                                    <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?BDLVhrHhEiP" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-1.jpg" alt="bodotheme"></a>
                                </figure>
                                <figure>
                                    <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?BDLVWH3BEhz" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-2.jpg" alt="bodotheme"></a>
                                </figure>
                                <figure>
                                    <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?8zxzXrhEpF" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-3.jpg" alt="bodotheme"></a>
                                </figure>
                                <figure>
                                <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?8zxwxthEpA" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-4.jpg" alt="bodotheme"></a>
                                </figure>
                                <figure>
                                <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?8zxt4PBEo7" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-5.jpg" alt="bodotheme"></a>
                                </figure>
                                <figure>
                                    <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?8zxrVWBEo4" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-6.jpg" alt="bodotheme"></a>
                                </figure>
                                <figure>
                                    <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?5Ub1dpBEtg" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-7.jpg" alt="bodotheme"></a>
                                </figure>
                                <figure>
                                    <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?5UbzdoBEtd" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-8.jpg" alt="bodotheme"></a>
                                </figure>
                                <figure>
                                    <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?5Ubxl5BEtW" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-9.jpg" alt="bodotheme"></a>
                                </figure>
                                <figure>
                                    <a href="${ctx}/ui/website/ws/http://sc.chinaz.com/?5Ubv3JhEtS" target="_blank"><img src="${ctx}/ui/website/ws/img/footer-img/footer-10.jpg" alt="bodotheme"></a>
                                </figure>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer-widget widget widget_mc4wp_form_widget">
                            <h3 class="title">建议采集</h3>
                            <p class="hawa-lines"></p>
						<form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-243"
							method="post" data-id="243" data-name="">
							<div class="mc4wp-form-fields">
								<p class="caption-form">您的建议对我们来说非常重要，请留下您宝贵的建议！一经采纳，更有丰厚的礼品。</p>
								<p class="group-input">
									<input type="email" class="email-input" name="EMAIL"
										placeholder="建议..." required=""> <input type="submit"
										class="btn-submit" value="发送">
								</p>
								<div class="hide">
									<input type="text" name="_mc4wp_honeypot" value=""
										tabindex="-1" autocomplete="off">
								</div>
								<input type="hidden" name="_mc4wp_timestamp" value="1470238226">
								<input type="hidden" name="_mc4wp_form_id" value="243">
								<input type="hidden" name="_mc4wp_form_element_id"
									value="mc4wp-form-1">
							</div>
							<div class="mc4wp-response"></div>
						</form>
					</div>
                </div>
            </div>
            
            <!-- 底部 -->
            <div class="row">
                <div class="col-md-12">
                    <div class="footer-copy">
                    Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="#">stealth.Lee</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="scroll-top"></div>
</footer>
<!-- End Footer-->


    <script src="${ctx}/ui/website/ws/js/jquery-1.12.4.js"></script>
    <!---<script type="text/javascript" src="${ctx}/ui/website/ws/https://ditu.google.cn/maps/api/js?key=AIzaSyC4q9VF6dr_pBb4WauIG8SDmg45ROTNlh4"></script>--->
    <script src="${ctx}/ui/website/ws/js/bootstrap.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/bootstrap-select.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/fontawesome-iconpicker.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/idangerous.swiper.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/isotope.pkgd.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/jquery.animsition.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/jquery.classycountdown.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/jquery.countTo.js"></script>
    <script src="${ctx}/ui/website/ws/js/jquery.dlmenu.js"></script>
    <script src="${ctx}/ui/website/ws/js/jquery.fitvids.js"></script>
    <script src="${ctx}/ui/website/ws/js/jquery.knob.js"></script>
    <script src="${ctx}/ui/website/ws/js/jquery.magnific-popup.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/jquery.malihu.PageScroll2id.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/masonry.pkgd.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/prodSlider.js"></script>
    <script src='${ctx}/ui/website/ws/js/jquery.prettyPhoto.min.js'></script>
    <script src="${ctx}/ui/website/ws/js/wNumb.js"></script>
    <script src="${ctx}/ui/website/ws/js/nouislider.min.js"></script>
    <script src="${ctx}/ui/website/ws/js/all.js"></script>
	
	<script type="text/javascript">
		
		function al1(){
			alert("啊，好疼，求别点");
		};
		
		function al2(){
			alert("点 点 点 ，点你妹啊点，都说了别点了，还点！");
		};
		
		function al3(){
			alert("功能正在开发中，请勿急躁");
		};
	
	</script>
</body>

</html>
