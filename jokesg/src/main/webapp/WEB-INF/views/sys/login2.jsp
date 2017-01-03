<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/login/css/style.css"/>
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
			<div class="login">
				<div class="left">
					<div class="p">
						<div class="photo">
							<img src="${ctx}/ui/gg/images/avtar.png" />
						</div>
						<div class="text">
							<h3>&nbsp;&nbsp;&nbsp;欢迎使用Jokesg</h3>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请登录</span><br/>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${message }</span>
						</div>
					</div>
					<div class="top">
						<form class="form-horizontal" action="${ctx }/login.do" method="post">
							<div class="form-group">
								<label for="username" class="col-sm-2 control-label">账号</label>
								<div class="col-sm-8">
									<input type="text" class="form-control col-lg-*"
										name="username" id="username" placeholder="Email/phone">
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="col-sm-2 control-label">密码</label>
								<div class="col-xs-8">
									<input type="password" class="form-control" name="password"
										id="password" placeholder="Password">
								</div>
							</div>
							<c:if test="${isValidateCodeLogin}">
								<div class="form-group">
									<label for="validateCode" class="col-sm-2 control-label">验证</label>
									<div class="col-xs-8 validateCode">
										<sys:validateCode name="validateCode"
											inputCssStyle="margin-bottom:0;" />
									</div>
								</div>
							</c:if>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<div class="checkbox">
										<label> <input type="checkbox" name="rememberMe">
											记住我
										</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-success">立即登录</button>
								</div>
							</div>
						</form>
					</div>
					<div class="tail">
						<a href="${ctx}/signup.do">注册账号</a> | <a href="${ctx }/modifyPwd.do">忘记密码？</a>
					</div>
				</div>
				<div class="sign-left">
					<ul>
						<li><a class="fb" href="#"><i></i>Facebook账号登陆</a></li>
						<li><a class="goog" href="#"><i></i>Google账号登陆</a></li>
						<li><a class="linkin" href="#"><i></i>Linkedin账号登陆</a></li>
					</ul>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
	<script src="${ctx}/ui/gg/js/gg-validate.js"></script>
</body>
</html>