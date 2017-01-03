<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>我的钱包</title>
    <link href="${ctx}/ui/wallet/css/bootstrap.css" rel="stylesheet" />
    <link href="${ctx}/ui/wallet/css/font-awesome.css" rel="stylesheet" />
    <link href="${ctx}/ui/wallet/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <link href="${ctx}/ui/wallet/css/custom-styles.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <a class="navbar-brand" href="#"><i class="fa fa-comments"></i> <strong>WALLET </strong></a>
            </div>
            
            <!-- 顶层菜单 -->
            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Doe</strong>
                                    <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
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
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
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
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
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
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> 马云给你发来了一条消息
                                    <span class="pull-right text-muted small">4分钟前</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 【系统消息】个人账户充值
                                    <span class="pull-right text-muted small">12分钟前</span>
                                </div>
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
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
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
      		<!-- 顶层菜单 End -->
        </nav>
        
        <!-- 左侧菜单 -->
        <nav class="navbar-default navbar-side" role="navigation">
		<div id="sideNav" href=""><i class="fa fa-caret-right"></i></div>
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
               		<li>
                        <a href="${ctx }/a/index.do"><i class="fa fa-dashboard"></i> 返回主站</a>
                    </li>
                    <li>
                        <a class="active-menu" href="${ctx }/wallet.do"><i class="fa fa-dashboard"></i> 我的账户</a>
                    </li>
                    <li>
                        <a href="${ctx }/wallet/recharge.do"><i class="fa fa-desktop"></i> G站商城</a>
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
        <!-- 左侧菜单 End -->
        
        <!-- /. NAV SIDE  -->
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
							<li class="active">我的账户</li>
						</ol>
					</div>
				</div>

				<div class="row">
					<c:forEach items="${products }" var="pro">
						<div class="col-xs-6 col-md-3">
							<div class="panel panel-default">
								<div class="panel-body easypiechart-panel">
									<h4>${pro.name }</h4>
									<div class="easypiechart" id="easypiechart-blue"
										data-percent="100">
										<span class="percent">${pro.userProducts.number }</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<a href="${ctx }/wallet/recharge.do" type="button" class="btn btn-primary btn-lg">G币充值</a>
				
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
</body>
</html>