<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="../css/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css"/>
    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../js/loading.js"></script>
    <c:set var="base_url" value="${pageContext.request.contextPath}" scope="application"/>

</head>
<body>

<div id='loading'
     style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:#DDDDDB;text-align:center;padding-top: 20%;">

</div>

<a class="easyui-linkbutton" href="${base_url}/news/toAdd">添加</a>

<div>
    <table class="table table-hover  table-responsive">
        <thead>
        <tr>
            <th>#</th>
            <th>标题</th>
            <th>内容</th>
            <th>发布时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${newsList }" var="news" varStatus="idx">
            <tr>
                <td>${idx.count}</td>
                <td width="100">${news.newstitle }</td>
                <td width="600">${news.newscontent}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${news.time}"/></td>

                <td>
                    <a class="easyui-linkbutton" href="${base_url}/news/toUpdate/${news.newsid}">编辑</a>&nbsp&nbsp
                    <a class="easyui-linkbutton" href="${base_url}/news/deleteNews/${news.newsid}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
