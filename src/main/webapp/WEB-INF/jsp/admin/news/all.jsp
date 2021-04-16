<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>全部新闻</title>

<div class="row">
    <div class="col-md-4 col-md-offset-4 text-center">
        <h3 class="text-center">全部新闻</h3>
    </div>
</div>

<div style="width: 960px;margin: 0 auto;">
    <table class="table table-hover  table-responsive">
        <thead>
        <tr>
            <th>#</th>
            <th>标题</th>
            <th style="text-align: right">发布时间</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${newsList }" var="news" varStatus="idx">
            <tr>
                <td>${idx.count}</td>
                <td><a href="${base_url}/news/toDetail/${news.newsid}">${news.newstitle }</a></td>
                <td style="text-align: right"><fmt:formatDate pattern="yyyy-MM-dd" value="${news.time}"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
