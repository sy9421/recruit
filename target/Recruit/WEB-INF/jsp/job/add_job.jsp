<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>添加职位</title>

<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4 text-center">
			<h1 class="text-center">添加职位</h1>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-10">
			<form class="form-horizontal" method="post"
				action="${base_url }/recruit/addRecruit">
				<div class="form-group">
					<label for="position" class="col-sm-3 control-label">职位</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="position"
							name="position" placeholder="职位">
					</div>
				</div>
				<div class="form-group">
					<label for="introduce" class="col-sm-3 control-label">介绍</label>
					<div class="col-sm-9">
						<textarea rows="5" class="form-control" style="resize:none;" name="introduce" id="introduce" placeholder="介绍"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="salary" class="col-sm-3 control-label">职位月薪</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="salary"
							name="salary" placeholder="月薪">
					</div>
				</div>
				<div class="form-group">
					<label for="location" class="col-sm-3 control-label">公司地点</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="location"
							name="location" placeholder="公司地点">
					</div>
				</div>
				<input  type="hidden" name="username" value="${username}">
				<br>
				<div class="form-group ">
					<div class="col-sm-6 col-sm-offset-4">
						<button type="submit" class="btn btn-primary btn-block">提交职位</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>