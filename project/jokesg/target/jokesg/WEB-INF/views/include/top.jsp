<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<link rel="stylesheet" type="text/css" media="all" href="${ctx}/ui/gg/css/audio.css">
<style>
	.welcome{
		width: 146px;
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
	}
</style>

<script src="${ctx}/ui/gg/js/classie.js"></script>
<script src="${ctx}/ui/gg/js/uisearch.js"></script>
<script>
	new UISearch(document.getElementById('sb-search'));
</script>
<script type="text/javascript">
    $(function () {
        $('#audio-player').mediaelementplayer({
            alwaysShowControls: true,
            features: ['playpause', 'progress', 'volume'],
            audioVolume: 'horizontal',
            iPadUseNativeControls: true,
            iPhoneUseNativeControls: true,
            AndroidUseNativeControls: true
        });
    });
</script>
<script type="text/javascript" src="${ctx}/ui/gg/js/mediaelement-and-player.min.js"></script>

<div class="header-section">
    <a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
    <div class="menu-right">
        <div class="profile_details">
            <div class="col-md-4 serch-part">
                <div id="sb-search" class="sb-search">
                    <form action="#" method="post">
                        <input class="sb-search-input" placeholder="Search" type="search" name="search" id="search">
                        <input class="sb-search-submit" type="submit" value="">
                        <span class="sb-icon-search"> </span>
                    </form>
                </div>
            </div>

            <div class="col-md-4 player">
                <div class="audio-player">
                    <audio id="audio-player" controls="controls">
                        <source src="media/Blue Browne.ogg" type="audio/ogg"/>
                        <source src="media/Blue Browne.mp3" type="audio/mpeg"/>
                        <source src="media/Georgia.ogg" type="audio/ogg"/>
                        <source src="media/Georgia.mp3" type="audio/mpeg"/>
                    </audio>
                </div>
                <ul class="next-top">
                    <li><a class="ar" href="#"> <img src="${ctx}/ui/gg/images/arrow.png" alt=""/></a></li>
                    <li><a class="ar2" href="#"><img src="${ctx}/ui/gg/images/arrow2.png" alt=""/></a> </li>
                </ul>
            </div>
            
            <div class="col-md-4 login-pop">
            	<div id="loginpop">
					<shiro:guest>
						<a class="a-left" href="${ctx}/login.do"> 
							<span>登陆<i class="arrow glyphicon glyphicon-chevron-right"></i></span>
						</a>
						<a class="a-left" href="${ctx}/signup.do"> 
							<span>注册<i class="fa fa-sign-in"></i></span>
						</a>
					</shiro:guest>
					<shiro:user>
						<div>
							<div class="dropdown a-left">
								<a id="dLabel" type="button" data-toggle="dropdown" style='display:inline-block'>
									<span class="welcome">
										您好，<shiro:principal property="name"/>
										<i class="fa fa-chevron-right"></i>
									</span>
								</a>
								<ul class="dropdown-menu">
									<li><a href="${ctx }/ims/blog.do">我的空间</a></li>
									<li><a href="${ctx }/wallet.do">我的钱包</a></li>
									<li><a href="${ctx }/ims/info.do">个人信息</a></li>
								</ul>
							</div>
							<a class="a-left" href="${ctx}/logout.do"> 
								<span>退出 <i class="fa fa-sign-in"></i></span>
							</a>
						</div>
						
					</shiro:user>
				</div>
            </div>
        </div>
    </div>
</div>