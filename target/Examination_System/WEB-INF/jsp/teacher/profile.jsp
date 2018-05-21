<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入bootstrap -->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <!-- 引入JQuery  bootstrap.js-->
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
<!-- 中间主体 -->
<div  id="content" style="margin: auto 5% ">
    <div class="row">
        <jsp:include page="menu.jsp"></jsp:include>
        <div class="col-md-9 " style="margin-left: 5%">
            <div class="panel panel-default">
                <div class="panel-heading" style="padding-bottom:30px">
                    <div class="row">
                        <h1 style="text-align: center;">个人信息</h1>
                    </div>
                </div>
                <div class="panel-body">
                    <form name="reset" class="form-horizontal" role="form" action="/teacher/profile_update" style="margin: 40px 23% 30px 15%"
                          id="editfrom"
                          method="post" onsubmit="return check()">
                        <div class="form-group">
                            <label for="userID" class="col-sm-3 control-label">用户ID</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="userID" id="userID"
                                       value="${teacher.userid}" disabled>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="userName" class="col-sm-3 control-label">姓名</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="userName" id="userName"
                                       placeholder="请输入姓名" value="${teacher.username}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="sex" class="col-sm-3 control-label">性别</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="sex" id="sex"
                                       placeholder="请输入性别" value="${teacher.sex}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="birthYear" class="col-sm-3 control-label">出生日期</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="birthYear" id="birthYear"
                                       placeholder="请输入出生日期" value="<fmt:formatDate value="${teacher.birthyear}" dateStyle="medium" pattern="yyyy-MM-dd" />" disabled>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label" name="degree">学历：</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="degree" id="degree">
                                    <option value="本科">本科</option>
                                    <option value="硕士">硕士</option>
                                    <option value="博士">博士</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label" name="title">职称：</label>
                            <div class="col-sm-9">
                                <select class="form-control" name="title" id="title">
                                    <option value="普通教师">普通教师</option>
                                    <option value="助教">助教</option>
                                    <option value="讲师">讲师</option>
                                    <option value="副教授">副教授</option>
                                    <option value="教授">教授</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="grade" class="col-sm-3 control-label">入职时间</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="grade" id="grade"
                                       placeholder="请输入入职时间" value="<fmt:formatDate value="${teacher.grade}" dateStyle="medium" pattern="yyyy-MM-dd" />" disabled>
                            </div>
                        </div>

                        <div class="form-group" style="display: none">
                            <label for="collegeID" class="col-sm-3 control-label">所属学院代码</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="collegeID" id="collegeID"
                                       placeholder="请输入所属学院代码" value="${teacher.collegeid}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="collegeID" class="col-sm-3 control-label">所属学院</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="college" id="college"
                                       placeholder="请输入所属学院代码" disabled>
                            </div>
                        </div>

                        <div class="form-group" style="text-align: center;margin: 50px 0 0 20%">
                            <button class="btn btn-default" type="submit" >提交</button>
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </div>
</div>
<div class="container" id="footer">
    <div class="row">
        <div class="col-md-12"></div>
    </div>
</div>
</body>
<script>
    $("#nav li:nth-child(3)").addClass("active")
    $(document).ready(function(){
        value3=${teacher.collegeid}
        if(value3===1){
            $("#college").attr("value","计算机系")
        }else if(value3===2){
            $("#college").attr("value","设计系")
        }else if(value3===3) {
            $("#college").attr("value", "财经系")
        }
    });

    var collegeSelect = $("#college option");
    for (var i = 0; i < collegeSelect.length; i++) {
        if (collegeSelect[i].value == '${teacher.collegeid}') {
            collegeSelect[i].selected = true;
        }
    }

    var degreeSelect = $("#degree option");
    var titleSelect = $("#title option");

    for (var i = 0; i < degreeSelect.length; i++) {
        if (degreeSelect[i].value == '${teacher.degree}') {
            degreeSelect[i].selected = true;
        }
    }
    for (var i = 0; i < titleSelect.length; i++) {
        if (titleSelect[i].value == '${teacher.title}') {
            titleSelect[i].selected = true;
        }
    }
    function check() {
        alert("修改成功")
        if (reset.oldPassword.value == "" || reset.oldPassword.value == null) {
            alert("请输入旧账户密码");
            return false;
        }
        if (reset.password1.value == "" || reset.password1.value == null) {
            alert("请输入重置密码");
            return false;
        }
        if (reset.password2.value == "" || reset.password2.value == null) {
            alert("请输入再次输入密码");
            return false;
        }
        if (reset.password1.value != reset.password2.value) {
            alert("两次密码不正确");
            return false;
        }

    }
</script>
</html>