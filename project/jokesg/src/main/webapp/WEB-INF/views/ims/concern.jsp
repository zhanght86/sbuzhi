<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>我的关注</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="${ctx}/ui/userInfo/css/my.css"></link>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/bootstrap.min.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/font-awesome.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/icon-font.min.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/ui/jquery/pagination/css/pagination.css"/>
<link rel="stylesheet" href="${ctx}/ui/jquery/jBox/jBox.css">
<link rel="stylesheet" href="${ctx}/ui/jquery/jBox/plugins/Notice/jBox.Notice.css">
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	<c:forEach items="${fans }" var="fs">
		<c:if test="${fs.concern}">
			$('#isConcern${fs.id }').text('已关注');
			$("#isConcern${fs.id }").attr("class", "btn btn-success");
		</c:if>
	</c:forEach>
});
</script>
</head>
<body class="sticky-header left-side-collapsed">
	<section>
    <%@include file="/WEB-INF/views/include/menu.jsp" %>
	<div class="main-content">
        <%@include file="/WEB-INF/views/include/top.jsp" %>
	    <div class="info1">
			<div class="a_top">
				<ul class="nav nav-tabs nav-pills">
				  <li><a href="${ctx }/a/index.do">主页</a></li>
				  <li><a href="${ctx }/ims/myFans.do">粉丝</a></li>
				  <li class="active"><a href="${ctx }/ims/myConcern.do">关注</a></li>
				</ul>
			</div>
			<div class="a_tail">
				<div class="a_left">
					<div class="c_top">
						<form action="${ctx }/ims/myFans.do" method="post" id="gg_form_fans">
							<table class="table table-hover ">
								<tr>
									<td>#</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								
								<c:forEach items="${fans }" var="fs" varStatus="status">
									<tr>
										<td class="info">${status.count }</td>
										<td class="warning">名称：${fs.name }</td>
										<td class="success">粉丝：${fs.fansCount }</td>
										<td class="warning">关注:${fs.concernCount }</td>
										<td class="success">账号：${fs.username }</td>
										<td class="success"><button type="button" id="isConcern${fs.id }" class="btn btn-info" onclick="concern('${fs.id}',this);">加关注</button></td>
									</tr>
								</c:forEach>
							</table>
						</form>
					</div>
					<div class="c_tail">
						<div id="gg_user_fans" class="pag"></div>
					</div>
				</div>
				<div class="a_right">
					<div class="b_top">
						<span>个人信息</span>
						<span><a href="${ctx }/ims/info.do">[设置]</a></span>
					</div>
					<div  class="b_tail">
						<img src="..." alt="..." class="img-rounded" width="100px" height="100px">
						<h4>昵称：${user.name }</h4>
						<h4>账号：${user.username }</h4> 
						<h4>粉丝：<a href="${ctx }/ims/myFans.do">${user.fansCount }</a></h4>
						<h4>关注：<a href="${ctx }/ims/myConcern.do">${user.concernCount }</a></h4>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
	<script src="${ctx}/ui/jquery/pagination/js/jquery.pagination.js"></script>
	<script src="${ctx}/ui/jquery/jBox/jBox.js"></script>
<script src="${ctx}/ui/jquery/jBox/plugins/Notice/jBox.Notice.js"></script>
<script src="${ctx}/ui/jquery/jBox/plugins/Confirm/jBox.Confirm.js"></script>
<script src="${ctx}/ui/jquery/jBox/plugins/Image/jBox.Image.js"></script>
	
	<script type="text/javascript">
		function initPagination() {
	        $("#gg_user_fans").pagination('${user.fansCount }', {
	            items_per_page:'${user.paging.pageSize}', 		// 每页显示多少条记录
				current_page:'${user.paging.pageNo - 1}',			// 当前显示第几页数据
				num_display_entries:1,	// 显示几页
				prev_text:"上一页",
				next_text:"下一页",
				num_edge_entries:2,
				showGoInput: true,
				showGoButton: true,
				callback: function(data, pagination) {
					$("#gg_form_fans").attr("action","${ctx }/ims/myFans.do?pageNo="+(data+1));
					$("#gg_form_fans").submit();
				}
	        });
	     }
		$(document).ready(function(){      
		    initPagination();
		});
		
		function concern(val,th){
			$.ajax({
				type:'POST',
				data:'userId='+val,
				url:'${ctx}/ims/fans/concern.do',
				success:function(data){
					if(data == 1){
						$('#isConcern'+val).text('已关注');
						$("#isConcern"+val).attr("class", "btn btn-success");
						pro("提示信息","关注成功");
					} else {
						$('#isConcern'+val).text('加关注');
						$('#isConcern'+val).attr("class", "btn btn-info");
						pro("提示信息","取关成功");
					}
				},
				error:function(){
					pro("提示信息","网络开小差了，操作失败");
				}
			});
		}
		
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