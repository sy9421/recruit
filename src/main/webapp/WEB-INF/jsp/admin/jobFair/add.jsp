<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="${base_url }/statics/css/bootstrap.min.css" rel="stylesheet">
<c:set var="base_url" value="${pageContext.request.contextPath}" scope="application"/>




<title>添加招聘会</title>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
            <h1 class="text-center">添加招聘会</h1>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-10">
            <form class="form-horizontal" method="post"
                  action="${base_url }/jobFair/add">
                <div class="form-group">
                    <label for="jobfairname" class="col-sm-3 control-label">招聘会名称</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="jobfairname"
                               name="jobfairname" placeholder="招聘会名称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="date" class="col-sm-3 control-label">招聘会开始时间</label>
                    <div class="col-sm-9">
                        <input type="date" class="form-control" id="date"
                               name="date" placeholder="招聘会开始时间" value="2021-01-22"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="place" class="col-sm-3 control-label">招聘会地点</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="place"
                               name="place" placeholder="招聘会地点" />
                    </div>
                </div>
                <br>
                <div class="form-group ">
                    <div class="col-sm-6 col-sm-offset-4">
                        <button type="submit" class="btn btn-primary btn-block">提交</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>