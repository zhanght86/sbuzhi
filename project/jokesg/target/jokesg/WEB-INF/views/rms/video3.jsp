<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">
    <title>视频播放</title>
    <link rel="stylesheet" href="${ctx}/ui/video3/css/bootstrap.min.css"  type="text/css">
    <link rel="stylesheet" href="${ctx}/ui/video3/css/style.css">
    <link rel="stylesheet" href="${ctx}/ui/video3/css/single.css">
    <link href="${ctx}/ui/video3/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="${ctx}/ui/video3/owl-carousel/owl.theme.css" rel="stylesheet">
    <link rel="stylesheet" href="${ctx}/ui/video3/font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
	<script src="${ctx}/ui/video3/js/jquery-2.1.1.js"></script>
    <script src="${ctx}/ui/video3/js/bootstrap.min.js"></script>
    <%@ include file="/WEB-INF/views/include/pagination.jsp"%>
    <%@ include file="/WEB-INF/views/include/jBox.jsp"%>
    <script type="text/javascript">
		$(document).ready(function() {
			var tp = JSON.parse('${videoType}');
			$.each(tp, function(key, value) {
				if (value == 1) {
					$("#favorite").text("已收藏");
					$("#cfavorite").attr("class", "fa fa-star");
				}
				if (value == 2) {
					$("#zan").text("已赞");
					$("#czan").attr("class", "fa fa-heart");
				}
			});
			
			var isConcern = JSON.parse('${isConcern}');
			if(isConcern){
				$("#isConcern").text("已关注");
				$("#concern").attr("class","fa fa-minus");
			}
		});
	</script>

<style type="text/css">
    
    .media-left,
	.media > .pull-left {
		padding-right: 10px;
	}
	.media-left,
	.media-right,
	.media-body {
		display: table-cell;
		vertical-align: top;
	}
    .a_right {
		width: 302px;
		height:auto;
		float: left;
		position: relative;
	}
		
	.a_right .toxiang img {
		height: 64px;
		width: 64px;
		border-radius: 64px;
		margin: 0 auto;
		float: left;
		border: 2px solid transparent;
	}
	
	.a_right .shen {
		width: 225px;
		height: 90px;
		float: right;
	}
	
	.a_right .shen .usname {
		width: 100%;
		height: 20px;
		line-height: 20px;
	}
	
	.a_right .shen .si {
		float: right;
		width: 54px;
		height: 30px;
		margin-right: 30px;
	}
	
	.a_right .shen .si img {
		height: 30px;
		width: 30px;
	}
	
	.a_right .shen  span.xin {
		font-size: 12px;
		color: #666;
		float: right;
		margin-top: 4px;
	}
	
	.a_right .shen a.h {
	    line-height: 33px;
		font-size: 14px;
		color: #00a1d6;
	}
	
	.a_right .shen .sign {
		color: #333;
		line-height: 20px;
		font-size: 12px;
	}
	
	.a_right .shen .togao {
		line-height: 18px;
		height: 0px;
		margin-bottom: 27px;
		margin-top: 3px;
	}
	
	.a_right .shen .togao p {
		color: #99a2aa;
		display: inline-block;
		width: 100px;
		font-size: 12px;
	}
	
	.a_right .shen .gz {
		height: 22px;
		font-size: 14px;
		line-height: 22px;
		display: inline-block;
		background-color: #00a1d6;
		border: 1px solid #00a1d6;
		width: 138px;
		float: left;
		color: #fff;
		text-align: center;
		border-radius: 4px;
	}

</style>
</head>

<body>
<header>
	<!--Top-->
	<nav id="top">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<strong>Welcome <shiro:principal property="name"/></strong>
				</div>
				<div class="col-md-6 col-sm-6">
					<ul class="list-inline top-link link">
						<li><a href="${ctx}/a/index.do"><i class="fa fa-home"></i> 返回主站</a></li>
						<li><a href="${ctx}/ui/video3/contact.html"><i class="fa fa-comments"></i> 个人空间</a></li>
						<li><a href="${ctx}/ui/video3/#"><i class="fa fa-question-circle"></i> FAQ</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	
	<!--Navigation-->
    <nav id="menu" class="navbar">
		<div class="container">
			<div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
			  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="${ctx}/a/index.do"><i class="fa fa-home"></i> 返回主站</a></li>
					<li class="dropdown"><a href="${ctx}/ui/video3/#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> 我的</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="${ctx}/ui/video3/archive.html">个人空间</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">作品</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">钱包</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li class="dropdown"><a href="${ctx}/ui/video3/#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-play-circle-o"></i> 所有视频</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="${ctx}/ui/video3/archive.html">感动</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">励志</a></li>
								</ul>
							</div> 
						</div>
					</li>
					<li class="dropdown"><a href="${ctx}/ui/video3/#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list"></i> Category</a>
						<div class="dropdown-menu" style="margin-left: -203.625px;">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="${ctx}/ui/video3/archive.html">Text 301</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 302</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 303</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 304</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 305</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="${ctx}/ui/video3/archive.html">Text 306</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 307</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 308</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 309</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 310</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="${ctx}/ui/video3/archive.html">Text 311</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 312</a></li>
									<li><a href="${ctx}/ui/video3/archive.html#">Text 313</a></li>
									<li><a href="${ctx}/ui/video3/archive.html#">Text 314</a></li>
									<li><a href="${ctx}/ui/video3/archive.html">Text 315</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li><a href="${ctx}/ui/video3/archive.html"><i class="fa fa-cubes"></i> 暂定</a></li>
					<li><a href="${ctx}/ui/video3/contact.html"><i class="fa fa-envelope"></i> 消息</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="header-slide">
		<div id="owl-demo" class="owl-carousel">
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>Video's Tag</span>
						<a href="${ctx}/ui/video3/single.html">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>视频名称</p>
					</div>
					<img src="${ctx}/ui/video3/images/2.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>视频标签</span>
						<a href="${ctx}/ui/video3/single.html">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>Video's Name</p>
					</div>
					<img src="${ctx}/ui/video3/images/3.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>Video's Tag</span>
						<a href="${ctx}/ui/video3/single.html">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>Video's Name</p>
					</div>
					<img src="${ctx}/ui/video3/images/4.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>Video's Tag</span>
						<a href="${ctx}/ui/video3/single.html">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>Video's Name</p>
					</div>
					<img src="${ctx}/ui/video3/images/5.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>Video's Tag</span>
						<a href="${ctx}/ui/video3/single.html">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>Video's Name</p>
					</div>
					<img src="${ctx}/ui/video3/images/6.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>Video's Tag</span>
						<a href="${ctx}/ui/video3/single.html">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>Video's Name</p>
					</div>
					<img src="${ctx}/ui/video3/images/7.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>Video's Tag</span>
						<a href="${ctx}/ui/video3/single.html">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>Video's Name</p>
					</div>
					<img src="${ctx}/ui/video3/images/8.jpg" />
				</div>
			</div>
			<div class="item">
				<div class="zoom-container">
					<div class="zoom-caption">
						<span>Video's Tag</span>
						<a href="${ctx}/ui/video3/single.html">
							<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
						</a>
						<p>Video's Name</p>
					</div>
					<img src="${ctx}/ui/video3/images/9.jpg" />
				</div>
			</div>
		</div>
	</div>
</header>
<!-- Header -->
	
	<!-- /////////////////////////////////////////Content -->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div id="main-content" class="col-md-8">
					<div class="wrap-vid">
						<iframe width="100%" height="400" src="${ctx }/rms/video/video.do?url=${jo.href}" ></iframe>
					</div>
					<div class="share">
						<ul class="list-inline center">
							<li>
								<button value="2" class="btn btn-facebook" onclick="zan(this);">
									<i id="czan" class="fa fa-heart-o"></i> <span id="zan">点赞</span>
								</button>
							</li>
							<li>
								<button value="1" class="btn btn-twitter" onclick="favorites(this);">
									<i id="cfavorite" class="fa fa-star-o"></i><span id="favorite">收藏</span>
								</button>
							</li>
							<li>
								<button class="btn btn-google"><i class="fa fa-rmb"></i>打赏</button>
							</li>
							<li>
								<button class="btn btn-pinterest"><i class="fa fa-mail-forward"></i>转发</button>
							</li>
						</ul>
					</div>
					<div class="line"></div>
					<h1 class="vid-name"><a href="${ctx}/ui/video3/#">${jo.name }</a></h1>
					<div class="info">
						<h5>By <a href="${ctx }/ims/blog.do?id=${user.id}" class="h">${user.name }</a></h5>
						<span><i class="fa fa-calendar"></i>${jo.insertDate }</span> 
						<span><i class="fa fa-heart"></i>${zan }</span>
						<span><i class="fa fa-star"></i>${like }</span>
						<span><i class="fa fa-film"></i>${jo.playAmount }</span>
					</div>
					<p style="margin-top: 20px">${jo.remarks } </p>
					<h4>Heading</h4>
					<p style="margin-top: 20px">Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.</p>
					<div class="vid-tags">
						<a href="${ctx}/ui/video3/#">Animal</a>
						<a href="${ctx}/ui/video3/#">Aenean</a>
						<a href="${ctx}/ui/video3/#">Feugiat</a>
						<a href="${ctx}/ui/video3/#">Risus</a>
						<a href="${ctx}/ui/video3/#">Magna</a>
					</div>
					<div class="line"></div>
					
					<!-- 评论 -->
					<div class="comment">
						<h3>吐槽该视频</h3>
						<form name="form1" id="content">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<input type="hidden" name="jokesgId" value="${jo.id }"/>
										<textarea name="content" id="content" class="form-control" rows="4" cols="25" required="required"
										placeholder="内容"></textarea>
									</div>						
									<button type="button" class="btn btn-4 btn-block" onclick="comment();">点击吐槽</button>
								</div>
							</div>
						</form>
					</div>
					
					<div class="media-grids" id="gg_div_comment">
						<c:forEach items="${comments }" var="comment">
							<div class="media">
								<h5><a href="#">${comment.user.nickname }</a></h5>
								<div class="media-left">
									<a href="#">
										<img src="${ctx}/ui/video3/images/user.jpg" title="One movies" alt=" " />
									</a>
								</div>
								<div class="media-body">
									<p>${comment.content }</p>
									<span>Time by :<a href="#"> ${comment.insertDate } </a></span>
								</div>
							</div>
						</c:forEach>
						<div id="gg_video3_pagination" class="pag"></div>
					</div>
					<!-- 评论End -->
					
					<div class="line"></div>
					<div class="box">
						<div class="box-header">
							<h2><i class="fa fa-globe"></i> 相关视频</h2>
						</div>
						<div class="box-content">
							<div class="row">
								<div class="col-md-4">
									<div class="wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span>Video's Tag</span>
												<a href="${ctx}/ui/video3/single.html">
													<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
												</a>
												<p>Video's Name</p>
											</div>
											<img src="${ctx}/ui/video3/images/7.jpg" />
										</div>
										<h3 class="vid-name"><a href="${ctx}/ui/video3/#">Video's Name</a></h3>
										<div class="info">
											<h5>By <a href="${ctx}/ui/video3/#">Kelvin</a></h5>
											<span><i class="fa fa-calendar"></i>25/3/2015</span> 
											<span><i class="fa fa-heart"></i>1,200</span>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span>Video's Tag</span>
												<a href="${ctx}/ui/video3/single.html">
													<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
												</a>
												<p>Video's Name</p>
											</div>
											<img src="${ctx}/ui/video3/images/8.jpg" />
										</div>
										<h3 class="vid-name"><a href="${ctx}/ui/video3/#">Video's Name</a></h3>
										<div class="info">
											<h5>By <a href="${ctx}/ui/video3/#">Kelvin</a></h5>
											<span><i class="fa fa-calendar"></i>25/3/2015</span> 
											<span><i class="fa fa-heart"></i>1,200</span>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="wrap-vid">
										<div class="zoom-container">
											<div class="zoom-caption">
												<span>Video's Tag</span>
												<a href="${ctx}/ui/video3/single.html">
													<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
												</a>
												<p>Video's Name</p>
											</div>
											<img src="${ctx}/ui/video3/images/9.jpg" />
										</div>
										<h3 class="vid-name"><a href="${ctx}/ui/video3/#">Video's Name</a></h3>
										<div class="info">
											<h5>By <a href="${ctx}/ui/video3/#">Kelvin</a></h5>
											<span><i class="fa fa-calendar"></i>25/3/2015</span> 
											<span><i class="fa fa-heart"></i>1,200</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			
				<div id="sidebar" class="col-md-4">
					<!---- Start Widget ---->
					<div class="widget wid-follow">
						<div class="heading"><h4><i class="fa fa-users"></i> 作者信息</h4></div>
						<div class="content">
							<div class="a_right">
								<div class="toxiang">
									<a href="${ctx }/ims/blog.do?id=${user.id}"><img src="${ctx }/ui/video/img/toxiang.webp" alt=""></a>
								</div>
								<div class="shen">
									<div class="usname">
										<a href="${ctx }/ims/blog.do?id=${user.id}" class="h">${user.name }</a> 
										<a href="" class="si"> 
											<img src="${ctx }/ui/video/img/私信.png" alt="信"> 
											<span class="xin">私信</span>
										</a>
										<div class="sign">
											${user.remarks }
										</div>
										<div class="togao">
											<p>关注: ${fans.concernCount }</p>
											<p>粉丝: ${fans.fansCount }</p>
										</div>
										<button class="gz" onclick="concern('${user.id}',this);">
											<i id="concern" class="fa fa-plus"></i>  <span id="isConcern">关注</span>
										</button>
									</div>
								</div>
							</div> 
							<img src="${ctx}/ui/video3/images/banner.jpg" />
						</div>
						<div class="line"></div>
					</div>
					<!---- Start Widget ---->
					<div class="widget wid-post">
						<div class="heading"><h4><i class="fa fa-globe"></i> 精彩推荐</h4></div>
						<div class="content">
							<div class="post wrap-vid">
								<div class="zoom-container">
									<div class="zoom-caption">
										<span>Video's Tag</span>
										<a href="${ctx}/ui/video3/single.html">
											<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
										</a>
										<p>Video's Name</p>
									</div>
									<img src="${ctx}/ui/video3/images/7.jpg" />
								</div>
								<div class="wrapper">
									<h5 class="vid-name"><a href="${ctx}/ui/video3/#">Video's Name</a></h5>
									<div class="info">
										<h6>By <a href="${ctx}/ui/video3/#">Kelvin</a></h6>
										<span><i class="fa fa-calendar"></i>25/3/2015</span> 
										<span><i class="fa fa-heart"></i>1,200</span>
									</div>
								</div>
							</div>
							<div class="post wrap-vid">
								<div class="zoom-container">
											<div class="zoom-caption">
												<span>Video's Tag</span>
												<a href="${ctx}/ui/video3/single.html">
													<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
												</a>
												<p>Video's Name</p>
											</div>
											<img src="${ctx}/ui/video3/images/8.jpg" />
										</div>
								<div class="wrapper">
									<h5 class="vid-name"><a href="${ctx}/ui/video3/#">Video's Name</a></h5>
									<div class="info">
										<h6>By <a href="${ctx}/ui/video3/#">Kelvin</a></h6>
										<span><i class="fa fa-calendar"></i>25/3/2015</span> 
										<span><i class="fa fa-heart"></i>1,200</span>
									</div>
								</div>
							</div>
							<div class="post wrap-vid">
								<div class="zoom-container">
									<div class="zoom-caption">
										<span>Video's Tag</span>
										<a href="${ctx}/ui/video3/single.html">
											<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
										</a>
										<p>Video's Name</p>
									</div>
									<img src="${ctx}/ui/video3/images/9.jpg" />
								</div>
								<div class="wrapper">
									<h5 class="vid-name"><a href="${ctx}/ui/video3/#">Video's Name</a></h5>
									<div class="info">
										<h6>By <a href="${ctx}/ui/video3/#">Kelvin</a></h6>
										<span><i class="fa fa-calendar"></i>25/3/2015</span> 
										<span><i class="fa fa-heart"></i>1,200</span>
									</div>
								</div>
							</div>
						</div>
						<div class="line"></div>
					</div>
					<!---- Start Widget ---->
					<div class="widget wid-news">
						<div class="heading"><h4><i class="fa fa-clock-o"></i> 上周最火视频  Top 3</h4></div>
						<div class="content">
							<div class="wrap-vid">
								<div class="zoom-container">
									<div class="zoom-caption">
										<span>Video's Tag</span>
										<a href="${ctx}/ui/video3/single.html">
											<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
										</a>
										<p>Video's Name</p>
									</div>
									<img src="${ctx}/ui/video3/images/3.jpg" />
								</div>
								<h3 class="vid-name"><a href="${ctx}/ui/video3/#">Video's Name</a></h3>
								<div class="info">
									<h5>By <a href="${ctx}/ui/video3/#">Kelvin</a></h5>
									<span><i class="fa fa-calendar"></i>25/3/2015</span> 
									<span><i class="fa fa-heart"></i>1,200</span>
								</div>
							</div>
							<div class="wrap-vid">
								<div class="zoom-container">
									<div class="zoom-caption">
										<span>Video's Tag</span>
										<a href="${ctx}/ui/video3/single.html">
											<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
										</a>
										<p>Video's Name</p>
									</div>
									<img src="${ctx}/ui/video3/images/4.jpg" />
								</div>
								<h3 class="vid-name"><a href="${ctx}/ui/video3/#">Video's Name</a></h3>
								<div class="info">
									<h5>By <a href="${ctx}/ui/video3/#">Kelvin</a></h5>
									<span><i class="fa fa-calendar"></i>25/3/2015</span> 
									<span><i class="fa fa-heart"></i>1,200</span>
								</div>
							</div>
							<div class="wrap-vid">
								<div class="zoom-container">
									<div class="zoom-caption">
										<span>Video's Tag</span>
										<a href="${ctx}/ui/video3/single.html">
											<i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
										</a>
										<p>Video's Name</p>
									</div>
									<img src="${ctx}/ui/video3/images/5.jpg" />
								</div>
								<h3 class="vid-name"><a href="${ctx}/ui/video3/#">Video's Name</a></h3>
								<div class="info">
									<h5>By <a href="${ctx}/ui/video3/#">Kelvin</a></h5>
									<span><i class="fa fa-calendar"></i>25/3/2015</span> 
									<span><i class="fa fa-heart"></i>1,200</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="top-footer">
			<ul class="footer-social list-inline">
				<li><a href="${ctx}/ui/video3/#"><i class="fa fa-twitter"></i> <span>Twitter</span></a></li>
				<li><a href="${ctx}/ui/video3/#"><i class="fa fa-facebook"></i> <span>Facebook</span></a></li>
				<li><a href="${ctx}/ui/video3/#"><i class="fa fa-google-plus"></i> <span>Google+</span></a></li>
				<li><a href="${ctx}/ui/video3/#"><i class="fa fa-youtube"></i> <span>Video's Tag</span></a></li>
				<li><a href="${ctx}/ui/video3/#"><i class="fa fa-vimeo-square"></i> <span>Vimeo</span></a></li>
				<li><a href="${ctx}/ui/video3/#"><i class="fa fa-pinterest"></i> <span>Pinterest</span></a></li>
				<li><a href="${ctx}/ui/video3/#"><i class="fa fa-rss"></i> <span>Rss</span></a></li>
			</ul>  
		</div>
		<div class="wrap-footer">
			<div class="container">
				<div class="row"> 
					<aside class="col-footer col-md-3">
						<h2 class="footer-title">关于我们</h2>
						<div class="textwidget">
							地址：北京市昌平区<br>
							联系人：stealth.Lee<br>
							邮箱：314975605@qq.com<br>
							电话：15230297756<br><br>
							此网站所有权属作者stealth.Lee所有！任何人不得用作商业用途！<br> <br> 
							版权所有，禁止抄袭，违者必究！！！<br> <br> 
						</div>
					</aside> 
					<aside class="col-footer col-md-3 widget_recent_entries">
						<h2 class="footer-title">传送门</h2>
						<ul>
							<li><a href="${ctx}/ui/video3/#">返回主站</a></li>
							<li><a href="${ctx}/ui/video3/#">个人空间</a></li>
							<li><a href="${ctx}/ui/video3/#">我的钱包</a></li>
							<li><a href="${ctx}/ui/video3/#">所有视频</a></li>
						</ul>
					</aside>
					<aside class="col-footer col-md-3">
						<h2 class="footer-title">意见征集</h2>
						您的意见对我们非常重要，虽然一定不会采纳。但是还是请您留下宝贵的意见！
						<form action="#" method="post">
							<input type="text" name="your-name" value="" size="40" placeholder="意见" />
							<input type="submit" value="提交" class="btn btn-3" />
						</form>
					</aside>
					<aside class="col-footer col-md-3 wptt_TwitterTweets">
						<h2 class="footer-title">其它</h2>
						<ul class="fetched_tweets light">
							<li class="tweets_avatar">
								<div class="tweet_wrap">
									<div class="wdtf-user-card ltr">
										<div class="clear"></div>
									</div>
									<div class="tweet_data"> 
										实在是不知道写点什么东西了 ，随便编点把！什么？把字错了 ？呵呵，我就喜欢这个把怎么了 ，不服你来咬我啊。这是我的网站，我喜欢写哪个把字就写哪个把！你能奈我何？
									</div> <br/>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</li>
							<li class="tweets_avatar">
								<div class="tweet_wrap">
									<div class="tweet_data"> 
										兄弟，跟你开个玩笑，何必这么当真的，为了表示我的歉意，送你一份礼物，礼物的链接就在下面！<br>
										<a href="http://314975605.qzone.qq.com">iphone6</a>
									</div> <br/>
									<div class="clear"></div>
								</div>
								<div class="clear"></div>
							</li>
						</ul>
					</aside>
				</div>
			</div>
		</div>
		<div class="bottom-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 copyright">
    					<p>Copyright &copy; 2016.Author <a href="http://www.blackcoffeen.com/">stealth.Lee</a> All rights reserved.</p>
					</div>
					<div class="col-md-6 col-sm-6 link">
						<div class="menu-footer-menu-container">
							<ul id="menu-footer-menu" class="menu list-inline">
								<li><a href="${ctx}/ui/video3/#"><i class="fa fa-home"></i> 返回主站</a></li>
								<li><a href="${ctx}/ui/video3/#"><i class="fa fa-comments"></i> 个人空间</a></li>
								<li><a href="${ctx}/ui/video3/#"><i class="fa fa-question-circle"></i> FAQ</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div> 
	</footer>
	<!-- Footer -->
	
	<!-- JS -->
	<script src="${ctx}/ui/video3/owl-carousel/owl.carousel.js"></script>
    <script>
	    $(document).ready(function() {
	      $("#owl-demo").owlCarousel({
	        autoPlay: 3000,
	        items : 5,
	        itemsDesktop : [1199,4],
	        itemsDesktopSmall : [979,4]
	      });
	      initPagination();
	    });
	    function initPagination() {
            $("#gg_video3_pagination").pagination('${paging.total}', {
                items_per_page:'${paging.pageSize}', 	// 每页显示多少条记录
				current_page:'${paging.pageNo - 1}',	// 页码
				num_display_entries:'5',	// 显示几页
				prev_text:"上一页",
				next_text:"下一页",
				num_edge_entries:2,
				showGoInput: true,
				showGoButton: true,
				callback: function(data, pagination) {
					$.ajax({
						type:'POST',
						data:'pageNo=' + (data+1) + '&id=${jo.id}',
						url:'${ctx}/rms/video/getVideo.do',
						success:function(data){
							
						},
						error:function(){
							pro("操作失败","网络开小差了，请稍后再试");
						}
					});
				}
            });
         }
    </script>
    <script type="text/javascript">
	    function comment(){
			$.ajax({
				type:'POST',
				data:$('#content').serialize(),
				url:'${ctx}/rms/video/comment.do',
				success:function(data){
					alert(JSON.stringify(data));
					if(data != null && data != ""){
						/* $('#gg_div_comment').append("<p>aaaa</p>"); */
						pro("提示信息","吐槽成功");
					}else{
						pro("提示信息","游客没有权限吐槽哦，请登录后吐槽");
					}
				},
				error:function(data){
					pro("操作失败","网络开小差了，请稍后再试");
				}
			});
		}
    	
		function concern(val,th){
			$.ajax({
				type:'POST',
				data:'userId='+val,
				url:'${ctx}/ims/fans/concern.do',
				success:function(data){
					if(data == 1){
						$("#isConcern").text("已关注");
						$("#concern").attr("class","fa fa-minus");
						pro("提示信息","关注成功");
					} else {
						$("#isConcern").text("关注");
						$("#concern").attr("class","fa fa-plus");
						pro("提示信息","取关成功");
					}
				},
				error:function(){
					pro("操作失败","网络开小差了，请稍后再试");
				}
			});
		}
	
		function zan(val){
			$.ajax({
				type:'POST',
				data:'type='+val.value+'&jokesgId=${jo.id}',
				url:'${ctx}/rms/favorites.do',
				success:function(data){
					if(data == 1){
						$("#zan").text("已赞");
						$("#czan").attr("class","fa fa-heart");
						pro("提示信息","点赞成功");
					} else {
						$("#zan").text("点赞");
						$("#czan").attr("class","fa fa-heart-o");
						pro("提示信息","取消赞");
					}
				},
				error:function(){
					pro("操作失败","网络开小差了，请稍后再试");
				}
			});
		};
		
		function favorites(val){
			$.ajax({
				type:'POST',
				data:'type='+val.value+'&jokesgId=${jo.id}',
				url:'${ctx}/rms/favorites.do',
				success:function(data){
					if(data == 1){
						$("#favorite").text("已收藏");
						$("#cfavorite").attr("class","fa fa-star");
						pro("提示信息","收藏成功");
					} else {
						$("#favorite").text("收藏");
						$("#cfavorite").attr("class","fa fa-star-o");
						pro("提示信息","取消收藏");
					}
				},
				error:function(){
					pro("操作失败","网络开小差了，请稍后再试");
				}
			});
		};
		
		function pro(tit,cont) {
			new jBox('Notice', {
				attributes : {
					x : 'right',
					y : 'bottom'
				},
				stack : false,
				animation : {
					open : 'tada',
					close : 'zoomIn'
				},
				color : getColor(),
				title : tit,
				content : cont
			});
		};

		var colors = [ 'red', 'green', 'blue', 'yellow' ], index = 0;
		var getColor = function() {
			(index >= colors.length) && (index = 0);
			return colors[index++];
		};
		
	</script>
</body>
</html>
