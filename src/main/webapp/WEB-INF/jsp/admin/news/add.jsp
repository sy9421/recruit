<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="${base_url }/statics/css/bootstrap.min.css" rel="stylesheet">
<c:set var="base_url" value="${pageContext.request.contextPath}" scope="application"/>




<title>添加新闻</title>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
            <h1 class="text-center">添加新闻</h1>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-10">
            <form class="form-horizontal" method="post"
                  action="${base_url }/news/addNews">
                <div class="form-group">
                    <label for="newstitle" class="col-sm-3 control-label">标题</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="newstitle"
                               name="newstitle" placeholder="标题">
                    </div>
                </div>
                <div class="form-group">
                    <label for="newscontent" class="col-sm-3 control-label">内容</label>
                    <div class="col-sm-9">
                        <textarea rows="5" class="form-control" style="resize:none;" name="newscontent" id="newscontent" placeholder="内容"></textarea>
                    </div>
                </div>

                <br>
                <div class="form-group ">
                    <div class="col-sm-6 col-sm-offset-4">
                        <button type="submit" class="btn btn-primary btn-block">提交新闻</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>