<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>


<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>搜索结果</title>

<div class="container">
	<div class="row">
		<div class="col-md-12 text-center">
			<h3>招聘信息</h3>
		</div>
	</div>
	<hr>
	<div class="row">
		<c:forEach items="${recruitList }" var="recruit">
			<div class="col-md-4">
				<div class="thumbnail">
					<div class="caption">
						<ul class="list-inline">
							<li><a href="${base_url}/recruit/toGetRecruit/${recruit.recruitid }"><h2>${recruit.position }</h2></a></li>
							<li><qoute>[<fmt:formatDate pattern="yyyy-MM-dd" value="${recruit.time}"/>]</qoute></li>
							<li class="text-right pull-right"><h3 class="text-danger">${recruit.salary }</h3></li>
						</ul>
						<ul class="list-inline">
							<li><span> ${recruit.location}</span></li>

						</ul>
						<hr style="">
						<h4>发布方：${recruit.username}</h4>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>