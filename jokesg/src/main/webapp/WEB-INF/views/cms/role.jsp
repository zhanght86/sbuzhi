<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>

<link rel="stylesheet" href="${ctx }/ui/jquery/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel='stylesheet' href="${ctx}/ui/gg/css/bootstrap.min.css" type='text/css' />
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="${ctx}/ui/jquery/jBox/Demo/Demo.js"></script>
<style type="text/css">
	form{
		padding: 50px 0px 0px 0px;
	}
</style>

<form class="form-horizontal" id="gg_role">
	<input type="hidden" name="id" value="${role.id }">

	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">角色权限</label>
		<div class="col-sm-offset-2 col-sm-10">
			<div class="zTreeDemoBackground left">
				<ul id="treeDemo" class="ztree"></ul>
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">角色名称</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="name" name="name"
				value="${role.name }" placeholder="角色名称">
		</div>
	</div>
	<div class="form-group">
		<label for="enName" class="col-sm-2 control-label">角色英文名称</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" id="enName" name="enName"
				value="${role.enName }" placeholder="角色英文名称">
		</div>
	</div>

	<div class="form-group">
		<label for="remarks" class="col-sm-2 control-label">描述</label>
		<div class="col-sm-4">
			<textarea name="remarks" id="remarks" cols="63" rows="7"
				placeholder="描述，可不填">${role.remarks }</textarea>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<c:if test="${isDel }">
				<a href="${ctx }/cms/role/delete.do?id=${role.id}" class="btn btn-danger " >删除</a>
			</c:if>
			<c:if test="${isDel != true }">
				<a href="${ctx }/cms/role/delete.do?id=${role.id}" class="btn btn-success " >恢复</a>
			</c:if>
			<button type="button" class="btn btn-success " onclick="btn();">保存</button>
		</div>
	</div>
</form>

<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx }/ui/jquery/zTree/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="${ctx }/ui/jquery/zTree/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="${ctx }/ui/jquery/zTree/js/jquery.ztree.excheck.js"></script>

<SCRIPT type="text/javascript">
		var setting = {
			check: {
				chkboxType : {"Y": "ps", "N": "ps"},
				enable: true,
				autoCheckTrigger: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};
		
		var zNodes =[
			<c:forEach items="${menus}" var="ms">{
				<c:if test="${empty ms.menus }">
					id: '${ms.id}',
				    pId: '${ms.parentId}',
				    name: '${ms.name}',
				    open:true,
				</c:if>
				<c:if test="${not empty ms.menus}">
					id: '${ms.id}',
				    pId: '${ms.parentId}',
				    name: "${ms.name}",
				    open:true
				</c:if>
			},
				<c:forEach items="${ms.menus}" var="ms2">{
					id: '${ms2.id}',
				    pId: '${ms2.parentId}',
				    name: "${ms2.name}",
				},
				</c:forEach>   
			</c:forEach>  
		];
		
		
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			var r = JSON.parse("${rm}");
			var tree = $.fn.zTree.getZTreeObj("treeDemo");
			tj(r,tree);
		});
		
		// 初始默认勾选复选框
		function tj(r,tree){
			 for (var i = 1; i < r.length; i++) {
				var b = r[i];
				var node = tree.getNodeByParam("id",b);
				node.checked = true;
				tree.updateNode(node);
			};
		};
		
		function btn(){
			var tree = $.fn.zTree.getZTreeObj("treeDemo");
			var checkedNodes = tree.getCheckedNodes(true);  
			var nodeList = new Array();
			nodeList.push({"id":'1',"name":'jokesg'});
			for(var i=0;i < checkedNodes.length;i++){  
			    nodeList.push({"id":checkedNodes[i].id,"name":checkedNodes[i].name});  
			};
			$.ajax({  
			    type:'POST',  
			    url:'${ctx}/cms/role/save.do',  
			    dataType:'json',  
			    data:$('#gg_role').serialize()+'&nodeList='+JSON.stringify({"nodeList":nodeList,}),
			    success:function(date){
			    	alert("保存成功");
			    },
			    error:function(date){
                    alert("保存失败!" + date);  
                }
			}); 
		};
		
	</SCRIPT>
	
