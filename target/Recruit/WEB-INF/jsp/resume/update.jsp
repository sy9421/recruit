<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>填写简历</title>

<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4 text-center">
			<h1 class="text-center">填写简历</h1>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-7 col-md-offset-2">
			<form class="form-horizontal" method="post"
				action="${base_url }/resume/update">
				<div class="form-group">
					<label for="username" class="col-sm-3 control-label">用户名</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="username"
							name="username" placeholder="用户名" readonly
							value="${username}">
					</div>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-3 control-label">姓&nbsp&nbsp&nbsp&nbsp名</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="name" name="name"
							placeholder="姓名" value="${resume.name}">
					</div>
				</div>
				<div class="form-group">
					<label for="location" class="col-sm-3 control-label">所在城市</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="location"
							name="location" placeholder="所在城市"
							value="${resume.location}">
					</div>
				</div>
				<div class="form-group">
					<label for="advantage" class="col-sm-3 control-label">个人优势</label>
					<div class="col-sm-9">
						<textarea rows="5" class="form-control" style="resize: none;"
							name="advantage" id="advantage" placeholder="个人优势" value="${resume.advantage}">${resume.advantage}</textarea>
					</div>
				</div>

				<div class="form-group">
					<label for="education" class="col-sm-3 control-label">学历</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="education"
							   name="education" placeholder="学历"
							   value="${resume.education}">
					</div>

					<label for="awards" class="col-sm-3 control-label">获得奖项</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="awards"
							   name="awards" placeholder="获得奖项"
							   value="${resume.awards}">
					</div>

					<label for="intention" class="col-sm-3 control-label">工作意向</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="intention"
							   name="intention" placeholder="工作意向"
							   value="${resume.intention}">
					</div>
					<label for="skill" class="col-sm-3 control-label">掌握技能</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="skill"
							   name="skill" placeholder="掌握技能"
							   value="${resume.skill}">
					</div>


				</div>
				<br>
				<div class="form-group">
					<div class="col-sm-9 col-sm-offset-3">
						<button type="submit" class="btn btn-primary btn-block">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>