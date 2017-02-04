<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title></title>
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
         <div class="albums info1">
              <div class="tittle-head">
                  <h3 class="tittle">###<span class="new">收藏</span></h3>
                  <div class="clearfix"></div>
              </div>
              <c:forEach items="${Jokesg }" var="fo">
	               <div class="col-md-3  content-grid last-grid">
	                   <a href="${ctx }/rms/video/getVideo.do?id=${fo.id}">
	                   	<img  src="${ctx }/rms/pic/getPic.do?url=${fo.picUrl}" alt="${fo.name }" title="allbum-name" width="300" height="200">
	                   </a>
	                   <a class="button play-icon popup-with-zoom-anim" href="#small-dialog">${fo.name }</a>
	               </div>
              </c:forEach>
          </div>
	</div>
	<%@ include file="/WEB-INF/views/include/tail.jsp"%>
	</section>
	<script src="${ctx}/ui/gg/js/jquery.nicescroll.js"></script>
	<script src="${ctx}/ui/gg/js/scripts.js"></script>
	<script src="${ctx}/ui/gg/js/bootstrap.min.js"></script>
</body>
</html>