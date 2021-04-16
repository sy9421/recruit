<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>全部职位</title>

<div class="container">
	<div class="row">
		<div class="col-md-12 text-center">
			<h3>最新职位</h3>
		</div>
	</div>
	<hr>
	<div class="row">
		<c:forEach items="${data.JOBS }" var="job">
			<div class="col-md-6">
				<div class="thumbnail">
					<div class="caption">
						<ul class="list-inline">
							<li><h2><a href="${base_url}/Jobs?command=GET&job_id=${job.id }">${job.title }</a></h2></li>
							<li><span class="text-muted">[${job.create_time }]</span></li>
							<li class="text-right pull-right"><h3 class="text-danger">${job.salary[0] }-${job.salary[1] }</h3></li>
						</ul>
						<ul class="list-inline">
							<li><span> ${job.req_exp }</span></li>
							<li><span> ${job.req_edu}</span></li>
							<li><span> ${job.req_loc}</span></li>
							<li><span> ${job.req_wtime}</span></li>
						</ul>
						<ul class="list-inline">
							<c:forEach items="${job.labels }" var="lb">
							<li><span class="label label-info">${lb}</span></li>
							</c:forEach>
						</ul>
						<hr style="">
						<h4>发布方：${job.employer}</h4>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>