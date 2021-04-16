<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>


<title>个人中心</title>

<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title " style="display: inline-block;">基本信息</h3>
					<p style="display: inline-block; float: right;">
						<a href="${base_url }/user/toUpdate">编辑</a>
					</p>
				</div>
				<div class="panel-body">
					<div class="col-sm-2">
						<img src="${base_url}/statics/img/profile.png" alt="..."
                             class="img-responsive center-block">
					</div>
					<div class="col-sm-5">
						<br>
						<p>
							用户名:<span>${user.username}</span>
						</p>
						<br>
						<p>
							手机号:<span>${user.tel}</span>
						</p>
					</div>
					<div class="col-sm-5">
						<br>
						<p>
							邮箱:<span>${user.email}</span>
						</p>
						<br>
						<p>
							性别:<span>${user.sex}</span>
						</p>
						<%-- <p>
							附加简历:<a href="${THE_USER.resume_url}"></a>
						</p> --%>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" style="display: inline-block;">职位</h3>
					<p style="display: inline-block; float: right;">
						<a href="${base_url }/recruit/toAddRecruit">添加</a>
					</p>
				</div>
				<div class="panel-body">
				</div>

				<table class="table table-hover  table-responsive">
					<thead>
						<tr>
							<th>#</th>
							<th>职位</th>
							<th>发布日期</th>
							<th>介绍</th>
							<th>工资</th>
							<th>地点</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${recruitList }" var="recruit" varStatus="idx">
							<tr>
								<td>${idx.count}</td>
								<td><a href="${base_url}/recruit/toGetRecruit/${recruit.recruitid }">${recruit.position }</a></td>

								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${recruit.time}"/></td>
								<td>${recruit.introduce}</td>
								<td>${recruit.salary}</td>
								<td>${recruit.location}</td>
								<td>
									<a href="${base_url}/recruit/toUpdateRecruit/${recruit.recruitid}">编辑</a>&nbsp&nbsp
									<a href="${base_url}/recruit/deleteRecruit/${recruit.recruitid}">删除</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-4 col-md-push-4"></div>
	</div>
</div>