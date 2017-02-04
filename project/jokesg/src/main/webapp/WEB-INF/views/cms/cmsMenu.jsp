<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>编辑菜单</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/bootstrap.min.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/role/css/style.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/font-awesome.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/icon-font.min.css" />
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
<style type="text/css">
	.mu1{
		padding: 50px 0px 0px 25px;
	}
</style>

</head>
<body class="sticky-header left-side-collapsed">
	<section>
		<%@include file="/WEB-INF/views/include/menu.jsp"%>
		<div class="main-content">
			<%@include file="/WEB-INF/views/include/top.jsp"%>
			<div class="info11">
				<h2>编辑菜单：</h2>
				<div class="mu1">
					<c:forEach items="${roles }" var="rs">
						<li class="nav-item" data-href="nav">
							<a href="${ctx }/cms/role/form.do?id=${rs.id}" target="cmsMenu">
								<span class="title">${rs.name}</span>
							</a> 
						</li>
					</c:forEach>
				</div>
				<div class="mu2">
					<iframe src="${ctx }/cms/role/form.do" width="90%" height="100%" name="cmsMenu"></iframe>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
	<script>
		//将所有上级菜单设置为active
		function setMenuActive(lv1MenuId, lv1MenuName) {
			$("[data-href='nav']").attr("class", "nav-item");
			//再设置为当前的菜单
			$("#" + lv1MenuId).attr("class", "nav-item active open");
			$("#m1Breadcrumb").text(lv1MenuName);
		};
	</script>
</body>
</html>