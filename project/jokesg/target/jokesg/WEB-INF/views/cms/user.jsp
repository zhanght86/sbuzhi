<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>

<link rel="stylesheet"
	href="${ctx }/ui/jquery/zTree/css/zTreeStyle/zTreeStyle.css"
	type="text/css">
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${ctx }/ui/jquery/zTree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="${ctx }/ui/jquery/zTree/js/jquery.ztree.core.js"></script>
<script type="text/javascript"
	src="${ctx }/ui/jquery/zTree/js/jquery.ztree.excheck.js"></script>
<style type="text/css">
form {
	padding: 50px 0px 0px 0px;
}
</style>

<form class="form-horizontal" action="${ctx }/cms/user/save.do"
	method="post">
	<div class="form-group">
		<label for="id" class="col-sm-2 control-label">ID</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="id" name="id"
				value="${user.id }" placeholder="账号" readonly>
		</div>
	</div>

	<div class="form-group">
		<label for="username" class="col-sm-2 control-label">账号</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="username" name="username"
				value="${user.username }" placeholder="账号" >
		</div>
	</div>

	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">真实姓名</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="name" name="name"
				value="${user.name}" placeholder="真实姓名">
		</div>
	</div>

	<div class="form-group">
		<label for="nickname" class="col-sm-2 control-label">昵称</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="nickname" name="nickname"
				value="${user.nickname }" placeholder="昵称">
		</div>
	</div>

	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">电子邮箱</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="email" name="email"
				value="${user.email }" placeholder="电子邮箱">
		</div>
	</div>

	<div class="form-group">
		<label for="phone" class="col-sm-2 control-label">电话</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="phone" name="phone"
				value="${user.phone }" placeholder="电话">
		</div>
	</div>

	<div class="form-group">
		<label for="isCompany" class="col-sm-2 control-label">企业认证</label>
		<div class="col-sm-4 isCompany">
			<label class="radio-inline"> <input type="radio"
				name="isCompany" value="1"> 认证
			</label> <label class="radio-inline"> <input type="radio"
				name="isCompany" value="0"> 未认证
			</label>
		</div>
	</div>

	<div class="form-group">
		<label for="companyId" class="col-sm-2 control-label">企业Id</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="companyId"
				name="companyId" value="${user.companyId }" placeholder="上次访问IP">
		</div>
	</div>

	<div class="form-group">
		<label for="loginIp" class="col-sm-2 control-label">上次访问IP</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="loginIp" name="loginIp"
				value="${user.loginIp }" placeholder="上次访问IP">
		</div>
	</div>

	<div class="form-group">
		<label for="loginName" class="col-sm-2 control-label">上次访问主机名称</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="loginName"
				name="loginName" value="${user.loginName}" placeholder="上次访问主机名称">
		</div>
	</div>

	<div class="form-group">
		<label for="loginTime" class="col-sm-2 control-label">上次访问时间</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="loginTime"
				name="loginTime" value="${user.loginTime }" placeholder="上次访问时间">
		</div>
	</div>

	<div class="form-group">
		<label for="status" class="col-sm-2 control-label">状态</label>
		<div class="col-sm-4 status">
			<label class="radio-inline"> <input type="radio"
				name="status" value="1"> 启用
			</label> <label class="radio-inline"> <input type="radio"
				name="status" value="0"> 冻结
			</label>
		</div>
	</div>

	<div class="form-group">
		<label for="isLogin" class="col-sm-2 control-label">是否可登陆</label>
		<div class="col-sm-4 isLogin">
			<label class="radio-inline"> <input type="radio"
				name="isLogin" value="1"> 是
			</label> <label class="radio-inline"> <input type="radio"
				name="isLogin" value="0"> 否
			</label>
		</div>
	</div>

	<div class="form-group">
		<label for="insertBy" class="col-sm-2 control-label">创建者</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="insertBy" name="insertBy"
				value="${user.insertBy }" placeholder="创建者">
		</div>
	</div>

	<div class="form-group">
		<label for="insertDate" class="col-sm-2 control-label">创建日期</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="insertDate"
				name="insertDate" value="${user.insertDate }" placeholder="创建日期">
		</div>
	</div>

	<div class="form-group">
		<label for="updateBy" class="col-sm-2 control-label">更新者</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="updateBy" name="updateBy"
				value="${user.updateBy}" placeholder="更新者">
		</div>
	</div>

	<div class="form-group">
		<label for="updateDate" class="col-sm-2 control-label">更新日期</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="updateDate"
				name="updateDate" value="${user.updateDate }" placeholder="更新日期">
		</div>
	</div>

	<div class="form-group">
		<label for="remarks" class="col-sm-2 control-label">个性签名</label>
		<div class="col-sm-4">
			<textarea name="remarks" id="remarks" cols="63" rows="7"
				placeholder="描述，可不填">${user.remarks }</textarea>
		</div>
	</div>

	<div class="form-group">
		<label for="delFlag" class="col-sm-2 control-label">删除标记</label>
		<div class="col-sm-4 delFlag">
			<label class="radio-inline"> <input type="radio"
				name="delFlag" value="1"> 未删除
			</label> <label class="radio-inline"> <input type="radio"
				name="delFlag" value="0"> 删除
			</label> <label class="radio-inline"> <input type="radio"
				name="delFlag" value="2"> 审核
			</label>
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-success ">保存</button>
		</div>
	</div>
</form>

<SCRIPT type="text/javascript">

	$(document).ready(function(){
		//alert("${menus.isShow}");
		$(".isCompany input[value=${user.isCompany}]").attr("checked",true);  
		$(".status input[value=${user.status}]").attr("checked",true);  
		$(".isLogin input[value=${user.isLogin}]").attr("checked",true);  
		$(".delFlag input[value=${user.delFlag}]").attr("checked",true);  
	});

</SCRIPT>