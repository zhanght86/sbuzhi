<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>用户管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/bootstrap.min.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/role/css/style.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/font-awesome.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/icon-font.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/ui/jquery/pagination/css/pagination.css"/>
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
<style type="text/css">
	.mu1 {
		padding: 50px 0px 0px 25px;
	}
	
	* {
		margin: 0;
		padding: 0;
		list-style: none;
	}
	
	.pag{
		margin: 0px 0px 0px -30px;
	}
</style>

</head>
<body class="sticky-header left-side-collapsed">
	<section>
		<%@include file="/WEB-INF/views/include/menu.jsp"%>
		<div class="main-content">
			<%@include file="/WEB-INF/views/include/top.jsp"%>
			<div class="info11">
				<h2>
					<a href="${ctx }/cms/userMenu.do">新添用户</a>|
					<a href="${ctx }/cms/userMenu.do?delFlag=0">非法用户管理</a>
				</h2>
				<div class="mu1">
					<form action="${ctx }/cms/userMenu.do" class="form-inline" method="post" id="gg_user_find">
						  <div class="form-group">
						    <label for="username" class="sr-only">账号</label>
						    <input type="text" class="form-control" name="username" placeholder="账号">
						  </div>
						  <button type="submit" class="btn btn-info">查询</button>
						<c:forEach items="${users }" var="us">
							<li class="nav-item" data-href="nav">
								<a href="${ctx }/cms/user/form.do?id=${us.id}&delFlag=${us.delFlag}" target="cmsUser">
									<span class="title">${us.name}</span>
								</a> 
							</li>
						</c:forEach>
					</form>
					<div id="gg_user_pagination" class="pag"></div>
				</div>
				<div class="mu2">
					<iframe src="${ctx }/cms/user/form.do" width="90%" height="100%" name="cmsUser"></iframe>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
	<script src="${ctx}/ui/jquery/pagination/js/jquery.pagination.js"></script>
	<script>
		//将所有上级菜单设置为active
		function setMenuActive(lv1MenuId, lv1MenuName) {
			$("[data-href='nav']").attr("class", "nav-item");
			//再设置为当前的菜单
			$("#" + lv1MenuId).attr("class", "nav-item active open");
			$("#m1Breadcrumb").text(lv1MenuName);
		};
		
		function initPagination() {
            $("#gg_user_pagination").pagination('${total}', {
                items_per_page:'${size}', 		// 每页显示多少条记录
				current_page:'${pageNo} - 1',	// 当前显示第几页数据
				num_display_entries:5,			// 显示几页
				prev_text:"上一页",
				next_text:"下一页",
				num_edge_entries:2,
				showGoInput: true,
				showGoButton: true,
				callback: function(data, pagination) {
					$("#gg_user_find").attr("action","${ctx }/cms/userMenu.do?pageNo="+(data+1));
					$("#gg_user_find").submit();
				}
            });
         }
		$(document).ready(function(){      
		    initPagination();
		});
	</script>
</body>
</html>