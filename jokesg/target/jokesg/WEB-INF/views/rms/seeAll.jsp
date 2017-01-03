<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>最新视频</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/bootstrap.min.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/font-awesome.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/icon-font.min.css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/ui/jquery/pagination/css/pagination.css"/>
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
<style type="text/css">
	a.art{
	    white-space: nowrap;
    	text-overflow: ellipsis;	
	}
	.n_tail{
		height:70px;
		border: 1px solid gainsboro;
		
	}
</style>
</head>
<body class="sticky-header left-side-collapsed">
	<section>
    <%@include file="/WEB-INF/views/include/menu.jsp" %>
		<div class="main-content">
			<%@include file="/WEB-INF/views/include/top.jsp"%>
			<div class="browse">
				<div class="tittle-head two">
					<h3 class="tittle">
						全部<span class="new">New</span>
					</h3>
					<div class="clearfix"></div>
				</div>
				<div class="bs-example bs-example-tabs" data-example-id="togglable-tabs">
					<!-- 菜单分类 -->
					<ul id="myTab" class="nav nav-tabs">
						<c:forEach items="${mcs }" var="mc">
							<li>
								<a href="${ctx }/rms/seeAll.do?menuId=${mc.id}">${mc.name }</a>
							</li>
						</c:forEach>
					</ul>
					<!-- 菜单分类 End-->
					
					<!-- 视频 -->
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade active in" id="home">
							<div class="browse-inner">
								<form action="${ctx }/rms/seeAll.do" method="post" id="gg_form_newest">
									<input type="hidden" name="menuId" value="${menuId }">
									<c:forEach items="${videos }" var="video">
										<div class="col-md-3 artist-grid">
											<a href="single.html">
												<img src="${ctx}/ui/gg/images/a3.jpg" title="allbum-name">
											</a> 
											<a href="single.html">
												<i class="glyphicon glyphicon-play-circle"></i>
											</a> 
											<a class="art" href="single.html" >
												${video.name }
											</a>
										</div>
									</c:forEach>
								</form>
								<div class="clearfix"></div>
								<div class="n_tail">
									<div id="gg_video_all_newest" class="pag"></div>
								</div>
							</div>
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
	<script type="text/javascript">
	function initPagination() {
        $("#gg_video_all_newest").pagination('${videoCount}', {
            items_per_page:'${paging.pageSize}', 		// 每页显示多少条记录
			current_page:'${paging.pageNo - 1}',		// 当前显示第几页数据
			num_display_entries:10,	// 显示几页
			prev_text:"上一页",
			next_text:"下一页",
			num_edge_entries:2,
			showGoInput: true,
			showGoButton: true,
			callback: function(data, pagination) {
				$("#gg_form_newest").attr("action","${ctx }/rms/seeAll.do?pageNo="+(data+1));
				$("#gg_form_newest").submit();
			}
        });
     }
	$(document).ready(function(){      
	    initPagination();
	});
</script>
</body>
</html>