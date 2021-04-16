<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<link href="${base_url }/statics/css/bootstrap.min.css" rel="stylesheet">
<c:set var="base_url" value="${pageContext.request.contextPath}" scope="application"/>


<title>更新招聘会</title>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
            <h1 class="text-center">更新招聘会</h1>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-10">
            <form class="form-horizontal" method="post"
                  action="${base_url }/jobFair/update">
                <input type="hidden" name="jobfairid" value="${jobFair.jobfairid }">
                <div class="form-group">
                    <label for="jobfairname" class="col-sm-3 control-label">招聘会名称</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="jobfairname" name="jobfairname"
                               placeholder="招聘会名称" value="${jobFair.jobfairname }">
                    </div>
                </div>
                <div class="form-group">
                    <label for="date" class="col-sm-3 control-label">招聘会开始时间</label>
                    <div class="col-sm-9">
                        <input type="date" class="form-control" id="date"
                               name="date" placeholder="招聘会开始时间" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${jobFair.date}"/>"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="place" class="col-sm-3 control-label">招聘会地点</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="place" name="place"
                               placeholder="招聘会地点" value="${jobFair.place }">
                    </div>
                </div>
                <br>
                <div class="form-group ">
                    <div class="col-sm-6 col-sm-offset-4">
                        <button type="submit" class="btn btn-primary btn-block">更新</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>