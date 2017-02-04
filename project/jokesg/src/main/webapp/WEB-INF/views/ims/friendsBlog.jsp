<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="keywords" content="" />
<title>朋友圈</title>

<link rel="shortcut icon" href="${ctx }/ui/blog/favicon.ico" />
<link rel='stylesheet' type='text/css' href="${ctx }/ui/gg/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="${ctx }/ui/blog/css/reset.css" />
<link rel="stylesheet" type="text/css" href="${ctx }/ui/blog/style.css" />
<link rel="stylesheet" href="${ctx }/ui/blog/nivo/nivo-slider.css" type="text/css" media="screen" />
<link href="${ctx }/ui/blog/css_pirobox/demo5/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
<script src="${ctx }/ui/blog/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="${ctx }/ui/blog/nivo/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="${ctx }/ui/blog/js/cufon-yui.js" type="text/javascript"></script>
<script src="${ctx }/ui/blog/js/Vegur_400-Vegur_700.font.js" type="text/javascript"></script>
<script src="${ctx }/ui/blog/js/jquery_site_enhanced.js" type="text/javascript"></script>	
<script type="text/javascript" src="${ctx }/ui/blog/js/pirobox.min.js"></script>
<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$().piroBox({
      my_speed: 300, //animation speed
      bg_alpha: 0.5, //background opacity
      slideShow : 'true', // true == slideshow on, false == slideshow off
      slideSpeed : 3, //slideshow
      close_all : '.piro_close' // add class .piro_overlay(with comma)if you want overlay click close piroBox
      });
});
</script>

</head>

<body>
<div class="container_xl">
	<div class="top_section">
		<div class="logo"><a href="${ctx }/ui/blog/index.html"><img src="${ctx }/ui/blog/images/logo.png" alt="" /></a></div>
		
		<div class="search_field">
			<div id="search_slide">
				<form action="#" id="search_form" method="post">
					<p><input type="text" name="SearchInput" id="search_input" value="" /></p>
					<p><input type="submit" name="SearchSubmit" id="search_submit" value="" /></p>
				</form>
			</div>
		</div>	
				
		<div class="search_click"></div>
		
		<!-- 菜单 -->
		<div class="menu">
			<ul>
				<li><a href="${ctx }/a/index.do">返回主站</a></li>
				<li><a>主页</a>				
					<ul>
						<li><a href="${ctx }/ui/blog/about.html">相册</a></li>
						<li><a href="${ctx }/ui/blog/#">作品集</a>
							<ul>
								<li><a href="${ctx }/ui/blog/index_v1.html">最新作品</a></li>
								<li><a href="${ctx }/ui/blog/index_v2.html">最热作品</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><a href="${ctx }/ui/blog/blog.html">朋友圈</a></li>
				<li><a href="${ctx }/ui/blog/contact.html">留言板</a></li>
				<li><a>更多</a>
					<ul>
						<li><a href="${ctx }/ui/blog/portfolio2.html">设置</a></li>
						<li><a href="${ctx }/ims/blog.do">返回我的主页</a></li>
					</ul>
				</li>
			</ul>		
		</div>
		<!-- 菜单 End -->
	</div>
	
	<!-- Main wrapper -->
	<div class="main_wrapper_top"></div>
	<div class="main_wrapper">
		<div class="content">
			<!-- 左边 -->
			<div class="content_2_columns_left blog_page">
			    <div class="friends">
			    	<form action="${ctx }/ims/blog/publishDynamic.do" method="post" enctype="multipart/form-data" id="gg_form_addBlog"> 
				    	<div class="m_msg">
							<div class="m_text">
								<a onclick="openFile();">
									<span></span>
									图片
								</a>
							<input type="file" id="file" name="pic"/>
							<input type="text" id="content" name="content" />
								<div class="m_edit" contentEditable="true" id="contentDiv"></div>
							</div>
							<div class="m_pic">
								<img src="${ctx }/ui/blog/images/b.jpg" width="350px" height="220px" alt="女神"/>
							</div>
							<button type="button" class="btn btn-primary btn-xs" onclick="subForm();">发表</button>
						</div>	
			    	</form>
					<div class="b_boxs" id="b_bq"> 
						<ul>
							<li><img src="${ctx }/ui/blog/images/qq/22.gif" alt="" width="22" height="22"/></li>
						</ul>
					</div>
				</div>
				<c:forEach items="${friends }" var="friend">
					<div class="post_wrapper">
						<div class="post_data">			
							<h1>${friend.user.nickname }(${friend.user.username })</h1>
							<h6>消息来自： ${friend.source }</h6><h5>${friend.insertDate }</h5>
						</div>
						<c:if test="${not empty friend.picUrl}">
							<a href="${ctx }/ui/blog/#">
<%-- 								<img src="${ctx }/rms/pic/getPic.do?url=${friend.picUrl}" class="border_magic float_left" alt="图片已被博主删除" />
 --%>							<img src="${ctx }/ui/blog/images/test.jpg" class="border_magic float_left" alt="图片已被博主删除" />
							</a>
						</c:if>
						<p>${friend.content }</p>
						<br>
						<a href="${ctx }/ui/blog/#" class="button">详情...</a>
					</div>
					<div class="post_data">			
					</div>
					<br><br><br>
				</c:forEach>
			</div>
			<!-- 左边Ends -->
			
			<!-- 右边 -->
			<div class="content_2_columns_right">
				<h1>大家都在看</h1>
				<ul>
					<li><a href="${ctx }/ui/blog/#">Palm trees and their healing effects.</a></li>
					<li><a href="${ctx }/ui/blog/#">Blonde turns off the internet..</a></li>
					<li><a href="${ctx }/ui/blog/#">New alcohol from.. olives.</a></li>
					<li><a href="${ctx }/ui/blog/#">Farmer Bill Dies in House.</a></li>
					<li><a href="${ctx }/ui/blog/#">Miners Refuse to Work after Death.</a></li>
					<li><a href="${ctx }/ui/blog/#">It's not rocket appliances.</a></li>
				</ul>
				<a href="${ctx }/ui/blog/#"><img src="${ctx }/ui/blog/images/ads/aj_125x125_v4.gif" class="border_magic thumbs" alt="" /></a>
				<a href="${ctx }/ui/blog/#"><img src="${ctx }/ui/blog/images/ads/cc_125x125_v2.gif" class="border_magic thumbs" alt="" /></a>
				<a href="${ctx }/ui/blog/#"><img src="${ctx }/ui/blog/images/ads/gr_125x125_v2.gif" class="border_magic thumbs" alt="" /></a>
				<a href="${ctx }/ui/blog/#"><img src="${ctx }/ui/blog/images/ads/tf_125x125_v5.gif" class="border_magic thumbs" alt="" /></a>
				<br><br>
				<h2>小故事 <small>- 每日一笑</small></h2>
				<p>上半个月我吃啥狗吃啥，下半个月狗吃啥我吃啥，月底厉害了准备吃狗</p>
				<br>
				<h1>最近访客</h1>
				<ul>
					<c:forEach items="${visitor }" var="vr">
						<li><a href="${ctx }/ims/blog.do?id=${vr.id}">${vr.user.nickname } - ${vr.updateDate }</a></li>
					</c:forEach>
				</ul>
			</div>
			<!-- 右边 Ends -->
		</div>
	</div>
</div>

<!-- Footer -->
<div class="footer_wide">
	<div class="container_xl">
		<div class="footer_wrapper">
			<div class="footer_connect">
			
			</div>
			<!-- Footer Links -->
			<div class="footer_widget">
				<h2>Jokesg</h2>
				<ul>
					<li><a href="${ctx }/ui/blog/index.html">主站</a></li>
					<li><a href="${ctx }/ui/blog/blog.html">企业</a></li>
					<li><a href="${ctx }/ui/blog/about.html">艺术家</a></li>
					<li><a href="${ctx }/ui/blog/portfolio.html">作品</a></li>
					<li><a href="${ctx }/ui/blog/#">联系我们</a></li>
				</ul>
			</div>
			<div class="footer_widget">
				<h2>传送门</h2>
				<ul>
					<li><a href="${ctx }/ui/blog/#">个人信息</a></li>
					<li><a href="${ctx }/ui/blog/#">您的账户 </a></li>
					<li><a href="${ctx }/ui/blog/#">活动中心</a></li>
					<li><a href="${ctx }/ui/blog/#">帮助中心</a></li>
					<li><a href="#">侵权申述地址</a></li>
				</ul>
			</div>
			<div class="footer_widget">
				<h2>支持我们</h2>
				<ul>
		            <li><a href="#">搜索条件</a></li>
		            <li><a href="#">友情链接</a></li>
		            <li><a href="#">联系我们</a></li>
		            <li><a href="#">加入我们</a></li>
		            <li><a href="#">意见反馈</a></li>
				</ul>
			</div>
			<div class="footer_widget">
				<h2>关于我们</h2>
				<ul>
					<li><p class="footer_desc">&nbsp;&nbsp;&nbsp;```爱她就送她一个网站吧，</p></li>
					<li><p class="footer_desc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本网站纯属`虚构`，如有雷同，那就雷同吧。</p></li>
					<li><p class="f_text">Phone: &nbsp;&nbsp;&nbsp;15230297756</p></li>
					<li><p class="f_text">Email : &nbsp;&nbsp;&nbsp;314975605@qq.com</p></li>
				</ul>
			</div>
			<!-- Footer links End -->
		</div>
		
		<div class="credits">
			Copyright &copy; 2016.Author <a href="http://www.blackcoffeen.com/">stealth.Lee</a> All rights reserved.
		</div>
	</div>
</div>
	<script type="text/javascript">
		function subForm(){
			$('#content').val($('#contentDiv').html());
			$('#gg_form_addBlog').submit();
		};
	
		function openFile(){
			var ie = navigator.appName == "Microsoft Internet Explorer" ? true : false;
			if(ie){
				document.getElementById("file").click();
			} else {
				var a = document.createEvent("MouseEvents");
				a.initEvent("click",true,true);
				document.getElementById("file").dispatchEvent(a);
			}
		};
	</script>
</body>
</html>