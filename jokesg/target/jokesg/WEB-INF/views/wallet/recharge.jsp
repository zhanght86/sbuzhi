<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>G站商城</title>
    <link href="${ctx}/ui/wallet/css/bootstrap.css" rel="stylesheet" />
    <link href="${ctx}/ui/wallet/css/font-awesome.css" rel="stylesheet" />
    <link href="${ctx}/ui/wallet/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <link href="${ctx}/ui/wallet/css/custom-styles.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   <script src="${ctx}/ui/angular/js/angular-1.2.14/angular.js"></script>
    <script src="${ctx}/ui/angular/js/MyJs.js"></script>
    <style type="text/css">
    	h4{
    		font-size: 23px;
		    color: #8A8A8A;
		    padding: 18px 10px 13px;
    	}
    	
    	.panel-left {
		    padding: 14px;
		}
    </style>
    
</head>

<body ng-app="productApp">
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar">
            <div class="navbar-header">
                <a class="navbar-brand" href="#"><i class="fa fa-comments"></i> <strong>WALLET </strong></a>
            </div>
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <strong>John Doe</strong>
                                <span class="pull-right text-muted">
                                    <em>Today</em>
                                </span>
                                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                    <em>Yesterday</em>
                                </span>
                                Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                    <em>Yesterday</em>
                                </span>
                                Lorem Ipsum has been the industry's standard dummy text ever since the...
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" >
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">28% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                            <span class="sr-only">28% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">85% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" style="width: 85%">
                                            <span class="sr-only">85% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                               <i class="fa fa-comment fa-fw"></i> 马云给你发来了一条消息
                               <span class="pull-right text-muted small">4分钟前</span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <i class="fa fa-twitter fa-fw"></i> 【系统消息】个人账户充值
                                <span class="pull-right text-muted small">12分钟前</span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>查看所有</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
                
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" >
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li>
                        	<a href="${ctx }/ims/blog.do"><i class="fa fa-user fa-fw"></i> 我的个人空间</a>
                        </li>
                        <li>
                        	<a href="#"><i class="fa fa-gear fa-fw"></i> 个人设置</a>
                        </li>
                        <li>
                        	<a href="#"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        
        <!-- 菜单 -->
        <nav class="navbar-default navbar-side">
		<div id="sideNav"><i class="fa fa-caret-right"></i></div>
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
               		<li>
                        <a href="${ctx }/a/index.do"><i class="fa fa-dashboard"></i> 返回主站</a>
                    </li>
                    <li>
                        <a href="${ctx }/wallet.do"><i class="fa fa-dashboard"></i> 我的账户</a>
                    </li>
                    <li>
                        <a class="active-menu" href="${ctx }/wallet/recharge.do"><i class="fa fa-desktop"></i>  G站商城</a>
                    </li>
					<li>
                        <a href="chart.html"><i class="fa fa-bar-chart-o"></i> 交易记录</a>
                    </li>
                    <li>
                        <a href="tab-panel.html"><i class="fa fa-qrcode"></i> 我收到的礼物</a>
                    </li>
                    
                    <li>
                        <a href="table.html"><i class="fa fa-table"></i> 我送出的礼物</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- 菜单 End -->
        
        <!-- Main  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h1 class="page-header">
							Wallet <small>账户余额</small>
						</h1>
						<ol class="breadcrumb">
							<li><a href="${ctx }/a/index.do">主站</a></li>
							<li><a href="#">钱包</a></li>
							<li class="active">G站商城</li>
						</ol>
					</div>
				</div>

				<div>
					<form class="form-inline" role="form" ng-controller="SettingsController1" method="post" action="">
						<div class="row">
								<c:forEach items="${productsAll }" var="product">
									<div class="col-md-3 col-sm-12 col-xs-12">
				                        <div class="panel panel-primary text-center no-boder bg-color-blue blue">
				                            <div class="panel-left pull-left blue">
				                                <i class="${product.pic }"></i>
				                            </div>
				                            <div class="panel-right pull-right">
												<h4>${product.name }</h4>
				                            	<strong> ￥ ${product.ralPrice }</strong>
				                            	<input name="Fruit" type="checkbox" value="${product.id }" ng-model="che${product.id }" ng-disabled="che${product.id }"
				                            	ng-click="addPdt(che${product.id },'${product.name }','${product.ralPrice }')"/>
				                            </div>
				                        </div>
				                    </div>
								</c:forEach>
			                </div>
						<div ng-repeat="pdt in pdts">
							<div class="form-group" >
								<div class="input-group">
									<div class="input-group-addon">商品名称</div>
									<input class="form-control" type="text"  ng-model="pdt.name" readonly>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<input class="form-control" type="hidden" ng-model="pdt.price" readonly>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">商品价格</div>
									<input class="form-control" type="text" value="{{pdt.price * pdt.productsNub}}" readonly>
								</div>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-addon">商品数量</div>
									<input class="form-control" type="text" value="" ng-model="pdt.productsNub" >
								</div>
							</div>
							<a href="" ng-click="removeContact(pdt)">X</a>
						</div><br/>
						<button type="submit" class="btn btn-default">支付</button>
					</form>
					
				<footer>
					<p>Copyright &copy; 2016.Author <a href="#">stealth.Lee</a> All rights reserved.</p>
				</footer>
			</div>
		</div>
	</div>
    
    <script src="${ctx}/ui/wallet/js/jquery-1.10.2.js"></script>
    <script src="${ctx}/ui/wallet/js/bootstrap.min.js"></script>
    <script src="${ctx}/ui/wallet/js/jquery.metisMenu.js"></script>
    <script src="${ctx}/ui/wallet/js/morris/raphael-2.1.0.min.js"></script>
    <script src="${ctx}/ui/wallet/js/morris/morris.js"></script>
	<script src="${ctx}/ui/wallet/js/easypiechart.js"></script>
	<script src="${ctx}/ui/wallet/js/easypiechart-data.js"></script>
    <script src="${ctx}/ui/wallet/js/custom-scripts.js"></script>
    <script>
    	var app = angular.module('productApp',[]);
    	app.controller('SettingsController1', ['$scope',function($scope){
   			$scope.pdts = [ ];
   			
//    			if(!angular.isNumber($scope.pdts.productsNub)){
//    				alert();
//    			}
   			
   			$scope.addPdt=function(pd,n,p){
   				if(!pd){
   					$scope.pdts.push({name: n, price: p, productsNub: 1});
   				}
   			};
   			
   			$scope.removeContact=function(pdt){
   				var index = $scope.pdts.indexOf(pdt);
   				$scope.pdts.splice(index, 1);
   			};
    	}]);
    	
 </script>
</body>
</html>