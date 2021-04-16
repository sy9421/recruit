<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<style>
	blockquote + p{
		font-size: 22px;
		text-indent: 50px;
		color: #0E2D5F;
	}
</style>
<title>预览简历</title>

<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title " style="display: inline-block;">基本信息</h3>
				</div>
				<div class="panel-body">
					<div class="col-sm-2">
						<img src="${base_url}/statics/img/profile.png" alt="..."
							 class="img-responsive img-circle center-block">
					</div>
					<div class="col-sm-5 ">
						<ul class="list-unstyled">
							<li>姓名:<span>${resume.name}</span></li>
							<li>&nbsp</li>
							<li>&nbsp</li>
							<li>&nbsp</li>
							<li>手机:<span>${resume.user.tel}</span></li>

						</ul>
					</div>
					<div class="col-sm-5">
						<ul class="list-unstyled">
							<li>性别:<span>${resume.user.sex}</span></li>
							<li>&nbsp</li>
							<li>&nbsp</li>
							<li>&nbsp</li>
							<li>电子邮箱:<span>${resume.user.email}</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">简历</h3>
				</div>

				<div class="panel-body">
					<blockquote>
						<p>城市</p>
					</blockquote>
					<p>${resume.location}</p>
					<br>

					<blockquote>
						<p>个人优势</p>
					</blockquote>
					<p>${resume.advantage}</p>

					<br>
					<div>
						<blockquote>
							<p>学历</p>
						</blockquote>
						<p>${resume.education}</p>
					</div>

					<br>
					<div>
						<blockquote>
							<p>获得奖项</p>
						</blockquote>
						<p>${resume.awards}</p>
					</div>

					<br>
					<div>
						<blockquote>
							<p>工作意向</p>
						</blockquote>
						<p>${resume.intention}</p>
					</div>

					<br>
					<div>
						<blockquote>
							<p>掌握技能</p>
						</blockquote>
						<p>${resume.skill}</p>
					</div>

					<br>
				</div>
			</div>
		</div>
	</div>
	<br>
</div>