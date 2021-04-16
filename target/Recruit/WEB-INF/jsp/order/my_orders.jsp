<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>投递箱</title>

<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title" style="display: inline-block;">投递箱</h3>
                </div>
                <div class="panel-body">
                    <p>简历投递箱</p>
                </div>

                <table class="table table-hover  table-responsive">
                    <thead>
                    <tr>
                        <th>#</th>
                        <!-- <th>标题</th> -->
                        <th>职位</th>
                        <th>
                            <c:choose>
                                <c:when test="${user.role eq '1' }">企业方</c:when>
                                <c:when test="${user.role eq '2' }">求职者</c:when>
                            </c:choose>
                        </th>
                        <th>状态</th>
                        <th>创建时间</th>
                        <th>完成时间</th>
                        <c:choose>
                            <c:when test="${user.role eq '2' }">
                                <th style="text-indent: 20px;">操作</th>
                            </c:when>
                        </c:choose>

                        <th>查看简历</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${recruitList}" var="recruit" varStatus="idx">
                        <tr>
                            <td>${idx.count}</td>
                            <td><a href="${base_url}/recruit/toGetRecruit/${recruit.recruitid }">${recruit.position}</a>
                            </td>
                            <td><c:choose>
                                <c:when test="${user.role eq '1' }">${recruit.username}</c:when>
                                <c:when test="${user.role eq '2' }">${recruit.status.username}</c:when>
                            </c:choose></td>
                            <td>
                                <c:choose>
                                    <c:when test="${recruit.status.status eq 'waiting' }">等待结果</c:when>
                                    <c:when test="${recruit.status.status eq 'aspect' }"><span
                                            style="color:green">通过</span></c:when>
                                    <c:when test="${recruit.status.status eq 'reject' }"><span
                                            style="color:red">未通过</span></c:when>
                                </c:choose>
                            </td>
                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${recruit.status.start }"/></td>
                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${recruit.status.end }"/></td>

                            <c:if test="${(recruit.status.status eq 'waiting') and (user.role eq '2') }">
                                <td>
                                    <a href="${base_url}/status/aspect/${recruit.status.recruitid}/${recruit.status.username}">接受</a>&nbsp&nbsp
                                    <a href="${base_url}/status/reject/${recruit.status.recruitid}/${recruit.status.username}">拒绝</a>
                                </td>
                            </c:if>&nbsp&nbsp&nbsp&nbsp&nbsp


                            <td><a href="${base_url }/resume/seePreview/${recruit.status.username} ">简历</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>