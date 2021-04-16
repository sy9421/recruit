<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>更新资料</title>

<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h1 class="text-center">更新资料</h1>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form class="form-horizontal" method="post"
				action="${base_url }/user/update">
				<div class="form-group">
					<label for="username" class="col-sm-3 control-label">用户名</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="username"
							name="username" placeholder="用户名" disabled
							value="${user.username }">
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">邮&nbsp&nbsp&nbsp&nbsp箱</label>
					<div class="col-sm-9">
						<input type="email" class="form-control" id="email"
							name="email" placeholder="电子邮箱"
							value="${user.email }">
					</div>
				</div>
				<div class="form-group">
					<label for="userpwd" class="col-sm-3 control-label">密&nbsp&nbsp&nbsp&nbsp码</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="userpwd"
							name="userpwd" placeholder="密码" value="${user.userpwd }">
					</div>
				</div>
				<div class="form-group">
					<label for="tel" class="col-sm-3 control-label">手机号</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="tel"
							name="tel" placeholder="手机号"
							value="${user.tel}">
					</div>
				</div>
				
<%--				<c:if test="${user.role eq '1' }">--%>
<%--				<div class="form-group">--%>
<%--					<label for="labels" class="col-sm-3 control-label">期望职业</label>--%>
<%--					<div class="col-sm-3">--%>
<%--						<input type="text" class="form-control" id="labels"--%>
<%--							name="labels" placeholder="" value="${data.THE_USER.labels[0] }">--%>
<%--					</div>--%>
<%--					<div class="col-sm-3">--%>
<%--						<input type="text" class="form-control" id="labels"--%>
<%--							name="labels" placeholder="" value="${data.THE_USER.labels[1] }">--%>
<%--					</div>--%>
<%--					<div class="col-sm-3">--%>
<%--						<input type="text" class="form-control" id="labels"--%>
<%--							name="labels" placeholder="" value="${data.THE_USER.labels[2] }">--%>
<%--					</div>--%>
<%--				</div>--%>
<%--				</c:if>--%>

				<div class="form-group ">
					<label for="role" class="col-sm-3 control-label">角&nbsp&nbsp&nbsp&nbsp色</label>
					<div class="col-sm-9 text-center">
						<label class="radio-inline"> <input type="radio"
							name="role" id="role" value="1"
							<c:if test="${user.role eq '1'}">checked</c:if> />求职者
						</label> <label class="radio-inline"> <input type="radio"
							name="role" id="role" value="2"
							<c:if test="${user.role eq '2'}">checked</c:if>>企业
						</label>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-9 col-sm-offset-3">
						<button type="submit" class="btn btn-primary">更新</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>