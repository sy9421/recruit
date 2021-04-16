<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>我的职位</title>

<div class="container">
	<div class="row">
		<div class="col-md-12 text-center">
			<h3>我的职位</h3>
		</div>
	</div>
	<hr>
	<div class="row">
		<c:forEach items="${data.JOBS }" var="job">
			<div class="col-md-6">
				<div class="thumbnail">
					<div class="caption">
						<ul class="list-inline">
							<li><h2>${job.title }</h2></li>
							<li><qoute>[${job.create_time }]</qoute></li>
							<li class="text-right pull-right"><h3 class="text-danger">${job.salary[0] }</h3></li>
						</ul>
						<ul class="list-inline">
							<li><span> ${job.req_exp }</span></li>
							<li><span> ${job.req_edu}</span></li>
							<li><span> ${job.req_loc}</span></li>
							<li><span> ${job.req_wtime}</span></li>
						</ul>
						<ul class="list-inline">
							<li><span class="label label-info">移动</span></li>
							<li><span class="label label-info">移动</span></li>
							<li><span class="label label-info">移动</span></li>
							<li><span class="label label-info">移动</span></li>
						</ul>
						<hr style="">
						<h4>发布方：${job.employer}</h4>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>