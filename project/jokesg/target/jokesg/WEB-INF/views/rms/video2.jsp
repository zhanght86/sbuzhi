<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<video width="700px" height="380px" controls="controls">
 	<source  src="${ctx }/rms/video/videoPlay.do?url=${url}" type="video/mp4"> 
</video>