<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>个人资料</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="${ctx}/ui/userInfo/css/info.css">
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/bootstrap.min.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/font-awesome.css"/>
<link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/icon-font.min.css"/>
<script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>

<style type="text/css">
	.input-group[class*=col-] {
	    float: none;
	    padding-right: 0;
	    padding-left: 15px;
	}
</style>
</head>
<body class="sticky-header left-side-collapsed">
	<section>
    <%@include file="/WEB-INF/views/include/menu.jsp" %>
	<div class="main-content">
        <%@include file="/WEB-INF/views/include/top.jsp" %>
	    <div class="info1">
			<ul class="nav nav-tabs" id="myTab">
				<li class="active">
					<a href="#home" data-toggle="tab">
						会员信息
					</a>
				</li>
				
				<li class="dropdown">
				    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
				      	基本资料 <span class="caret"></span>
				    </a>
				    <ul class="dropdown-menu">
				      <li>
				      	<a href="#gg_info1" data-toggle="tab">
							基本资料1
						</a>
				      </li>
				      <li>
				      	<a href="#gg_info2" data-toggle="tab">
							基本资料2
						</a>
				      </li>
				    </ul>
				</li>
			</ul>
		
			<div class="tab-content">
				<div class="tab-pane active" id="home">
					<form action="" method="post" class="form-horizontal">
						<div class="form-group ">
							<label for="loginTime" class="col-sm-2 control-label">上次登录时间</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" name="loginTime" placeholder="${user.loginTime }" disabled>
							</div>
						</div>
						
						<div class="form-group">
							<label for="loginIp" class="col-sm-2 control-label">上次登录主机名称</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" name="loginIp" placeholder="${user.loginName }" disabled>
							</div>
						</div>
						
						<div class="form-group">
							<label for="username" class="col-sm-2 control-label ">账号</label>
							<div class="col-sm-2 input-group">
							  <input type="email" class="form-control" id="username" name="username" placeholder="${user.username }" disabled>
								<div class="input-group-addon">@jokesg.com</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="nickname" class="col-sm-2 control-label">昵称</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" id="nickname" name="nickname" value="${user.nickname }">
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">邮箱地址</label>
							<div class="col-sm-3">
								<input type="email" class="form-control" id="email" name="email" placeholder="314975605@qq.com" value="${user.email }">
								<input type="checkbox" name='like[]' value='0'>对外公开<a href="">使用与账号相同的Email地址</a>
							</div>
						</div>
						
						<div class="form-group">
							<label for="remarks" class="col-sm-2 control-label">个性签名</label>
							<div class="col-sm-3">
								<textarea name="remarks" id="remarks" cols="45" rows="7" >${user.remarks }</textarea>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
							<div class="checkbox">
								<label>
									<input type="checkbox"> 有回复或者关注软件的新闻发布时邮件提醒我
								</label>
								</div>
							</div>
						</div>
					  
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="button" class="btn btn-danger">放弃修改</button>
								<button type="button" class="btn btn-success">保存修改</button>   
							</div>
						</div>
					</form>
				</div>
				
				<div class="tab-pane" id="gg_info1">
					<form class="form-horizontal" id="gg_form_info1">
						
						<div class="form-group">
							<label for="id" class="sr-only">ID</label>
							<div class="col-sm-3">
							  <input type="hidden" class="form-control" name="id" value="${user.id }">
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">真实姓名</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" name="name" value="${info.name }">
							</div>
						</div>
						
						<div class="form-group">
							<label for="enName" class="col-sm-2 control-label">英文名称</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" id="enName" name="enName" value="${info.enName }">
							</div>
						</div>
						
						<div class="form-group">
							<label for="sex" class="col-sm-2 control-label">性别</label>
							<div class="col-sm-4 sex">
								<label class="radio-inline"> <input type="radio"
									name="sex" value="1"> 男
								</label>
								<label class="radio-inline"> <input type="radio"
									name="sex" value="2"> 女
								</label>
								<label class="radio-inline"> <input type="radio"
									name="sex" value="0"> 其它
								</label>
							</div>
						</div>
						
						<div class="form-group">
							<label for="age" class="col-sm-2 control-label">年龄</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" id="age" name="age" value="${info.age }">
							</div>
						</div>
						
						<div class="form-group">
							<label for="telPhone" class="col-sm-2 control-label">联系电话</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="telPhone" name="telPhone" value="${info.telPhone }">
							</div>
						</div>
		
						<div class="form-group">
							<label for="idCard" class="col-sm-2 control-label">身份证号</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" id="idCard" name="idCard" value="${info.idCard }">
							</div>
						</div>
						
						<!-- 隐藏域 ，解决ajax传两个表单数据问题 -->
						<input type="hidden" class="form-control" name="sdafsdfsd" >
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="button" class="btn btn-danger">放弃修改</button>
								<button type="button" class="btn btn-success" onclick="save();">保存修改</button>   
							</div>
						</div>
					</form>   
				</div>
				
				<div class="tab-pane" id="gg_info2">
					<form id="gg_form_info2" class="form-horizontal">
						
						<input type="hidden" class="form-control" name="sdafssadfdfsd" >
						
						<div class="form-group">
							<label for="hometown" class="col-sm-2 control-label">故乡</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" id="hometown" name="hometown" value="${info.hometown }">
							</div>
						</div>
						
						<div class="form-group">
							<label for="birth" class="col-sm-2 control-label">生日</label>
							<div class="col-sm-2">
							  <input type="text" class="form-control" id="birth" name="birth" value="${info.birth }" placeholder="点击选择生日"  readonly>
							</div>
						</div>
					
						<div class="form-group">
							<label for="twelveZodiac" class="col-sm-2 control-label">生肖</label>
							<div class="col-sm-2">
								<select name="twelveZodiac" class="form-control twelveZodiac">
									<option value="1">鼠</option>
									<option value="2">牛</option>
									<option value="3">虎</option>
									<option value="4">兔</option>
									<option value="5">龙</option>
									<option value="6">蛇</option>
									<option value="7">马</option>
									<option value="8">羊</option>
									<option value="9">猴</option>
									<option value="10">鸡</option>
									<option value="11">狗</option>
									<option value="12">猪</option>
									<option value="0">其它</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="zodiac" class="col-sm-2 control-label">星座</label>
							<div class="col-sm-2">
								<select name="zodiac" class="form-control zodiac">
									<option value="1">白羊座</option>
									<option value="2">金牛座</option>
									<option value="3">双子座</option>
									<option value="4">双子座</option>
									<option value="5">狮子座</option>
									<option value="6">处女座</option>
									<option value="7">天秤座</option>
									<option value="8">天蝎座</option>
									<option value="9">射手座</option>
									<option value="10">摩羯座</option>
									<option value="11">水瓶座</option>
									<option value="12">双鱼座</option>
									<option value="0">其它</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="bloodType" class="col-sm-2 control-label">血型</label>
							<div class="col-sm-2">
								<select name="bloodType" class="form-control bloodType">
									<option value="1">A型</option>
									<option value="2">B型</option>
									<option value="3">AB型</option>
									<option value="4">O型</option>
									<option value="0">其它</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="profession" class="col-sm-2 control-label">职业</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" id="profession"  name="profession" value="${info.profession }">
							</div>
						</div>
						
						<div class="form-group">
							<label for="school" class="col-sm-2 control-label">学校</label>
							<div class="col-sm-3">
							  <input type="text" class="form-control" id="school"  name="school" value="${info.school }">
							</div>
						</div>
						
						<div class="form-group">
							<label for="academic" class="col-sm-2 control-label">学历</label>
							<div class="col-sm-2">
								<select name="academic" class="form-control academic">
									<option value="1">小学及以下</option>
									<option value="2">初中</option>
									<option value="3">高中</option>
									<option value="4">中专</option>
									<option value="5">大专</option>
									<option value="6">本科</option>
									<option value="7">研究生</option>
									<option value="8">博士及以上</option>
									<option value="0">其它</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="button" class="btn btn-danger">放弃修改</button>
								<button type="button" class="btn btn-success" onclick="save();">保存修改</button>   
							</div>
						</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="${ctx}/ui/jedate/jedate.js"></script>
	<script type="text/javascript">
		jeDate({
			dateCell : "#birth",
			format : "YYYY-MM-DD",
			isinitVal : true,
			isTime : true, 
		});
	</script>
	
	<script type="text/javascript">
		$(document).ready(function(){
			$(".twelveZodiac").val("${info.twelveZodiac}");
			$(".zodiac").val("${info.zodiac}");
			$(".bloodType").val("${info.bloodType}");
			$(".academic").val("${info.academic}");
			$(".sex input[value=${info.sex}]").attr("checked",true);  
		});
	</script>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
	<script src="${ctx}/ui/gg/js/gg-validate.js"></script>
	<script  type="text/javascript">
		
	  function save(){
		  $.ajax({  
			    type:'POST',  
			    url:'${ctx}/ims/info/save.do',  
			    dataType:'json',  
			    data:$('#gg_form_info1').serialize()+", "+$('#gg_form_info2').serialize(),
			    success:function(date){
			    	alert("保存成功");
			    },
			    error:function(date){
                  alert("保存失败!" + date);  
              }
			}); 
	  };

	</script>
	
</body>
</html>