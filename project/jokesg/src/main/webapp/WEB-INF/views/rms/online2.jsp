<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>在线视频</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Play Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- bootstrap -->
<link href="${ctx}/ui/online/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' media="all" />
<!-- //bootstrap -->
<link href="${ctx}/ui/online/css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="${ctx}/ui/online/css/style.css" rel='stylesheet'
	type='text/css' media="all" />
<script src="${ctx}/ui/online/js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<link
	href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
<!-- //fonts -->
</head>
<body>
	<!-- 顶部 -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${ctx}/ui/online/index.html"><img
					src="${ctx}/ui/online/images/logo.png" alt="" /></a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<div class="top-search">
					<form class="navbar-form navbar-right" action="${ctx }/rms/iqiy.do" method="post">
						<input type="text" class="form-control" name="word" placeholder="搜索...">
						<input type="submit" value=" ">
					</form>
				</div>
				<div class="header-top-right">
					<div class="file">
						<a href="${ctx}/ui/online/upload.html">上传视频</a>
					</div>
					<div class="signin">
						<a href="#" class="play-icon popup-with-zoom-anim">我的钱包</a>
					</div>
					<div class="signin">
						<a href="#" class="play-icon popup-with-zoom-anim">个人空间</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</nav>
	<!-- 顶部End -->

	<!-- 菜单 -->
	<div class="col-sm-3 col-md-2 sidebar">
		<div class="top-navigation">
			<div class="t-menu">MENU</div>
			<div class="t-img">
				<img src="${ctx}/ui/online/images/lines.png" alt="" />
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="drop-navigation drop-navigation">
			<ul class="nav nav-sidebar">
				<li><a href="${ctx}/a/index.do" class="home-icon">
						<span class="glyphicon glyphicon-home"></span>返回主站
				</a></li>

				<li class="active"><a href="${ctx}/ui/online/shows.html"
					class="user-icon menu2"> <span
						class="glyphicon glyphicon-home glyphicon-blackboard"></span>电视剧
				</a></li>

				<li><a href="#" class="menu1"> <span
						class="glyphicon glyphicon-film"></span>电影
				</a></li>
				<li><a href="${ctx}/ui/online/history.html" class="sub-icon">
						<span class="glyphicon glyphicon-home glyphicon-hourglass"></span>综艺
				</a></li>

				<li><a href="#" class="menu"> <span
						class="glyphicon glyphicon-film glyphicon-king"></span>动漫
				</a></li>

				<li><a href="${ctx}/ui/online/movies.html" class="song-icon">
						<span class="glyphicon glyphicon-music"></span>音乐
				</a></li>
				<li><a href="${ctx}/ui/online/news.html" class="news-icon">
						<span class="glyphicon glyphicon-envelope"></span>其它
				</a></li>
			</ul>
			<div class="side-bottom">
				<div class="side-bottom-icons">
					<ul class="nav2">
						<li><a href="${ctx}/ui/online/#" class="facebook"> </a></li>
						<li><a href="${ctx}/ui/online/#" class="facebook twitter"></a></li>
						<li><a href="${ctx}/ui/online/#" class="facebook chrome"></a></li>
						<li><a href="${ctx}/ui/online/#" class="facebook dribbble"></a></li>
					</ul>
				</div>
				<div class="copyright">
					<p>
						Copyright &copy; 2016.Author <a
							href="http://www.blackcoffeen.com/">stealth.Lee</a> All rights
						reserved.
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- 菜单End-->

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<div class="main-grids">
			<div class="top-grids">
				<div class="recommended-info">
					<h3>Recent Videos</h3>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="recommended">
				<div class="recommended-grids english-grid">
					<div class="recommended-info">
						<div class="heading">
							<h3>搜索结果</h3>
						</div>
						<div class="clearfix"></div>
					</div>
					<c:forEach items="${albums }" var="album">
						<div class="col-md-3 resent-grid recommended-grid movie-video-grid">
							<div class="resent-grid-img recommended-grid-img">
								<a href="${album.url }"><img src="${album.picUrl }" alt="" /></a>
								<div class="time small-time show-time movie-time">
									<p>共${album.cnt}集</p>
								</div>
								<div class="clck movie-clock">
									<span class="glyphicon glyphicon-time" ></span>
								</div>
							</div>
							<div
								class="resent-grid-info recommended-grid-info recommended-grid-movie-info">
								<h5>
									<a href="${album.url }" class="title">${album.remarks }</a>
								</h5>
								<ul>
									<li><p class="author author-info">
											<a href="#" class="author">John Maniya</a>
										</p></li>
									<li class="right-list"><p class="views views-info">评分: ${album.score }</p></li>
								</ul>
							</div>
						</div>
					</c:forEach>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>

		<!-- footer -->
		<div class="footer">
			<div class="footer-grids">
				<div class="footer-top">
					<div class="footer-top-nav">
						<ul>
							<li><a href="${ctx}/ui/online/about.html">About</a></li>
							<li><a href="${ctx}/ui/online/press.html">Press</a></li>
							<li><a href="${ctx}/ui/online/copyright.html">Copyright</a></li>
							<li><a href="${ctx}/ui/online/creators.html">Creators</a></li>
							<li><a href="${ctx}/ui/online/#">Advertise</a></li>
							<li><a href="${ctx}/ui/online/developers.html">Developers</a></li>
						</ul>
					</div>
					<div class="footer-bottom-nav">
						<ul>
							<li><a href="${ctx}/ui/online/terms.html">Terms</a></li>
							<li><a href="${ctx}/ui/online/privacy.html">Privacy</a></li>
							<li><a href="${ctx}/ui/online/#small-dialog4"
								class="play-icon popup-with-zoom-anim">Send feedback</a></li>
							<li><a href="${ctx}/ui/online/privacy.html">Policy 
									Safety </a></li>
							<li><a href="${ctx}/ui/online/try.html">Try something
									new!</a></li>
						</ul>
					</div>
				</div>
				<div class="footer-bottom">
					<ul>
						<li class="languages"><select
							class="form-control bfh-countries" data-country="US">
								<option value="">选择语言</option>
								<option>English</option>
								<option>简体中文</option>
								<option>German</option>
						</select></li>
						<li class="languages"><select
							class="form-control bfh-countries">
								<option value="">选择国家</option>
								<option value="AFG">Afghanistan</option>
								<option value="KIR">Kiribati</option>
								<option value="PRK">Korea, Democratic People's Republic
									of</option>
								<option value="KOR">Korea, Republic of</option>
								<option value="KWT">Kuwait</option>
								<option value="ZWE">Zimbabwe</option>
						</select></li>
						<li class="languages"><select
							class="form-control bfh-countries" data-country="US">
								<option value="">Safety Off</option>
								<option value="">Safety On</option>
						</select></li>
						<li><a href="${ctx}/ui/online/history.html" class="f-history">历史</a></li>
						<li><a href="${ctx}/ui/online/#small-dialog5"
							class="play-icon popup-with-zoom-anim f-history f-help">帮助</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //footer -->
	</div>
	<div class="clearfix"></div>
	<script src="${ctx}/ui/online/js/bootstrap.min.js"></script>
</body>
</html>