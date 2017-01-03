<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>编辑菜单</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel='stylesheet' type='text/css'
	href="${ctx}/ui/gg/css/bootstrap.min.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css" />
<link rel='stylesheet' type='text/css'
	href="${ctx}/ui/gg/css/font-awesome.css" />
<link rel='stylesheet' type='text/css'
	href="${ctx}/ui/gg/css/icon-font.min.css" />
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
<style type="text/css">
	h2{
   		padding: 0px 0px 20px 120px;
	}
	
	.mu1{
		width: 20%;
		height: 100%;
		float:left;
 		border: 1px solid red;
 		border-color: #333 #333 #f8f8f8 #f8f8f8;
 		padding: 25px 0px;
	}
	
	.mu2{
		width: 80%;
		height: 100%;
		float:left;
 		border: 1px solid blue;
 		border-color: #333 #f8f8f8 #f8f8f8 #333;
 		padding: 55px 0px;
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

				<div class="mu2">
					<form class="form-horizontal">
						<input type="hidden" name="id" value="${menus.id }">

						<div class="form-group">
							<label for="parentId" class="col-sm-2 control-label">父级标签</label>
							<div class="col-sm-2">
								<select name="parentId" class="form-control">
									<c:forEach items="${pNameV1 }" var="p1">
										<option value="${p1.id }">${p1.name }</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">菜单名称</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="name" name="name"
									value="${menus.name }" placeholder="菜单名称">
							</div>
						</div>

						<div class="form-group">
							<label for="index" class="col-sm-2 control-label">排序</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="index" name="index"
									value="${menus.index }"
									placeholder="请输入（父级标签+100至父级标签+99之内的数值）">
							</div>
						</div>

						<div class="form-group">
							<label for="href" class="col-sm-2 control-label">跳转目标</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="href" name="href"
									value="${menus.href }" placeholder="跳转目标">
							</div>
						</div>

						<div class="form-group">
							<label for="icon" class="col-sm-2 control-label">图标</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="icon" name="icon"
									value="${menus.icon }" placeholder="图标">
							</div>
						</div>

						<div class="form-group">
							<label for="isShow" class="col-sm-2 control-label">是否在菜单栏中显示</label>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio"
									name="isShow" id="isShow1" value="1"> 显示
								</label> <label class="radio-inline"> <input type="radio"
									name="isShow" id="isShow2" value="0"> 不显示
								</label>
							</div>
						</div>

						<div class="form-group">
							<label for="remarks" class="col-sm-2 control-label">描述</label>
							<div class="col-sm-4">
								<textarea name="remarks" id="remarks" cols="63" rows="7"
									placeholder="描述，可不填">${menus.remarks }</textarea>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">保存</button>
							</div>
						</div>
					</form>
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