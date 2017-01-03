<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/bootstrap.min.css"/>
    <link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/style.css" />
    <link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/font-awesome.css">
    <link rel='stylesheet' type='text/css' href="${ctx}/ui/gg/css/icon-font.min.css"/>
    <script src="${ctx}/ui/gg/js/jquery-1.10.2.min.js"></script>
	<link href="${ctx}/ui/gg/css/popuo-box.css" rel="stylesheet" type="text/css" media="all">
	<link href="${ctx}/ui/gg/css/jplayer.blue.monday.min.css" rel="stylesheet" type="text/css">
	<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<style type="text/css">
		span.tittle{
		    font-size: 20px;
		    margin-left: 500px;
		    color: #ea57a3;
		    position: relative;
		    top: 15px;
		}
	</style>

</head>

<body class="sticky-header left-side-collapsed">
<section>
    <%@include file="/WEB-INF/views/include/menu.jsp" %>
    <div class="main-content">
        <%@include file="/WEB-INF/views/include/top.jsp" %>
        <div id="page-wrapper">
            <div class="inner-content">
                <div class="music-left">
                    <!-- 企业精选模块 -->
                    <div class="banner-section">
                        <div class="banner">
                            <div class="callbacks_container">
                                <ul class="rslides callbacks callbacks1" id="slider4">
                                    <li>
                                        <div class="banner-img">
                                            <img src="${ctx}/ui/gg/images/11.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="banner-info">
                                            <a class="trend" href="single.html">查看详细信息</a>
                                            <h3>站内第一家族</h3>
                                            <p>金立 <span>欢迎你的加入</span></p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="banner-img">
                                            <img src="${ctx}/ui/gg/images/22.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="banner-info">
                                            <a class="trend" href="single.html">查看详细信息</a>
                                            <h3>百度有你更好</h3>
                                            <p>百度 <span>欢迎你的加入</span></p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="banner-img">
                                            <img src="${ctx}/ui/gg/images/33.jpg" class="img-responsive" alt="">
                                        </div>
                                        <div class="banner-info">
                                            <a class="trend" href="single.html">查看详细信息</a>
                                            <h3>来自马云的邀请</h3>
                                            <p>阿里巴巴 <span>欢迎你的加入</span></p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!--banner-->
                            
                            <script src="${ctx}/ui/gg/js/responsiveslides.min.js"></script>
                            <script>
                                // You can also use "$(window).load(function() {"
                                $(function () {
                                    // Slideshow 4
                                    $("#slider4").responsiveSlides({
                                        auto: true,
                                        pager: true,
                                        nav: true,
                                        speed: 500,
                                        namespace: "callbacks",
                                        before: function () {
                                            $('.events').append("<li>before event fired.</li>");
                                        },
                                        after: function () {
                                            $('.events').append("<li>after event fired.</li>");
                                        }
                                    });

                                });
                            </script>
                        </div>
                    </div>
                   <!-- 企业精选模块end -->
                   
                    <script src="${ctx}/ui/gg/js/jquery.magnific-popup.js" type="text/javascript"></script>
                    <script>
                        $(document).ready(function () {
                            $('.popup-with-zoom-anim').magnificPopup({
                                type: 'inline',
                                fixedContentPos: false,
                                fixedBgPos: true,
                                overflowY: 'auto',
                                closeBtnInside: true,
                                preloader: false,
                                midClick: true,
                                removalDelay: 300,
                                mainClass: 'my-mfp-zoom-in'
                            });
                        });
                    </script>
                    
					<div class="clearfix"></div>
					<!-- 最新模块 -->
                    <div class="albums">
                        <div class="tittle-head">
                            <h3 class="tittle">最新段子<span class="new">New</span></h3>
                            <a href="${ctx }/rms/seeAll.do?menuId=806&type=1"><span class="tittle">显示全部</span></a>
                            <div class="clearfix"></div>
                        </div>
                        <c:forEach items="${newestVideo }" var="nv">
	                        <div class="col-md-3  content-grid last-grid">
	                            <a href="${ctx }/rms/video/getVideo.do?id=${nv.id}">
	                            	<img src="${ctx}/ui/gg/images/v1.jpg" title="allbum-name">
	                            </a>
	                            <a class="button play-icon popup-with-zoom-anim" href="#small-dialog">${nv.name }</a>
	                        </div>
                        </c:forEach>
                        <div id="small-dialog" class="mfp-hide">
                            <iframe src="http://sc.chinaz.com/moban/"></iframe>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- 最新模块 End -->


                    <!-- 热门模块 -->
                    <div class="albums second">
                        <div class="tittle-head">
                            <h3 class="tittle">热门段子<span class="new">View</span></h3>
                            <a href="${ctx }/rms/seeAll.do?menuId=806&type=2"><span class="tittle">显示全部</span></a>
                            <div class="clearfix"></div>
                        </div>
                        <c:forEach items="${hot }" var="h">
                        	<div class="col-md-3 content-grid last-grid">
                        		<a href="#"><img src="${ctx}/ui/gg/images/a2.jpg" title="allbum-name"></a>
	                            <div class="inner-info">
	                            	<a href="single.html">${h.name}</a>
	                            </div>
	                        </div>
                        </c:forEach>
                        <div class="clearfix"></div>
                    </div>
                    <!-- 热门模块End -->
                    
                </div>
                
                <div class="music-right">
               		<!-- 最火艺术家模块 -->
                    <div class="video-main">
                        <div class="video-record-list">
                            <div id="jp_container_1" class="jp-video jp-video-270p" >
                                <div class="jp-type-playlist">
                                    <div id="jquery_jplayer_1" class="jp-jplayer" style="width: 480px; height: 270px;">
                                        <img id="jp_poster_0" src="${ctx }/ui/gg/images/play1.png"
                                             style="width: 480px; height: 270px; display: inline;">
                                        <video id="jp_video_0" preload="metadata" 
                                               title="1. Ellie-Goulding" style='width: 0px; height: 0px;'>
                                               <source src="${ctx }/videos/shiro.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' ></source>
                                        </video>
                                    </div>
                                    <div class="jp-gui">
                                        <div class="jp-video-play" style="display: block;">
                                            <button class="jp-video-play-icon" tabindex="0">play</button>
                                        </div>
                                        <div class="jp-interface">
                                            <div class="jp-progress">
                                                <div class="jp-seek-bar" style="width: 100%;">
                                                    <div class="jp-play-bar" style="width: 0%;"></div>
                                                </div>
                                            </div>
                                            <div class="jp-current-time" >00:00</div>
                                            <div class="jp-duration">00:18</div>
                                            <div class="jp-controls-holder">
                                                <div class="jp-controls">
                                                    <button class="jp-previous" tabindex="0">previous
                                                    </button>
                                                    <button class="jp-play" tabindex="0">play</button>
                                                </div>
                                                <div class="jp-volume-controls">
                                                    <button class="jp-mute" tabindex="0">mute</button>
                                                    <button class="jp-volume-max" tabindex="0">max
                                                        volume
                                                    </button>
                                                    <div class="jp-volume-bar">
                                                        <div class="jp-volume-bar-value" style="width: 100%;"></div>
                                                    </div>
                                                </div>
                                                <div class="jp-toggles">

                                                    <button class="jp-full-screen" tabindex="0">full
                                                        screen
                                                    </button>
                                                </div>
                                            </div>

                                            <div class="jp-details" style="display: none;">
                                                <div class="jp-title">1. Ellie-Goulding</div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="jp-playlist">
                                        <ul style="display: block;">
                                        	<c:forEach items="${users }" var="user" varStatus="status">
                                        		<li >
	                                                <div>
	                                                	<a href="javascript:;" class="jp-playlist-item-remove" style="display: none;">×</a>
	                                                    <a href="javascript:;" class="jp-playlist-item jp-playlist-current" tabindex="0">
	                                                   		${status.count }${user.nickname } <span class="jp-artist">by Pixar</span>
	                                                    </a>
	                                                </div>
	                                            </li>
                                        	</c:forEach>
                                        </ul>
                                    </div>
                                    <div class="jp-no-solution" style="display: none;">
                                        <span>更新</span>
							                                        要播放媒体，你需要更新你的浏览器到最新版本或更新您的
                                        <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <script type="text/javascript" src="${ctx}/ui/gg/js/jquery.jplayer.min.js"></script>
                    <script type="text/javascript" src="${ctx}/ui/gg/js/jplayer.playlist.min.js"></script>
                    <script type="text/javascript">
                        //<![CDATA[
                        $(document).ready(function () {

                            new jPlayerPlaylist({
                                jPlayer: "#jquery_jplayer_1",
                                cssSelectorAncestor: "#jp_container_1"
                            }, [
								<c:forEach items="${users }" var="user" varStatus="status">
									{
	                                    title: "${status.count}. ${user.nickname}",
	                                    artist: "",
	                                    mp4: "video/Ellie-Goulding.mp4",
	                                    ogv: "video/Ellie-Goulding.ogv",
	                                    webmv: "video/Ellie-Goulding.webm",
	                                    poster: "video/play1.png",
	                                },
								</c:forEach>
                            ], {
                                swfPath: "../../dist/jplayer",
                                supplied: "webmv,ogv,mp4",
                                useStateClassSkin: true,
                                autoBlur: false,
                                smoothPlayBar: true,
                                keyEnabled: true,
                            });

                        });
                        //]]>
                    </script>
					<!-- 最火艺术家排行End -->

                    <!--合作企业 -->
                    <div class="apps">
                        <h3 class="hd-tittle">合作企业</h3>

                        <div class="banner-button">
                            <a href="#"><img src="${ctx}/ui/gg/images/1.png" alt=""></a>
                        </div>
                        <div class="banner-button green-button">
                            <a href="#"><img src="${ctx}/ui/gg/images/2.png" alt=""></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
					<!--合作企业End -->
					
					<!-- VIP升级计划 -->
                    <div class="price-section">
                        <div class="pricing-inner">
                            <h3 class="hd-tittle">升级VIP</h3>
                            <div class="pricing">
                                <div class="price-top">
                                    <h3><span>$20</span></h3>
                                    <h4>每月</h4>
                                </div>
                                <div class="price-bottom">
                                    <ul>
                                        <li><a class="icon" href="#"><i class="glyphicon glyphicon-ok"></i></a><a
                                                class="text" href="#">VIP身份标识</a>
                                            <div class="clearfix"></div>
                                        </li>
                                        <li><a class="icon" href="#"><i class="glyphicon glyphicon-ok"></i></a><a
                                                class="text" href="#">全站高清视频下载</a>
                                            <div class="clearfix"></div>
                                        </li>
                                        <li><a class="icon" href="#"><i class="glyphicon glyphicon-ok"></i></a><a
                                                class="text" href="#">高清视频优先看</a>
                                            <div class="clearfix"></div>
                                        </li>
                                        <li><a class="icon" href="#"><i class="glyphicon glyphicon-ok"></i></a><a
                                                class="text" href="#">私密上传视频，让视频无懈可击</a>
                                            <div class="clearfix"></div>
                                        </li>
                                    </ul>
                                    <a href="single.html" class="price">升级</a>
                                </div>
                            </div>
                            <div class="pricing two">
                                <div class="price-top">
                                    <h3><span>$200</span></h3>
                                    <h4>每年</h4>
                                </div>
                                <div class="price-bottom">
                                    <ul>
                                        <li><a class="icon" href="#"><i class="glyphicon glyphicon-ok"></i></a><a
                                                class="text" href="#">年费VIP身份标识</a>

                                            <div class="clearfix"></div>
                                        </li>
                                        <li><a class="icon" href="#"><i class="glyphicon glyphicon-ok"></i></a><a
                                                class="text" href="#">全站高清视频下载</a>
                                            <div class="clearfix"></div>
                                        </li>
                                        <li><a class="icon" href="#"><i class="glyphicon glyphicon-ok"></i></a><a
                                                class="text" href="#">高清视频优先看</a>
                                            <div class="clearfix"></div>
                                        </li>
                                        <li><a class="icon" href="#"><i class="glyphicon glyphicon-ok"></i></a><a
                                                class="text" href="#">私密上传视频，让视频无懈可击</a>
                                            <div class="clearfix"></div>
                                        </li>
                                    </ul>
                                    <a href="single.html" class="price">升级</a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <!-- VIP升级计划End -->
                    
                </div>
                <div class="clearfix"></div>
            </div>
            
            <div class="review-slider">
                <div class="tittle-head">
                    <h3 class="tittle">网站精选段子 <span class="new"> New</span></h3>
                    <div class="clearfix"></div>
                </div>
                <ul id="flexiselDemo1">
                    <li>
                        <a href="single.html"><img src="${ctx}/ui/gg/images/v1.jpg" alt=""/></a>

                        <div class="slide-title"><h4>测试1</h4></div>
                        <div class="date-city">
                            <h5>Stealth.Lee</h5>

                            <div class="buy-tickets">
                                <a href="single.html">READ MORE</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="single.html"><img src="${ctx}/ui/gg/images/v2.jpg" alt=""/></a>

                        <div class="slide-title"><h4>Adele21</h4></div>
                        <div class="date-city">
                            <h5>Stealth.Lee</h5>

                            <div class="buy-tickets">
                                <a href="single.html">READ MORE</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="single.html"><img src="${ctx}/ui/gg/images/v3.jpg" alt=""/></a>

                        <div class="slide-title"><h4>Shomlock</h4></div>
                        <div class="date-city">
                            <h5>Stealth.Lee</h5>

                            <div class="buy-tickets">
                                <a href="single.html">READ MORE</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="single.html"><img src="${ctx}/ui/gg/images/v4.jpg" alt=""/></a>

                        <div class="slide-title"><h4>Stuck on a feeling</h4></div>
                        <div class="date-city">
                            <h5>Stealth.Lee</h5>

                            <div class="buy-tickets">
                                <a href="single.html">READ MORE</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="single.html"><img src="${ctx}/ui/gg/images/v5.jpg" alt=""/></a>

                        <div class="slide-title"><h4>测试3</h4></div>
                        <div class="date-city">
                            <h5>Stealth.Lee</h5>

                            <div class="buy-tickets">
                                <a href="single.html">READ MORE</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="single.html"><img src="${ctx}/ui/gg/images/v6.jpg" alt=""/></a>

                        <div class="slide-title"><h4>Ellie Goluding </h4></div>
                        <div class="date-city">
                            <h5>Stealth.Lee</h5>

                            <div class="buy-tickets">
                                <a href="single.html">READ MORE</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="single.html"><img src="${ctx}/ui/gg/images/v6.jpeg" alt=""/></a>

                        <div class="slide-title"><h4>测试2 </h4></div>
                        <div class="date-city">
                            <h5>Stealth.Lee</h5>

                            <div class="buy-tickets">
                                <a href="single.html">READ MORE</a>
                            </div>
                        </div>
                    </li>
                </ul>
                <script type="text/javascript">
                    $(window).load(function () {

                        $("#flexiselDemo1").flexisel({
                            visibleItems: 5,
                            animationSpeed: 1000,
                            autoPlay: true,
                            autoPlaySpeed: 3000,
                            pauseOnHover: false,
                            enableResponsiveBreakpoints: true,
                            responsiveBreakpoints: {
                                portrait: {
                                    changePoint: 480,
                                    visibleItems: 2
                                },
                                landscape: {
                                    changePoint: 640,
                                    visibleItems: 3
                                },
                                tablet: {
                                    changePoint: 800,
                                    visibleItems: 4
                                }
                            }
                        });
                    });
                </script>
                <script type="text/javascript" src="${ctx}/ui/gg/js/jquery.flexisel.js"></script>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <%@ include file="/WEB-INF/views/include/tail.jsp" %>
</section>
<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
<script src="${ctx}/ui/gg/js/scripts.js"></script>
<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
</body>
</html>