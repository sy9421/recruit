<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>我的提交</title>

<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title" style="display: inline-block;">我的提交</h3>
				</div>
				<div class="panel-body">
					<p>查看</p>
				</div>

				<table class="table table-hover  table-responsive">
					<thead>
						<tr>
							<th>#</th>
							<th>标题</th>
							<th>企业方</th>
							<th>职位</th>
							<th>状态</th>
							<th>创建时间</th>
							<th>完成时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${data.ORDERS}" var="order" varStatus="idx">
							<tr>
								<td>${idx.count}</td>
								<td>${order.title }</td>
								<td>${order.employee.userName}</td>
								<td>${order.job.title}</td>
								<td>${order.status }</td> 
								<td>${order.create_time } </td>
								<td>${order.end_time }</td>
								<td><c:if test="${order.status eq 'waiting' }">
										<a
											href="${base_url}/Orders?command=ACCEPT&order_id=${order.id}">接受</a>&nbsp&nbsp
									<a
											href="${base_url}/Orders?command=REJECT&order_id=${order.id}">拒绝</a>
									</c:if> <a
									href="${base_url}/Resume?command=GET&employee_id=${order.employee.user_id}">简历</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</div>