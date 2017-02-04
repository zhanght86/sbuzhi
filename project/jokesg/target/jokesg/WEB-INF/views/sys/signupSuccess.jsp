<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>注册成功</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
	<script type="application/x-javascript">
		 addEventListener("load", function () {
	        setTimeout(hideURLbar, 0);
	    }, false);
	    function hideURLbar() {
	        window.scrollTo(0, 1);
	    } 
	</script>
	<link href="${ctx}/ui/gg/css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
    <link rel='stylesheet' href="${ctx}/ui/gg/css/style.css" type='text/css'/>
    <link rel="stylesheet" href="${ctx}/ui/gg/css/font-awesome.css" type='text/css'>
    <link rel="stylesheet" href="${ctx}/ui/gg/css/icon-font.min.css" type='text/css'/>
    <link rel='stylesheet' href="${ctx}/ui/gg/css/registerSuccess.css" type='text/css'/>
    <script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
</head>

<body class="sticky-header left-side-collapsed">
<section>
    <%@include file="/WEB-INF/views/include/menu.jsp" %>
    <div class="login-main-content">
        <%@include file="/WEB-INF/views/include/top.jsp" %>
        <div id="page-wrapper1">
            <div class="modal-body modal-spa">
                <div class="register-container container">
					<div id="div1">
						<h1>注册成功!</h1><br>
						<h2><span>${msg }</span></h2><br>
						<p>恭喜您,注册成功!您有一次<span class="p">免费晋升至VIP</span>的机会.<br>我们已将升级VIP的邮件发送至邮箱<span class="p">${user.email }</span>,有效期为24小时,是否抓住机会立即晋升高富帅？</p><br>
						<a class="btn btn-info btn-lg btn-block" href="">前往邮箱,立即晋升</a> <br><br>
						<a class="btn btn-danger btn-lg btn-block" href="${ctx }/user/sendEmail.do?userId=${user.id}&type=1">没有收到,再发一次</a><br><br>
						<a class="btn btn-success btn-lg btn-block" href="${ctx}/login.do">等不及了,我要立即登录</a> <br><br>
					</div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/views/include/tail.jsp" %>
</section>
<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
<script src="${ctx}/ui/gg/js/scripts.js"></script>
<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
</body>
</html>