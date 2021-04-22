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


<div>
    <table class="table table-hover  table-responsive">
        <thead>
        <tr>
            <th>#</th>
            <th>用户名</th>
            <th>性别</th>
            <th>创建日期</th>
            <th>电子邮件</th>
            <th>电话</th>
            <th>角色</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${userList }" var="user" varStatus="idx">
            <tr>
                <td>${idx.count}</td>
                <td>${user.username }</td>
                <td>${user.sex}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${user.createdate}"/></td>
                <td>${user.email}</td>
                <td>${user.tel}</td>
                <c:if test="${user.role eq '1'}">
                    <td>求职者</td>
                </c:if>
                <c:if test="${user.role eq '2'}">
                    <td>企业用户</td>
                </c:if>

                <td>
                    <a class="easyui-linkbutton"
                       href="${base_url}/user/deleteUser/${user.username}"
                       onclick="javascript:return confirm('是否要删除?');">删除用户</a>&nbsp&nbsp
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
</body>
</html>
