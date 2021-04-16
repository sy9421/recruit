<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="base_url" value="${pageContext.request.contextPath}" scope="application"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="${base_url }/statics/dist/css/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="${base_url }/statics/dist/css/icon.css"/>
    <link rel="stylesheet" type="text/css" href="${base_url }/statics/dist/css/main.css"/>

    <script type="text/javascript" src="${base_url }/statics/dist/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${base_url }/statics/dist/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${base_url }/statics/dist/js/loading.js"></script>
    <script type="text/javascript">
        $(function() {
            $("#tab").tabs({
                onSelect:function(title){
                    var childs = $(".left-list-item");
                    for (var i = 0; i < childs.length; i++) {
                        $(childs[i]).removeClass("left-list-item-selected");
                        if($(childs[i]).attr("title")==title){
                            $(childs[i]).addClass("left-list-item-selected");
                        }
                    }
                }
            });
            $(".left-list-item").on("click",function() {
                var title = $(this).attr("title");
                var url = $(this).attr("url");
                if ($("#tab").tabs("exists", title)) {
                    $("#tab").tabs("select", title);
                } else {
                    var content = "<iframe scrolling='auto' frameborder='0' src='"+ url+ "' width='100%' height='100%' ></iframe>";
                    $("#tab").tabs("add", {
                        title : title,
                        content : content,
                        closable : true

                    });
                }
            });

        });
    </script>
</head>
<div id='loading'
     style="position:absolute;z-index:1000;top:0px;left:0px;width:100%;height:100%;background:rgb(247,248,248);text-align:center;padding-top: 20%;">
</div>
<body class="easyui-layout" id="b1">

<div region="north" class="header">
    <h3 style="line-height:20px; text-align: center;">后台管理系统</h3>
</div>
<div region="south" class="footer">Copyright &copy;2020</div>
<div region="west" class="left" title="后台管理系统">
    <div class="left-list">
        <div class="left-list-item" url="${base_url }/statics/dist/admin/news.jsp" title="新闻管理">
            <a class="easyui-linkbutton" plain="true">新闻管理</a>
        </div>
        <div class="left-list-item" url="${base_url }/statics/dist/admin/jobFair.jsp" title="招聘会管理">
            <a class="easyui-linkbutton" plain="true">招聘会管理</a>
        </div>
        <div class="left-list-item" url="${base_url }/statics/dist/admin/message.jsp" title="留言管理">
            <a class="easyui-linkbutton" plain="true">留言管理</a>
        </div>

    </div>

</div>
<div region="center" class="right">
    <div id="tab" fit="true">
        <div title="主页">
            欢迎${admin.adminname}访问后台管理界面
        </div>
    </div>
</div>


</body>

</html>