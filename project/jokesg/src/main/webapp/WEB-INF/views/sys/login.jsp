<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>登陆</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } 
</script>
<script type="text/javascript">
	var _captcha_id = "#img_captcha";
	function refreshCaptcha() {
		$(_captcha_id).attr("src",
				"${ctx}/servlet/captchaCode?t=" + Math.random());
	}
</script>
<link href="${ctx}/ui/gg/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="${ctx}/ui/gg/css/style.css" rel='stylesheet' type='text/css' />
<link href="${ctx}/ui/gg/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="${ctx}/ui/gg/css/icon-font.min.css" type='text/css' />
<link href="${ctx}/ui/gg/css/style-login.css" rel='stylesheet' type='text/css' />
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
</head>

<body class="sticky-header left-side-collapsed">
	<script>
		$(document).ready(function(c) {
			$('.close').on('click', function(c) {
				$('.login-form').fadeOut('slow', function(c) {
					$('.login-form').remove();
				});
			});
		});
	</script>
	<section>
	<%@include file="/WEB-INF/views/include/menu.jsp" %>
	
    <div class="main-content">
        <%@include file="/WEB-INF/views/include/top.jsp" %>
			<div id="page-wrapper1">
				<div class="modal-body modal-spa">
					<div class="sign-left">
						<ul>
							<li><a class="fb" href="#"><i></i>Facebook账号登陆</a></li>
							<li><a class="goog" href="#"><i></i>Google账号登陆</a></li>
							<li><a class="linkin" href="#"><i></i>Linkedin账号登陆</a></li>
						</ul>
					</div>
					<div class="sign-right">
						<h1>请登陆您的账号:</h1>
						<span>${message}</span>
						<div class="login-form">
							<div class="close"></div>
							<div class="head-info">
								<label class="lbl-1"> </label> <label class="lbl-2"> </label> <label
									class="lbl-3"> </label>
							</div>
							<%--头像--%>
							<div>
								<img src="${ctx}/ui/gg/images/avtar.png" />
							</div>

							<form action="${ctx}/login.do" method="post" id="loginForm1">
								<input name="username" type="text" class="text" value="手机号/邮箱"
									onfocus="if (this.value == '手机号/邮箱') {this.value = '';};"
									onblur="if (this.value == '') {this.value = '手机号/邮箱';}" /> <input
									name="password" type="password" value="******"
									onfocus="if (this.value == '******') {this.value = '';};"
									onblur="if (this.value == '') {this.value = '******';}" />
								<c:if test="${isValidateCodeLogin}">
									<div class="validateCode">
										<sys:validateCode name="validateCode"
											inputCssStyle="margin-bottom:0;" />
									</div>
								</c:if>
								<input type="submit" value="立即登录">
							</form>
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
</body>

</html>