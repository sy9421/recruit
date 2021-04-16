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
            <th>用户</th>
            <th>内容</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${messageList }" var="message" varStatus="idx">
            <c:choose>
                <c:when test="${message.result eq '0'}">


                    <tr>
                        <td>${idx.count}</td>
                        <td>${message.username }</td>
                        <td>${message.messagecontent}</td>
                        <td>
                            <a class="easyui-linkbutton"
                               href="${base_url}/message/updateMessage/${message.messageid}/pass">通过</a>&nbsp&nbsp
                            <a class="easyui-linkbutton"
                               href="${base_url}/message/updateMessage/${message.messageid}/no">不显示</a>
                        </td>
                    </tr>
                </c:when>
            </c:choose>
        </c:forEach>

        </tbody>
    </table>
</div>
</body>
</html>
