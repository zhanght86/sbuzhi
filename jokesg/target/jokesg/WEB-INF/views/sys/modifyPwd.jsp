<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>修改密码</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" media="screen" href="${ctx}/ui/modifyPwd/css/mp.css" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/bootstrap.min.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/font-awesome.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/icon-font.min.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style-register.css"/>
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
</head>
<body class="sticky-header left-side-collapsed">
	<section>
    <%@include file="/WEB-INF/views/include/menu.jsp" %>
    <div class="main-content">
        <%@include file="/WEB-INF/views/include/top.jsp" %>
		<div class="mp">
			<form id="mp" class="form-horizontal" action="modifyPwd.do" method="post">
				<ul id="progressbar">
					<li class="active">请输入账号</li>
					<li>修改密码</li>
					<li>完成</li>
				</ul>
				<fieldset>
					<h2 class="fs-title">第一步：请输入您需要修改的账号</h2>
					<div class="form-group">
						<label for="username1" class="col-sm-2 control-label">账号</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="username1" placeholder="Enter email or phone">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" class="btn btn-warning">放弃修改</button>
							<button type="button" class="btn btn-info next" onclick="next()">下一步</button>
						</div>
					</div>
				</fieldset>
				<fieldset>
					<h2 class="fs-title">第二步：修改密码</h2>
					<div class="form-group">
						<label for="username" class="col-sm-2 control-label">账号</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="username" name="username" readonly>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">旧密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" name="password" id="password" placeholder="Enter password">
						</div>
					</div>
					<div class="form-group">
						<label for="pwd1" class="col-sm-2 control-label">新密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" name="pwd1" id="pwd1" placeholder="Enter new password">
						</div>
					</div>
					<div class="form-group">
						<label for="pwd2" class="col-sm-2 control-label">确认密码</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" name="pwd2" id="pwd2" placeholder="Enter confirm new password">
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" class="btn btn-info previous">上一步</button>
							<button type="submit" class="btn btn-success">修改密码</button>
						</div>
					</div>
				</fieldset>
				<fieldset>
					<h2 class="fs-title">第三步：完成</h2>
					${msg }
					<button type="button" class="btn btn-success">完成</button>
				</fieldset>
			</form>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="http://thecodeplayer.com/uploads/js/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="http://thecodeplayer.com/uploads/js/jquery.easing.min.js" type="text/javascript"></script>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
	<script src="${ctx}/ui/modifyPwd/js/mp.js"></script>
</body>
</html>