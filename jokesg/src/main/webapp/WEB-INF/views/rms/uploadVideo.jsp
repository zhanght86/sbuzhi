<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>上传视频</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<link rel='stylesheet' type='text/css' href="${ctx}/ui/video/css/video.css">
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
        
        <div class="info1">
        	<h2 class="ht">上传视频</h2>
			<form action="${ctx }/rms/video/save.do" enctype="multipart/form-data" class="form-horizontal" method="post">
				<div class="form-group">
					<label for="video" class="col-sm-2 control-label">选择视频</label>
					<div class="col-sm-10">
						<input type="file" name="video">
						<p class="help-block">请上传一个视频文件.</p>
					</div>
				</div>
				<div class="form-group">
					<label for="pic" class="col-sm-2 control-label">视频背景图</label>
					<div class="col-sm-10">
						<input type="file" name="pic">
						<p class="help-block">请上传一个图片文件.</p>
					</div>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">标题</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="name" placeholder="好标题能提高点击率哦，必填字段">
					</div>
				</div>
				<div class="form-group">
					<label for="menuId" class="col-sm-2 control-label">分类</label>
					<div class="col-sm-2">
						<select name="menuId" class="form-control">
							<option value="800">搞笑</option>
							<option value="801">感动</option>
							<option value="802">励志</option>
							<option value="803">公益</option>
							<option value="804">原生态</option>
							<option value="805">其他</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="type" class="col-sm-2 control-label">类型</label>
					<div class="col-sm-4">
						<label class="radio-inline">
						  <input type="radio" name="type" value="1"> 原创
						</label>
						<label class="radio-inline">
						  <input type="radio" name="type" value="2"> 转载
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="remarks" class="col-sm-2 control-label">视频描述</label>
					<div class="col-sm-4">
						<textarea name="remarks" id="remarks" cols="53" rows="7" placeholder="描述是对视频的详细说明，可不填"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="remarks" class="col-sm-2 control-label">隐私设置</label>
					<div class="col-sm-2">
						<select name="isOpenly" class="form-control" id="isOpenly" onclick="opPwd();">
							<option value="1">公开</option>
							<option value="0">仅自己可见</option>
							<option value="2">输入密码可见</option>
						</select>
						<input type="hidden" class="form-control" name="pwd" id="pwd" placeholder="私密密码">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-success">保存</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function opPwd(){
			var val = $('#isOpenly').val();
			if(val == "2"){
				$('#pwd').attr("type","text");
			} else {
				$('#pwd').attr("type","hidden");
			}
		};
	</script>
</body>
</html>