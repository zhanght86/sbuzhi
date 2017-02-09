<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
<title>李建章个人简历</title>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">    
<link rel="shortcut icon" href="${ctx}/ui/vitae/">  
<link href='https://fonts.googleapis.com/css?family=Roboto:400,500,400italic,300italic,300,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- Global CSS -->
<link rel="stylesheet" href="${ctx}/ui/vitae/assets/plugins/bootstrap/css/bootstrap.min.css">   
<!-- Plugins CSS -->
<link rel="stylesheet" href="${ctx}/ui/vitae/assets/plugins/font-awesome/css/font-awesome.css">

<!-- Theme CSS -->  
<link id="theme-style" rel="stylesheet" href="${ctx}/ui/vitae/assets/css/styles.css">

</head> 

<body>

<header class="header">
	<div class="top-bar container-fluid">
		<div class="actions">
			<a class="btn hidden-xs" href="mailto:314975605@qq.com"><i class="fa fa-paper-plane" aria-hidden="true"></i> 雇佣我</a>
			<a class="btn" href="${ctx}/ui/vitae/#"><i class="fa fa-download" aria-hidden="true"></i> 下载我的简历</a>
		</div><!--//actions-->
		<ul class="social list-inline">
			<li><a href="${ctx}/ui/vitae/#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
			<li><a href="${ctx}/ui/vitae/#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li><a href="${ctx}/ui/vitae/#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
			<li><a href="${ctx}/ui/vitae/#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
			<li><a href="${ctx}/ui/vitae/#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
		</ul><!--//social-->
	</div><!--//top-bar-->
	
	<div class="intro">
		<div class="container text-center">
			<img class="profile-image" src="${ctx}/ui/vitae/assets/images/profile-image.png" alt="">
			<h1 class="name">李建章</h1>
			<div class="title">Java软件开发工程师</div>
			<div class="profile">
				<p>The people who are crazy enough to think they can change the world are the ones who do .</p>
				<p>学习能力强，能短时间内掌握新的知识框架，为人亲和，能吃苦，有良好的沟通表达能力，能快速融入团队。</p>
			</div><!--//profile-->
		</div><!--//container-->
	</div><!--//intro-->
	
	<div class="contact-info">
		<div class="container text-center">
			<ul class="list-inline">
				<li class="email"><i class="fa fa-envelope"></i><a href="mailto:314975605@qq.com">314975605@qq.com</a></li>
				<li><i class="fa fa-phone"></i> <a href="tel: 15230297756">152 3029 7756</a></li>
				<li class="website"><i class="fa fa-globe"></i><a href="#" target="_blank">www.sbuzhi.cn</a></li>
			</ul>
		</div><!--//container-->
	</div><!--//contact-info-->
	
	<div class="page-nav-space-holder hidden-xs">
		<div id="page-nav-wrapper" class="page-nav-wrapper text-center">
			<div class="container">
				<ul id="page-nav" class="nav page-nav list-inline">
					<li><a class="scrollto" href="${ctx}/ui/vitae/#experiences-section">工作经验</a></li>
					<li><a class="scrollto" href="${ctx}/ui/vitae/#eudcation-section">教育背景</a></li>
					<li><a class="scrollto" href="${ctx}/ui/vitae/#skills-section">技能</a></li>
					<li><a class="scrollto" href="${ctx}/ui/vitae/#testimonials-section">项目经验</a></li>
					<li><a class="scrollto" href="${ctx}/ui/vitae/#contact-section">获取联系</a></li>
				</ul><!--//page-nav-->
			</div>
		</div><!--//page-nav-wrapper-->
	</div>
	
</header><!--//header-->

<div class="wrapper container">
	<section id="experiences-section" class="experiences-section section">
		<h2 class="section-title">工作经验</h2>
		<div class="timeline">
			<div class="item">
				<div class="work-place">
					<h3 class="place">北京金立通信设备有限公司</h3>
					<div class="location"><i class="fa fa-map-marker" aria-hidden="true"></i>北京</div>
				</div>
				<div class="job-meta">
					<div class="title">Java软件开发工程师</div>
					<div class="time">2016.08 - 2017.02</div>
				</div><!--//job-meta-->
				<div class="job-desc">
					<ul>
						<li>金立影音大厅app管理平台</li>
						<li>金立音乐、视频app管理平台</li>
					</ul>
					<p>随着基于Android操作系统的智能手机的广泛应用，影音播放器已成为智能手机的一个必不可少的程序，广大用户迫切需要一个贴近用户、方便用户、个性化的影音播放器。
					目前，作为Android的手机用户而言，都有影音播放器的实体应用。但是，对于绝大多少而言，其界面单调，功能单一。比如，界面与其他非智能的手机没有大的区别，而功能上面，
					也就除了基本的播放控制流程之外，多上一个视频基本信息的显示，同时加上一个对预设定路径的播放列表的展示。
					因此，金立满足用户需求，开发出了一款界面友好、炫丽、功能更多的视频播放器，更好的贴近了用户</p> 
				</div><!--//job-desc-->
			</div><!--//item-->
			
			<div class="item">
				<div class="work-place">
					<h3 class="place">首山（北京）科技有限公司</h3>
					<div class="location"><i class="fa fa-map-marker" aria-hidden="true"></i>保定市</div>
				</div>
				<div class="job-meta">
					<div class="title">Java软件开发工程师</div>
					<div class="time">2015 - 2016</div>
				</div><!--//job-meta-->
				<div class="job-desc">
					<ul>
						<li>北航军事报表系统</li>
					</ul>
					<p>该系统是针对北航军工数据采集繁琐，而特地制作，该系统解决了客户实际问题，得到了客户的赞美，项目结构上分为表现层、业务层和数据访问层，层次间的依赖关系自下到上。采用的技术有SSM，Log4J，JDom，mysql,tomcat 等。其中表现层采用SSM框架开发；业务层封装业务流程，为适应业务的变更，每一业务模块均有专门的接口及实现类，利用Spring的IoC功能将 实现类注入给表现层的控制器；数据访问层借助于mybites实现,代码简洁且可适应不同的数据库。事务部分利用Spring的声明式事务管理。</p> 
				</div><!--//job-desc-->
			</div><!--//item-->
			
		</div><!--//timeline-->
		
	</section><!--//section-->
	
	<section id="eudcation-section" class="education-section section">
		<h2 class="section-title">教育背景</h2>
		<div class="row">
			<div class="item col-xs-12 col-sm-4">
				<div class="item-inner">
					<h3 class="degree">保定职业技术学院</h3>
					<div class="education-body">
						软件技术专业
					</div><!--//education-body-->
					<div class="time">2014 - 至今</div>
					<div class="desc">
						<ui>
							<li>在校期间学习成绩优异，专业成绩平均分在95以上，专业排名在年级前三</li>
							<li>曾荣获院校级一等及国家级一等奖学金</li>
							<li>担任学生会体育部部长、院青联干士</li>
							<li>参加2015年中国技能大赛-河北省电子信息职业技能大赛“西元杯”程序设计大赛</li>
							
						</ui>
					</div>
				</div><!--//item-inner-->
			</div><!--//item-->
			<div class="item col-xs-12 col-sm-4">
				<div class="item-inner">
					<h3 class="degree">MSc Applied Mathematics</h3>
					<div class="education-body">
						University of Bristol
					</div><!--//education-body-->
					<div class="time">2010 - 2016</div>
					<div class="desc">
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient 
					</div>
				</div><!--//item-inner-->
			</div><!--//item-->
			<div class="item col-xs-12 col-sm-4">
				<div class="item-inner">
					<h3 class="degree">BSc Creative Technology</h3>
					<div class="education-body">
						University of Bristol
					</div><!--//education-body-->
					<div class="time">2007 - 2010</div>
					<div class="desc">
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient 
					</div>
				</div><!--//item-inner-->
			</div><!--//item-->
			
		</div><!--//row-->
	</section><!--//section-->
	
	
	<section id="skills-section" class="skills-section section text-center">
		<h2 class="section-title">专业技能</h2>
		<div class="top-skills">
			<h3 class="subtitle">顶级技能</h3>
			<div class="row">
				<div class="item col-xs-12 col-sm-4">
					<div class="item-inner">
						<div class="chart-easy-pie text-center">
							<div class="chart-theme-1 chart" data-percent="98"><span>98</span>%</div>
						</div>
						<h4 class="skill-name">Java</h4>
						<div class="level">Expert, 2 years</div>
						<div class="desc">
							<ui>
								<li>熟练掌握Java常见开源框架：ssm、JFinal</li>
								<li>熟练JavaEE编程相关技术：Jdbc、Servlet、Jsp等</li>
							</ui>
						</div>
					</div><!--//item-inner-->
				</div><!--//item-->
				<div class="item col-xs-12 col-sm-4">
					<div class="item-inner">
						<div class="chart-easy-pie text-center">
							<div class="chart-theme-1 chart" data-percent="85"><span>85</span>%</div>
						</div>
						<h4 class="skill-name">Mysql &amp; Sql Server</h4>
						<div class="level">Advanced, 2 years</div>
						<div class="desc">
							<ui>
								<li>掌握常见的数据库：Mysql、SQL SERVER.</li>
								<li>熟练使用sql语句</li>
							</ui>
						</div>
					</div><!--//item-inner-->
				</div><!--//item-->
				<div class="item col-xs-12 col-sm-4">
					<div class="item-inner">
						<div class="chart-easy-pie text-center">
							<div class="chart-theme-1 chart" data-percent="90"><span>90</span>%</div>
						</div>
						<h4 class="skill-name">工具</h4>
						<div class="level">Expert, 2 years</div>
						<div class="desc">
							<ui>
								<li>熟练使用Eclipse、IDEA编程工具</li>
								<li>熟练使用Junit、Debug等工具进行代码调试</li>
								<li>熟练使用git、svn代码调试工具</li>
							</ui>
						</div>
					</div><!--//item-inner-->
				</div><!--//item-->
			</div><!--//row-->
		</div><!--//top-skills-->
		
		<div class="other-skills">
			<h3 class="subtitle">其它技能</h3>
			<div class="misc-skills">
				<span class="skill-tag">shiro</span>
				<span class="skill-tag">Redis</span>
				<span class="skill-tag">阿里云存储OSS</span>
				<span class="skill-tag">.net</span>
				<span class="skill-tag">JavaScript</span>
				<br>
				<span class="skill-tag">Bootstrap</span>
				<span class="skill-tag">Jquery Validate</span>
				<span class="skill-tag">AngularJs</span>
				<span class="skill-tag">JQuery</span>
				<span class="skill-tag">ajax</span>
			</div>
		</div><!--//other-skills-->
		
	</section><!--//skills-section-->
	
	<section id="testimonials-section" class="testimonials-section section">
		<h2 class="section-title">项目经验</h2>
		
		<div id="testimonials-carousel" class="testimonials-carousel carousel slide" data-interval="8000">
			
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#testimonials-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#testimonials-carousel" data-slide-to="1"></li>
				<li data-target="#testimonials-carousel" data-slide-to="2"></li>
			</ol>
			
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<blockquote class="quote">      
						<i class="fa fa-quote-left"></i>                            
						<p>个人视频网站系统</p>
					</blockquote>    
					<div class="source">
						<div class="name">
							软件架构：<span class="position">ssm + mysql + jeety/tomcat</span>
						</div>
						<div class="name">
							项目描述：<span class="position">随着计算机网络在中国的广泛普及，视频点播以是近年来新兴的传媒方式， 它是在原有的文字、图片等静态信息浏览的基础上，增加了视频和音频的动态浏览等多媒体点播服务。在线点播系统就是提供了这一服务的具有动态交互功能的管理信息系统，它实现了一个互联网上的在线影院。用户可以在线浏览视频信息并根据自己的喜好单击播放。这样，使用户足不出户就可观看电影，随时随地地浏览网页，摆脱了传统电视收看时间的局限性，以及传统CD播放资源的局限性，极大丰富了人们的网络生活。</span>
						</div>
						<div class="name">
							责任描述：<span class="position">
								<ui>
									<li>书写项目设计文档、开发文档以及数据库设计文档</li>
									<li>设计并开发数据库</li>
									<li>编写前端及服务器端代码</li>
									<li>项目测试及上线</li>
								</ui>
							</span>
						</div>
						<div class="name">
							技术描述：<span class="position">
								<ui>
									<li>项目采用maven控制开发</li>
									<li>框架采用ssm + shiro</li>
									<li>采用Ehche、Redis缓存</li>
									<li>采用阿里云存储OSS存储项目资源</li>
									<li>使用ajax+json方式提交</li>
									<li>使用jquery插件：Jquery Validate、Jquery zTree</li>
									<li>使用AngularJs</li>
									<li>使用sql的Limit分页、Timer定时任务、Email邮件发送</li>
								</ui></span>
						</div>
						<div class="name">
							Git：<span class="position"><a href="https://github.com/stealth-Lee/sbuzhi">https://github.com/stealth-Lee/sbuzhi</a></span>
						</div>
						
					</div><!--//source-->   
												   
				</div><!--//item-->
				<div class="item">
					<blockquote class="quote">
						<p><i class="fa fa-quote-left"></i>金立影音APP管理后台</p>
					</blockquote>
					<div class="source">
						<div class="name">
							软件架构：<span class="position">ssm + mysql</span>
						</div>
						<div class="name">
							项目描述：<span class="position">随着基于Android操作系统的智能手机的广泛应用，影音播放器已成为智能手机的一个必不可少的程序，广大用户迫切需要一个贴近用户、方便用户、个性化的影音播放器。 目前，作为Android的手机用户而言，都有影音播放器的实体应用。但是，对于绝大多少而言，其界面单调，功能单一。比如，界面与其他非智能的手机没有大的区别，而功能上面， 也就除了基本的播放控制流程之外，多上一个视频基本信息的显示，同时加上一个对预设定路径的播放列表的展示。 因此，金立满足用户需求，开发出了一款界面友好、炫丽、功能更多的视频播放器，更好的贴近了用户</span>
						</div>
						<div class="name">
							责任描述：<span class="position">
								<ui>
									<li>参与项目代码编写及功能测试</li>
									<li>提供金立视频管理公共接口</li>
									<li>项目部署上线</li>
								</ui>
							</span>
						</div>
						<div class="name">
							技术描述：<span class="position">
								<ui>
									<li>项目采用maven控制开发</li>
									<li>表现层jquery easy ui</li>
									<li>使用ajax+json方式提交</li>
									<li>使用sql的Limit分页</li>
									<li>采用阿里云存储OSS存储项目资源</li>
								</ui></span>
						</div>
					</div><!--//source-->   
		   
				</div><!--//item-->
				<div class="item">
					<blockquote class="quote">
						<p><i class="fa fa-quote-left"></i>北航军事报表系统</p>
					</blockquote>       
					<div class="source">
						<div class="name">
							软件架构：<span class="position">jeesite</span>
						</div>
						<div class="name">
							项目描述：<span class="position">该系统是针对北航军工数据采集繁琐，而特地制作，该系统解决了客户实际问题，得到了客户的赞美，项目结构上分为表现层、业务层和数据访问层，层次间的依赖关系自下到上。采用的技术有SSM，Log4J，JDom，mysql,tomcat 等。其中表现层采用SSM框架开发；业务层封装业务流程，为适应业务的变更，每一业务模块均有专门的接口及实现类，利用Spring的IoC功能将 实现类注入给表现层的控制器；数据访问层借助于mybites实现,代码简洁且可适应不同的数据库。事务部分利用Spring的声明式事务管理。</span>
						</div>
						<div class="name">
							责任描述：<span class="position">
								<ui>
									<li>参与项目前期的分析设计、撰写项目文档</li>
									<li>负责元器件模块的开发及测试</li>
									<li>评审演示</li>
								</ui>
							</span>
						</div>
						<div class="name">
							技术描述：<span class="position">
								<ui>
									<li>表现层Bootstrap</li>
									<li>使用ajax+json方式提交</li>
									<li>框架采用jeestie相关技术</li>
								</ui></span>
						</div>
					</div><!--//source-->          
				</div><!--//item-->
				
			</div><!--//carousel-inner-->
		</div><!--//testimonials-carousel-->
		
	</section><!--//section-->
	
	<section id="contact-section" class="contact-section section">
		<h2 class="section-title">获取联系</h2>
		<div class="intro">
			<img class="profile-image" src="${ctx}/ui/vitae/assets/images/profile-image.png" alt="">
			<div class="dialog">
				<p>“十年磨一剑，今日把示君”。尊敬的领导，雄鹰展翅急需一方天空，良马驰骋尚待一方路径。贵单位所开创的业绩和远大的开拓前景我仰慕已久。
				 深信我会用自己勤勉的汗水与同仁一道为贵公司的锦绣前程奋斗不息，奉献我的年轻的热忱和才智!我真诚希望成为其中一员。
				“良禽择本而栖，贤臣择主而事”。 相信您的信任和我的实力的结合将会为我们带来共同的成功。我拥有一个健康自然的我，自信而不狂妄，稳重而富有创新，成熟而充满朝气。
				 我愿凭着这个自然的我以最诚挚的心和其他大学生一起接受您的挑选。
				“英雄有几称夫子?忠义怕公号帝君”，现实社会中，人才如恒河沙数，即宇宙之神也难以一一捡拾，我是否能够脱颖而出，惟有实践验见真值。
				 回首过去，是我勇于探索勤于求学的知识蕴积之路;展望未来，将是我乐于奉献于业务的事业开拓之途。
				 随信附上个人求职简历，蒙阁下抽暇一顾此函，不胜感激! 谨祝工作顺利！</p>
				<p><strong>项目Git地址:</strong></p>
				<ul class="list-unstyled service-list">
					<li><i class="fa fa-check" aria-hidden="true"></i> <a href="https://github.com/stealth-Lee/sbuzhi">https://github.com/stealth-Lee/sbuzhi</a></li>
				</ul>
				<p>写邮件 <a href="mailto:314975605@qq.com">用代码构筑梦想!</a> 或打电话给我 <a href="tel:15230297756">152 3029 7756</a></p>
				<ul class="social list-inline">
					<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-github-alt" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
				</ul><!--//social-->
			</div><!--//diaplog-->
		</div><!--//intro-->

	</section><!--//section-->
	
</div><!--//wrapper-->

<footer class="footer text-center">
	<div class="container">
		<small class="copyright">Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="mailto:314975605@qq.com">用代码构筑梦想!</a></small>
	</div><!--//container-->
</footer>

<!-- Javascript -->          
<script type="text/javascript" src="${ctx}/ui/vitae/assets/plugins/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${ctx}/ui/vitae/assets/plugins/bootstrap/js/bootstrap.min.js"></script>  
<script type="text/javascript" src="${ctx}/ui/vitae/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${ctx}/ui/vitae/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script> 
<script type="text/javascript" src="${ctx}/ui/vitae/assets/plugins/easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
<script type="text/javascript" src="${ctx}/ui/vitae/assets/plugins/imagesloaded.pkgd.min.js"></script> 
<script type="text/javascript" src="${ctx}/ui/vitae/assets/plugins/isotope.pkgd.min.js"></script>  

<!-- custom js -->
<script type="text/javascript" src="${ctx}/ui/vitae/assets/js/main.js"></script>

<!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
<script src="${ctx}/ui/vitae/assets/js/demo/style-switcher.js"></script>     

</body>
</html>