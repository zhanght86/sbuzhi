<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>菜单管理</title>
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
		padding: 25px 0px 0px 25px;
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
					<a href="${ctx }/cms/mMenu.do">菜单编辑</a>|
					<a href="">新添菜单</a>
					<shiro:hasRole name="admin"> 
						<a href="${ctx }/cms/mMenu.do?type=1">回收站</a>
					</shiro:hasRole>
				</h2>
				<div class="mu1">
					<c:forEach items="${menus}" var="m1">
						<li class="nav-item" data-href="nav">
							<a href="${ctx }/cms/menu/form.do?id=${m1.id}" target="cmsMenu">
								<i class="${m1.icon}"></i> <span class="title">${m1.name}</span>
							</a>
							<c:if test="${not empty m1.menus }">
								<ul class="sub-menu-list">
									<c:forEach items="${m1.menus}" var="m2">
										<c:if test="${m2.isShow eq 1}">
											<li id="m${m2.id }"><a href="${ctx}/cms/menu/form.do?id=${m2.id}"  target="cmsMenu"> <span>${m2.name}</span>
											</a></li>
										</c:if>
									</c:forEach>
								</ul>
							</c:if>
						</li>
					</c:forEach>
				</div>
				<div class="mu2">
					<iframe src="${ctx }/cms/menu/form.do" width="90%" height="100%" name="cmsMenu"></iframe>
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