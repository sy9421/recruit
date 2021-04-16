<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>登录后台</title>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"/>

<div class="container">
	<br> <br>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h1 class="text-center">管理员登录界面</h1>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form class="form-horizontal" method="post"
				action="${base_url }/admin/toBack">
				<div class="form-group">
					<label for="user-name-label" class="col-sm-3 control-label">用户名</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="user-name-label"
							name="adminname" placeholder="用户名">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">密&nbsp&nbsp&nbsp&nbsp码</label>
					<div class="col-sm-9">
						<input type="password" class="form-control" id="inputPassword3"
							name="adminpwd" placeholder="密码">
					</div>
				</div>
				<br>
				<div class="form-group">
					<div class="col-sm-9 col-sm-offset-3">
						<button type="submit" class="btn btn-primary btn-block" >登录</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

