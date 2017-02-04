<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>注册账号</title>
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
    <link rel='stylesheet' href="${ctx}/ui/gg/css/gg-validate.css" type='text/css'/>
    <link rel="stylesheet" href="${ctx}/ui/gg/css/font-awesome.css" type='text/css'>
    <link rel="stylesheet" href="${ctx}/ui/gg/css/icon-font.min.css" type='text/css'/>
    <link rel="stylesheet" href="${ctx}/ui/gg/css/style-register.css" type='text/css'>
    <script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
	<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
</head>

<body class="sticky-header left-side-collapsed">
<section>
    <%@include file="/WEB-INF/views/include/menu.jsp" %>
    <div class="login-main-content">
        <%@include file="/WEB-INF/views/include/top.jsp" %>
        <div id="page-wrapper1">
            <div class="modal-body modal-spa">
                <div class="register-container container">
                    <div class="row">
                        <div class="register-left">
                            <img src="${ctx}/ui/gg/images/iphone.png" alt="">
                        </div>
                        <div class="register register-right">
                            <form id="gg_form_register" action="${ctx}/signup.do" method="post">
                                <h2>注册<span class="red"><strong>账号</strong></span></h2>
                                <span>${msg}</span>
                                <label for="email">电子邮箱:</label>
                                <input type="text" id="email" name="email" type="email" placeholder="邮箱">
                                <label for="password">密码:</label>
                                <input type="password" id="password" name="password" placeholder="6-16位字符组成,区分大小写">
                                <label for="password">确认密码:</label>
                                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="确认密码">
                                <label for="nickname">昵称:</label>
                                <input type="text" id="nickname" name="nickname" placeholder="例：英俊潇洒风流倜傥的李四哥">
                                <label for="phone">手机号:</label>
                                <input type="text" id="phone" name="phone" placeholder="手机号">
                             	<br><br>
                            	 验证码：<sys:validateCode name="validateCode" inputCssStyle="margin-bottom:0;" />
                                <button type="submit">立即注册</button>
                            </form>
                        </div>
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
<script src="${ctx}/ui/gg/js/gg-validate.js"></script> 
</body>
</html>