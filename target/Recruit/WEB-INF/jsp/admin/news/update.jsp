<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="${base_url }/statics/css/bootstrap.min.css" rel="stylesheet">
<c:set var="base_url" value="${pageContext.request.contextPath}" scope="application"/>



<title>更新新闻</title>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
            <h1 class="text-center">更新新闻</h1>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-10">
            <form class="form-horizontal" method="post"
                  action="${base_url }/news/updateNews">
                <input type="hidden" name="newsid" value="${news.newsid }">
                <div class="form-group">
                    <label for="position" class="col-sm-3 control-label">标题</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="position" name="newstitle"
                               placeholder="标题" value="${news.newstitle }">
                    </div>
                </div>
                <div class="form-group">
                    <label for="introduce" class="col-sm-3 control-label">新闻内容</label>
                    <div class="col-sm-9">
						<textarea rows="5" class="form-control" style="resize: none;"
                                  name="newscontent" id="introduce" placeholder="新闻内容"
                                  value="${news.newscontent }">${news.newscontent }</textarea>
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