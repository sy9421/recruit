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

<a class="easyui-linkbutton" href="${base_url}/jobFair/toAdd">添加</a>


<div>
    <table class="table table-hover  table-responsive">
        <thead>
        <tr>
            <th>#</th>
            <th>招聘会名称</th>
            <th>时间</th>
            <th>地点</th>
            <th>操作</th>
            <th>上传文件</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${jobFairList }" var="jobFair" varStatus="idx">
        <tr>
            <td>${idx.count}</td>
            <td>${jobFair.jobfairname }</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${jobFair.date}"/></td>
            <td>${jobFair.place}</td>


            <td>
                <a class="easyui-linkbutton" href="${base_url}/jobFair/toUpdate/${jobFair.jobfairid}">编辑</a>&nbsp&nbsp
                <a class="easyui-linkbutton" href="${base_url}/jobFair/delete/${jobFair.jobfairid}">删除</a>
            </td>
            <c:forEach items="${documentList}" var="document" varStatus="idy">
            <c:choose>
                <c:when test="${document.documentname != '' and document.jobfairid eq jobFair.jobfairid}">
                   <td><a href="${base_url}/document/download/${jobFair.jobfairid}">${document.documentname}</a></td>
                </c:when>

            </c:choose>
            </c:forEach>
            <td>
                <form action="${base_url}/document/uploadFile" method="post" enctype="multipart/form-data">
                    <input type="file" name="uploadFile"/>
                    <input type="hidden" name="jobfairid" value="${jobFair.jobfairid}">
                    <input type="submit" class="easyui-linkbutton" value="提交">
                </form>
            </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
