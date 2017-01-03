<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>我的作品</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel='stylesheet' type='text/css'
	href="${ctx}/ui/video/css/video.css">
<link rel='stylesheet' type='text/css'
	href="${ctx}/ui/gg/css/bootstrap.min.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css" />
<link rel='stylesheet' type='text/css'
	href="${ctx}/ui/gg/css/font-awesome.css" />
<link rel='stylesheet' type='text/css'
	href="${ctx}/ui/gg/css/icon-font.min.css" />
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
<link href="${ctx}/ui/gg/css/popuo-box.css" rel="stylesheet"
	type="text/css" media="all">
</head>
<body class="sticky-header left-side-collapsed">
	<section>
		<%@include file="/WEB-INF/views/include/menu.jsp"%>
		<div class="main-content">
			<%@include file="/WEB-INF/views/include/top.jsp"%>
			<script src="${ctx}/ui/gg/js/jquery.magnific-popup.js"
				type="text/javascript"></script>
			<script>
				$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
						type : 'inline',
						fixedContentPos : false,
						fixedBgPos : true,
						overflowY : 'auto',
						closeBtnInside : true,
						preloader : false,
						midClick : true,
						removalDelay : 300,
						mainClass : 'my-mfp-zoom-in'
					});
				});
				
				function newWindow(v){
					$('#myIf').attr('src','${ctx }/rms/my/getVideoInfo.do?id='+v);
				}

			</script>
			<div class="albums info1">
				<div class="tittle-head">
					<h3 class="tittle">
						我的<span class="new">作品</span>
					</h3>
					<div class="clearfix"></div>
				</div>
				<c:forEach items="${Jokesg }" var="fo">
					<div class="col-md-3  content-grid last-grid">
						<a href="${ctx }/rms/video/getVideo.do?id=${fo.id}"> <img
							src="${ctx }/rms/pic/getPic.do?url=${fo.picUrl}"
							alt="${fo.name }" title="allbum-name" width="300" height="200">
						</a> <a class="button play-icon popup-with-zoom-anim"
							href="#small-dialog" onclick="newWindow('${fo.id}');">${fo.name }</a>
					</div>
				</c:forEach>
				<div id="small-dialog" class="mfp-hide">
					<iframe id="myIf" src=""></iframe>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
</body>
</html>