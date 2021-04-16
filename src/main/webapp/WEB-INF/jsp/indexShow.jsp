<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous"> -->

    <link href="${base_url }/statics/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<c:set var="base_url" value="${pageContext.request.contextPath}" scope="application"/>

<!-- 页头导航 -->
<nav class="navbar navbar-inverse">
    <div class="container">
        <a class="navbar-brand" href="${base_url }/index">招聘人才网</a>

        <div class="collapse navbar-collapse"
             id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <c:choose>
                    <c:when test="${username != null}">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                               role="button" aria-haspopup="true" aria-expanded="true">
                                <span>${username}</span>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="${base_url }/user/toProfile">个人中心</a></li>
                                <li><a href="${base_url }/recruit/toMyOrders">投递箱</a></li>
                                <li><a href="${base_url }/user/logout">退出登陆</a></li>
                            </ul>
                        </li>
                    </c:when>
                    <c:when test="${username == null}">
                        <li><a href="${base_url }/user/toLogin">登录</a></li>
                        <li><a href="${base_url }/user/toRegister">注册</a></li>
                    </c:when>
                </c:choose>
            </ul>
            <form class="navbar-form navbar-right" method="get" action="${base_url }/recruit/searchResult">
                <div class="form-group">
                    <input type="text" class="form-control " placeholder="搜索" name="position">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>
        </div>
    </div>
</nav>


<!-- <nav class="navbar navbar-inverse navbar-fixed-bottom" style="height: 10px;">
    <p class="navbar-left">
        <a href="#">Back to top</a>
    </p>
    <p class="text-center text-info">&copy; 2020-2021 Ninja &middot;</p>
</nav> -->
</body>
<script src="${base_url }/statics/js/jquery.min.js" type="text/javascript"></script>
<script src="${base_url }/statics/js/bootstrap.min.js" type="text/javascript"></script>

<!-- <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script> -->
</html>
