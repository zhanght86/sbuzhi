<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>${jo.name }</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/video/css/my.css">
<link rel='stylesheet' type='text/css' href="${ctx}/ui/video/css/video.css">
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/bootstrap.min.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/font-awesome.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/icon-font.min.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style-register.css"/>
<link rel="stylesheet" href="${ctx}/ui/jquery/jBox/jBox.css">
<link rel="stylesheet" href="${ctx}/ui/jquery/jBox/plugins/Notice/jBox.Notice.css">
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var tp = JSON.parse('${videoType}');
		$.each(tp, function(key, value) {
			if (value == 1) {
				$("#favorite").text("已收藏");
				$("#cfavorite").attr("class", "glyphicon glyphicon-star");
			}
			if (value == 2) {
				$("#zan").text("已点赞");
				$("#czan").attr("class", "glyphicon glyphicon-heart");
			}
		});
		
		var isConcern = JSON.parse('${isConcern}');
		if(isConcern){
			$('#isConcern').text('- 已关注');
		}else{
			$('#isConcern').text('+ 关注');
		}
	});
</script>
<style>

</style>

</head>
<body class="sticky-header left-side-collapsed">
	<section>
    <%@include file="/WEB-INF/views/include/menu.jsp" %>
    <div class="main-content">
        <%@include file="/WEB-INF/views/include/top.jsp" %>
			<div class="info1">
				<div class="main">
					<div class="a_left">
						<h1>
							${jo.name }<a href="#">活动作品</a>
						</h1>
						<div class="tminfo">
							<a href="#">主页</a>&gt; <a href="#">动画</a>&gt; <a href="#">MAD.AMV</a>
							<time>
								<i>${jo.insertDate }</i>
							</time>
						</div>
						<div class="bo">
							<img src="${ctx }/ui/video/img/播放 2.png" alt=""><span>${jo.playAmount }</span>
							<img src="${ctx }/ui/video/img/0.jpg" alt="赞"><span>${zan }</span>
							<img src="${ctx }/ui/video/img/0.jpg" alt="收藏"><span>${like }</span>
						</div>
					</div>
					<!-- 右边 -->
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
								<button id="isConcern" class="gz" onclick="concern('${user.id}',this);">+ 关注</button>
							</div>
						</div>
					</div>
				</div>
				<video width="1100px" height="600px" controls="controls">
					 <source  src="${ctx }/rms/video/videoPlay.do?url=${jo.href}" type="video/mp4">
				</video>
				<div>
					<button type="button" class="btn btn-info btn-lg">
						<span id="pl" class="glyphicon glyphicon-envelope"></span> <span id="pl">评论</span>
					</button>
					<button type="button" value="2" class="btn btn-info btn-lg"
						onclick="zan(this);">
						<span id="czan" class="glyphicon glyphicon-heart-empty"></span> <span
							id="zan">未点赞</span>
					</button>
					<button type="button" value="1" class="btn btn-info btn-lg"
						onclick="favorites(this);">
						<span id="cfavorite" class="glyphicon glyphicon-star-empty"></span>
						<span id="favorite">未收藏</span>
					</button>
					<button type="button" class="btn btn-info btn-lg"
						onclick="reprinted();">
						<span class="glyphicon glyphicon-remove"></span> 未转载
					</button>
				</div>
			</div>
		</div>
	<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		function concern(val,th){
			$.ajax({
				type:'POST',
				data:'userId='+val,
				url:'${ctx}/ims/fans/concern.do',
				success:function(data){
					if(data == 1){
						$(th).text("- 已关注");
						pro("提示信息","关注成功");
					} else {
						$(th).text("+ 关注");
						pro("提示信息","取关成功");
					}
				},
				error:function(){
					pro("提示信息","网络开小差了，操作失败");
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
						$("#zan").text("已点赞");
						$("#czan").attr("class","glyphicon glyphicon-heart");
						pro("提示信息","点赞成功");
					} else {
						$("#zan").text("未点赞");
						$("#czan").attr("class","glyphicon glyphicon-heart-empty");
						pro("提示信息","取消赞");
					}
				},
				error:function(){
					pro("提示信息","点赞失败");
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
						$("#cfavorite").attr("class","glyphicon glyphicon-star");
						pro("提示信息","收藏成功");
					} else {
						$("#favorite").text("未收藏");
						$("#cfavorite").attr("class","glyphicon glyphicon-star-empty");
						pro("提示信息","取消收藏");
					}
				},
				error:function(){
					pro("提示信息","收藏失败");
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
	
<script src="${ctx}/ui/jquery/jBox/jBox.js"></script>
<script src="${ctx}/ui/jquery/jBox/plugins/Notice/jBox.Notice.js"></script>
<script src="${ctx}/ui/jquery/jBox/plugins/Confirm/jBox.Confirm.js"></script>
<script src="${ctx}/ui/jquery/jBox/plugins/Image/jBox.Image.js"></script>
</body>
</html>