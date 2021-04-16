<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<style>
    .first,.second,.third{
        width: 480px;
        position: relative;
    }
    .first{
        top: 60%;
        left: 10%;
    }
    .second{
        left: 40%;
        top: 75%;
    }
    .third{
        top: 90%;
        left: 10%;
    }
    .father{
        width: 1000px;
        margin: 0 auto;
    }
    * {padding: 0;margin: 0;font-family: "微软雅黑";font-size: 14px;}
    ul,li {list-style: none;}
    a {text-decoration: none;color: black;}
    .box{width: 800px;height: 400px;margin: 20px auto;overflow: hidden;position: relative;}
    .box-1 ul{}
    .box-1 ul li{width: 800px;height: 400px;position: relative;overflow: hidden;}
    .box-1 ul li img{display:block;width: 800px; height: 400px;}
    .box-1 ul li h2{position: absolute;left: 0;bottom: 0;height: 40px;width:300px;background: rgba(125,125,120,.4);text-indent: 2em;
        padding-right:500px ;font-size: 15px;line-height: 40px;text-overflow: ellipsis;overflow: hidden;
        white-space: nowrap;font-weight: normal;color: ghostwhite}
    .box-2{position: absolute;right: 10px;bottom: 14px;}
    .box-2 ul li{float:left;width: 12px;height: 12px;overflow: hidden; margin: 0 5px; border-radius: 50%;
        background: rgba(0,0,0,0.5);text-indent: 100px;cursor: pointer;}
    .box-2 ul .on{background: rgba(255,255,255,0.6);}
    .box-3 span{position: absolute;color: white;background: rgba(125,125,120,.3);width: 50px;height: 80px;
        top:50%; font-family: "宋体";line-height: 80px;font-size:60px;margin-top: -40px;
        text-align: center;cursor: pointer;}
    .box-3 .prev{left: 10px;}
    .box-3 .next{right: 10px;}
    .box-3 span::selection{background: transparent;}
    .box-3 span:hover{background: rgba(125,125,120,.8);}
</style>

<script type="text/javascript">
    window.onload = function(){
        function $(param){
            if(arguments[1] == true){
                return document.querySelectorAll(param);
            }else{
                return document.querySelector(param);
            }
        }
        var $box = $(".box");
        var $box1 = $(".box-1 ul li",true);
        var $box2 = $(".box-2 ul");
        var $box3 = $(".box-3");
        var $length = $box1.length;

        var str = "";
        for(var i =0;i<$length;i++){
            if(i==0){
                str +="<li class='on'>"+(i+1)+"</li>";
            }else{
                str += "<li>"+(i+1)+"</li>";
            }
        }
        $box2.innerHTML = str;

        var current = 0;

        var timer;
        timer = setInterval(go,3000);
        function go(){
            for(var j =0;j<$length;j++){
                $box1[j].style.display = "none";
                $box2.children[j].className = "";
            }
            if($length == current){
                current = 0;
            }
            $box1[current].style.display = "block";
            $box2.children[current].className = "on";
            current++;
        }

        for(var k=0;k<$length;k++){
            $box1[k].onmouseover = function(){
                clearInterval(timer);
            }
            $box1[k].onmouseout = function(){
                timer = setInterval(go,1000);
            }
        }
        for(var p=0;p<$box3.children.length;p++){
            $box3.children[p].onmouseover = function(){
                clearInterval(timer);
            };
            $box3.children[p].onmouseout = function(){
                timer = setInterval(go,3000);
            }
        }

        for(var u =0;u<$length;u++){
            $box2.children[u].index  = u;
            $box2.children[u].onmouseover = function(){
                clearInterval(timer);
                for(var j=0;j<$length;j++){
                    $box1[j].style.display = "none";
                    $box2.children[j].className = "";
                }
                this.className = "on";
                $box1[this.index].style.display = "block";
                current = this.index +1;
            }
            $box2.children[u].onmouseout = function(){
                timer = setInterval(go,3000);
            }
        }

        $box3.children[0].onclick = function(){
            back();
        }
        $box3.children[1].onclick = function(){
            go();
        }
        function back(){
            for(var j =0;j<$length;j++){
                $box1[j].style.display = "none";
                $box2.children[j].className = "";
            }
            if(current == 0){
                current = $length;
            }
            $box1[current-1].style.display = "block";
            $box2.children[current-1].className = "on";
            current--;
        }
    }
</script>

<div class="father">
<div class="box">
    <div class="box-1">
        <ul>
            <li>
                <a href="${base_url}/jobFair/allJobFair">
                <img src="${base_url}/statics/img/11.jpg" alt="1" class="img-responsive center-block">
                </a>
                <h2>1</h2>
            </li>
            <li>
                <a href="${base_url}/news/allNews">
                <img src="${base_url}/statics/img/22.jpg" alt="2" class="img-responsive center-block">
                </a>
                <h2>2</h2>
            </li>
        </ul>
    </div>
    <div class="box-2">
        <ul>

        </ul>
    </div>
    <div class="box-3">
        <span class="prev"> < </span>
        <span class="next"> > </span>
    </div>
</div>


<div class="first">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
            <h3 class="text-center">新闻信息</h3>
        </div>
    </div>
    <table class="table table-hover  table-responsive" >
    <c:forEach items="${newsList1 }" var="news" varStatus="idx">
        <tr>
            <td><a href="${base_url}/news/toDetail/${news.newsid}">${news.newstitle }</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td align="right"><a href="${base_url}/news/allNews">更多>>></a></td>
    </tr>
    </table>
</div>


<div class="second">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
            <h3 class="text-center">招聘会信息</h3>
        </div>
    </div>
    <table class="table table-hover  table-responsive" >
    <c:forEach items="${jobFairList1 }" var="jobFair" varStatus="idx">
        <tr>
            <td><a href="${base_url}/jobFair/allJobFair">${jobFair.jobfairname }</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td align="right"><a href="${base_url}/jobFair/allJobFair">更多>>></a></td>
    </tr>
    </table>
</div>


<div class="third">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
            <h3 class="text-center">招聘信息</h3>
        </div>
    </div>
    <table class="table table-hover  table-responsive" >

    <c:forEach items="${recruitList1 }" var="recruit" varStatus="idx">
        <tr>
            <td><a href="${base_url}/recruit/toGetRecruit/${recruit.recruitid}">${recruit.position }</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td align="right"><a href="${base_url}/recruit/searchResult">更多>>></a></td>
    </tr>
    </table>
</div>
</div>