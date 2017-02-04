<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>

<link rel="stylesheet" href="${ctx }/ui/jquery/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx }/ui/jquery/zTree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="${ctx }/ui/jquery/zTree/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="${ctx }/ui/jquery/zTree/js/jquery.ztree.excheck.js"></script>
<style type="text/css">
	form{
		padding: 50px 0px 0px 0px;
	}
</style>

<form class="form-horizontal" action="${ctx }/cms/menu/save.do" method="post">
	<input type="hidden" name="id" value="${menus.id }">

	<div class="form-group">
		<label for="parentId" class="col-sm-2 control-label">父级标签</label>
		<div class="col-sm-2">
			<select name="parentId" class="form-control pId">
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
		<label for="permission" class="col-sm-2 control-label">权限</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="permission" name="permission"
				value="${menus.permission }" placeholder="权限">
		</div>
	</div>

	<div class="form-group">
		<label for="isShow" class="col-sm-2 control-label">是否在菜单栏中显示</label>
		<div class="col-sm-4 isShow">
			<label class="radio-inline"> 
				<input type="radio" name="isShow" value="1"> 显示
			</label> 
			<label class="radio-inline"> 
				<input type="radio" name="isShow" value="0"> 不显示
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
			<a type="button" class="btn btn-danger" href="${ctx }/cms/menu/delete.do?id=${menus.id}">删除</a>
			<button type="submit" class="btn btn-success">保存</button>
		</div>
	</div>
</form>

<SCRIPT type="text/javascript">

	$(document).ready(function(){
		$(".pId").val("${menus.parentId}");
		$(".isShow input[value=${menus.isShow}]").attr("checked",true);  
	});
	
</SCRIPT>