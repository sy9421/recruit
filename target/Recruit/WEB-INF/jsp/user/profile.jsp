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
							电子邮箱:<span>${user.email}</span>
						</p>
						<br>
						<p>
							性别:<span>${user.sex}</span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" style="display: inline-block;">简历</h3>
					<p style="display: inline-block; float: right;">
						<a href="${base_url }/resume/toPreview">预览</a>
						<a href="${base_url }/resume/toUpdate">编辑</a>
					</p>
				</div>

				<div class="panel-body">
					<blockquote>
						<p>姓名</p>
					</blockquote>
					<p>${resume.name}</p>
					<blockquote>
						<p>个人优势</p>
					</blockquote>
					<p>${resume.advantage}</p>

					<br>
					<div>
						<blockquote>
							<p>所在城市</p>
						</blockquote>
						<p>${resume.location}</p>
					</div>

					<br>
					<div>
						<blockquote>
							<p>教育经历</p>
						</blockquote>
						<p>${resume.education}</p>
					</div>

					<br>
					<div>
						<blockquote>
							<p>在校期间获得的奖项</p>
						</blockquote>
						<p>${resume.awards}</p>
					</div>

					<br>
					<div>
						<blockquote>
							<p>求职意向</p>
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
	<div class="row">
		<div class="col-md-4 col-md-push-4"></div>
	</div>
</div>