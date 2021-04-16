<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/jsp/indexShow.jsp"></jsp:include>

<title>注册</title>
<script>
    $(document).ready(function () {

        $('#username,#userpwd,#tel').blur(function () {
            if(this.value == ''){
                this.style.borderColor = 'red';
            }else{
                this.style.borderColor = 'green';
            }
            if($("#username").val()==''||$("#userpwd").val()==''||$("#tel").val()==''){
                $("#submit").attr("disabled",true);
            }else{
                $("#submit").attr("disabled",false);
            }
            // this.style.borderColor = this.value == '' ? 'red' : 'green';
        })
    });
</script>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 text-center">
            <h1 class="text-center">注册新用户</h1>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <form class="form-horizontal" method="post"
                  action="${base_url }/user/logon">
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">用户名</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="username"
                               name="username" placeholder="用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label for="userpwd" class="col-sm-3 control-label">密&nbsp&nbsp&nbsp&nbsp码</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="userpwd"
                               name="userpwd" placeholder="密码">
                    </div>
                </div>
                <div class="form-group">
                    <label for="sex" class="col-sm-3 control-label">性&nbsp&nbsp&nbsp&nbsp别</label>
                    <div class="col-sm-9 text-center">
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="sex" value="男" checked>男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="sex" value="女">女
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">邮&nbsp&nbsp&nbsp&nbsp箱</label>
                    <div class="col-sm-9">
                        <input type="email" class="form-control" id="email"
                               name="email" placeholder="电子邮箱">
                    </div>
                </div>
                <div class="form-group">
                    <label for="tel" class="col-sm-3 control-label">手机号</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="tel"
                               name="tel" placeholder="手机号">
                    </div>
                </div>

                <div class="form-group ">
                    <label for="role" class="col-sm-3 control-label">角&nbsp&nbsp&nbsp&nbsp色</label>
                    <div class="col-sm-9 text-center">
                        <label class="checkbox-inline">
                            <select id="role" class="form-control" name="role">
                                <option value="1">求职者</option>
                                <option value="2">企业用户</option>
                            </select>
                        </label>
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" id="submit" class="btn btn-primary btn-block" disabled="disabled">注册</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>