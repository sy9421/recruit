<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<style>
	blockquote + p{
		font-size: 22px;
		text-indent: 50px;
	}
</style>
<title>${recruitVo.position }</title>

<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<ul class="list-inline">
						<li><h3 class="panel-title">${recruitVo.position }</h3></li>
						<li class="pull-right">
						<c:choose>
						<c:when test="${recruitVo.role eq '1' }">
						<a href="${base_url }/status/insertStatus/${recruitVo.recruitid}">投个简历</a>
						</c:when>
						<c:when test="${recruitVo.role eq '2' and recruitVo.username eq sessionScope.username}">
						<a href="${base_url }/recruit/toUpdateRecruit/${recruitVo.recruitid}">编辑</a>
						</c:when>
						</c:choose>
						</li>
					</ul>
				</div>
				<div class="panel-body">
					<div class="caption">
						<h1>${recruitVo.position }</h1>
						<ul class="list-inline">
							<li><span class="h4"> <fmt:formatDate pattern="yyyy-MM-dd" value="${recruitVo.time}"/></span></li>

						</ul>
						<ul class="list-inline">
							<li><span class="h4">企业方：${recruitVo.username }</span></li>
							<li><span class=" text-muted h5"><fmt:formatDate pattern="yyyy-MM-dd" value="${recruitVo.time}"/> 发布于招聘人才网</span></li>
						</ul>
					</div>
					<hr>
					<br>
					<div id="detail">
						<blockquote>
							<p>职位描述</p>
						</blockquote>
						<p class="h4">${recruitVo.introduce }</p>
					</div>
					<div id="salary">
						<blockquote>
							<p>薪资</p>
						</blockquote>
						<p class="h4">${recruitVo.salary}</p>
					</div>
					<div id="address">
						<blockquote>
							<p>公司地址</p>
						</blockquote>
						<p class="h4">${recruitVo.location}</p>
					</div>
				</div>

			</div>
		</div>
	</div>



</div>