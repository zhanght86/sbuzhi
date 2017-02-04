<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>

<div class="left-side sticky-left-side">
    <div class="logo">
        <h1><a href="#">Jokes<span>g</span></a></h1>
    </div>
    <div class="logo-icon text-center">
        <a href="#">G </a>
    </div>
    <div class="left-side-inner">
       	<ul class="nav nav-pills nav-stacked custom-nav">
        	<c:forEach items="${fns:getMenuTree()}" var="m1">
        		<c:if test="${m1.isShow eq 1}">
					<c:if test="${not empty m1.menus }">
						<li class="nav-item menu-list" id="m${m1.id }">
							<a href="#"> 
								<i class="${m1.icon}"></i> 
								<span>${m1.name}</span> 
							</a>
							<c:if test="${not empty m1.menus }">
		        				<ul class="sub-menu-list">
									<c:forEach items="${m1.menus}" var="m2">
										<c:if test="${m2.isShow eq 1}">
											<li id="m${m2.id }">
												<a href="${ctx}${m2.href}">
													${m2.name}
												</a>
											</li>
										</c:if>
									</c:forEach>
		        				</ul>
	        				</c:if>
                        </li>
					</c:if>
					<c:if test="${empty m1.menus }">
						<li id="m${m1.id }">
							<a href="${ctx }${m1.href }"> 
								<i class="${m1.icon}"></i>
								<span>${m1.name}</span>
							</a>
                        </li>
					</c:if>
	        	</c:if>
        	</c:forEach>
        </ul>
    </div>
</div>