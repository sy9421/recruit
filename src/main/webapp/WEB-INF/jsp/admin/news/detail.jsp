<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>${news.newstitle }</title>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <ul class="list-inline">
                        <li><h3 class="panel-title">${news.newstitle }</h3></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <div class="caption">
                        <h1>${news.newstitle }</h1>
                        <ul class="list-inline">
                            <li><span class=" text-muted h5"><fmt:formatDate pattern="yyyy-MM-dd" value="${news.time}"/> 发布于招聘人才网</span>
                            </li>
                        </ul>
                    </div>
                    <hr>
                    <br>
                    <div id="newscontent">
                        <blockquote>
                            <p>新闻内容</p>
                        </blockquote>
                        <p class="h4" style="font-size: 16px;text-indent: 36px;line-height: 22px;">${news.newscontent }</p>
                    </div>
                    <br>
                    <br>
                    <div id="message">
                        <blockquote>
                            <p>留言内容</p>
                        </blockquote>
                        <table class="table table-hover  table-responsive">
                            <tbody>
                            <c:forEach items="${messageList }" var="message" varStatus="idx">
                                <c:choose>
                                    <c:when test="${message.newsid eq news.newsid and message.result eq '1'}">
                                            <tr>
                                                <td style="font-size: 12px;border: none;text-indent: 24px;">用户名:${message.username }</td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 24px;border: none;">${message.messagecontent}</td>
                                            </tr>
                                        <tr>
                                            <td>

                                            </td>
                                        </tr>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <br>
                    <br>
                    <div class="form-group">
                        <blockquote>
                            <p>留言</p>
                        </blockquote>

                        <br>
                        <form action="${base_url }/message/insertMessage/${news.newsid}">
                            <div class="col-sm-9">
                                <textarea rows="5" class="form-control" style="resize:none;" name="messagecontent"
                                          id="messagecontent" placeholder="请输入留言,审核后即可显示"></textarea>
                            </div>
                            <div class="form-group ">
                                <div class="col-sm-6 col-sm-offset-1">
                                    <button type="submit" class="btn btn-primary btn-block">留言</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>


</div>