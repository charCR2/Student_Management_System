<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>教师信息显示</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入bootstrap -->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-select.css">
    <!-- 引入JQuery  bootstrap.js-->
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/bootstrap-select.js"></script>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
</head>
<style>
    .input-group-btn button{
        border-top-right-radius: 0;
        border-bottom-right-radius: 0;
    }
</style>
<body>
<!-- 顶栏 -->
<jsp:include page="top.jsp"></jsp:include>
<!-- 中间主体 -->
<div  id="content" style="margin: auto 5% ">
    <div class="row">
        <jsp:include page="menu.jsp"></jsp:include>
        <div class="col-md-9 " style="margin-left: 5%">
            <div class="panel panel-default">
                <div class="panel-heading" style="padding-bottom:30px">
                    <div class="row">
                        <h1 class="col-md-5">教师名单管理</h1>
                        <form class="bs-example bs-example-form col-md-5" role="form" style="margin: 20px 0 10px 0;"
                              action="/admin/selectTeacher" id="form1" method="post">
                            <div class="row">
                                <div class="col-lg-10">
                                    <div class="input-group">
                                        <div class="input-group-btn">
                                            <div >
                                                <select id="usertype" name="usertype" class="selectpicker show-tick form-control" title="分类" data-live-search="false">
                                                    <option value=0>学号</option>
                                                    <option value=1>姓名</option>
                                                    <option value=2>院系</option>
                                                </select>
                                            </div>
                                        </div >
                                        <input type="text" class="form-control" id="subInput" placeholder="按分类查找" name="findByName">
                                        <span class="input-group-addon btn" onclick="document.getElementById('form1').submit"
                                              id="sub">搜索</span>
                                    </div>
                                </div><!-- /input-group -->
                            </div>
                        </form>
                        <button class="btn btn-default col-md-2" style="margin-top: 20px"
                                onClick="location.href='/admin/addTeacher'">
                            添加教师信息
                            <sapn class="glyphicon glyphicon-plus"/>
                        </button>

                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>教师编号</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>出生年份</th>
                        <th>学历</th>
                        <th>职称</th>
                        <th>入职年份</th>
                        <th>学院</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${teacherList}" var="item">
                        <tr>
                            <td>${item.userid}</td>
                            <td>${item.username}</td>
                            <td>${item.sex}</td>
                            <td><fmt:formatDate value="${item.birthyear}" dateStyle="medium"/></td>
                            <td>${item.degree}</td>
                            <td>${item.title}</td>
                            <td><fmt:formatDate value="${item.grade}" dateStyle="medium"/></td>
                            <td>${item.collegeName}</td>
                            <td>
                                <button class="btn btn-default btn-xs btn-info"
                                        onClick="location.href='/admin/editTeacher?id=${item.userid}'">修改
                                </button>
                                <button class="btn btn-default btn-xs btn-danger btn-primary"
                                        onClick="confirmd(${item.userid})">删除
                                </button>
                                <!--弹出框-->
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="panel-footer">
                    <c:if test="${pagingVO != null}">
                        <nav style="text-align: center">
                            <ul class="pagination">
                                <li><a href="/admin/showTeacher?page=${pagingVO.upPageNo}">&laquo;上一页</a></li>
                                <li class="active"><a href="">${pagingVO.curentPageNo}</a></li>
                                <c:if test="${pagingVO.curentPageNo+1 <= pagingVO.totalCount}">
                                    <li>
                                        <a href="/admin/showTeacher?page=${pagingVO.curentPageNo+1}">${pagingVO.curentPageNo+1}</a>
                                    </li>
                                </c:if>
                                <c:if test="${pagingVO.curentPageNo+2 <= pagingVO.totalCount}">
                                    <li>
                                        <a href="/admin/showTeacher?page=${pagingVO.curentPageNo+2}">${pagingVO.curentPageNo+2}</a>
                                    </li>
                                </c:if>
                                <c:if test="${pagingVO.curentPageNo+3 <= pagingVO.totalCount}">
                                    <li>
                                        <a href="/admin/showTeacher?page=${pagingVO.curentPageNo+3}">${pagingVO.curentPageNo+3}</a>
                                    </li>
                                </c:if>
                                <c:if test="${pagingVO.curentPageNo+4 <= pagingVO.totalCount}">
                                    <li>
                                        <a href="/admin/showTeacher?page=${pagingVO.curentPageNo+4}">${pagingVO.curentPageNo+4}</a>
                                    </li>
                                </c:if>
                                <li><a href="/admin/showTeacher?page=${pagingVO.totalCount}">最后一页&raquo;</a></li>
                            </ul>
                        </nav>
                    </c:if>
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
<script type="text/javascript">
    $("#nav li:nth-child(3)").addClass("active")
    $(document).ready(function(){
        $("#usertype").change(function(){
            var value = $('#usertype').val();
            if(value==="0"){
                $("#subInput").attr("placeholder","按编号查找老师")
            }else if(value==="1"){
                $("#subInput").attr("placeholder","按姓名查找老师")
            }else if(value==="2"){
                $("#subInput").attr("placeholder","查找整个学院的老师")
            }
        });
    });
    $("#sub").click(function () {
        var value = $('#usertype').val();
        var value2 =$("#subInput").val()
        if(!value){
            alert("请选择分类")
            return false
        }else if(!value2){
            alert("请输入关键词")
            return false
        }else {
            $("#form1").submit();
        }
    });
    <c:if test="${pagingVO != null}">
    if (${pagingVO.curentPageNo} == ${pagingVO.totalCount}) {
        $(".pagination li:last-child").addClass("disabled")
    }
    ;

    if (${pagingVO.curentPageNo} == ${1}) {
        $(".pagination li:nth-child(1)").addClass("disabled")
    }
    ;
    </c:if>

    function confirmd(userid) {
        var msg = "您真的确定要删除吗？！";
        if (confirm(msg) == true) {
            location.href='/admin/removeTeacher?id='+userid
            return true;
        } else {
            return false;
        }
    }

    $("#sub").click(function () {
        $("#form1").submit();
    });
</script>
</html>