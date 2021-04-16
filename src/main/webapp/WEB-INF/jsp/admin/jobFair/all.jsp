<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>全部招聘会信息</title>



<div style="width: 960px;margin: 0 auto;">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
            <h3 class="text-center">招聘会信息</h3>
        </div>
    </div>
    <table class="table table-hover  table-responsive">
        <thead>
        <tr>
            <th>#</th>
            <th>招聘会名称</th>
            <th>招聘会开始时间</th>
            <th>招聘会地点</th>
            <th>下载招聘会详细信息文件</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${jobFairList }" var="jobFair" varStatus="idx">
            <tr>
                <td>${idx.count}</td>
                <td>${jobFair.jobfairname }</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${jobFair.date}"/></td>
                <td>${jobFair.place }</td>

                <c:forEach items="${documentList}" var="document" varStatus="idy">
                <c:choose>
                    <c:when test="${document.documentname != '' and document.jobfairid eq jobFair.jobfairid}">
                        <td><a href="${base_url}/document/download/${jobFair.jobfairid}">下载</a></td>
                    </c:when>
                </c:choose>
                </c:forEach>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
