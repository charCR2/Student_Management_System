<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>学员信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入bootstrap -->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="/assets/css/main.css">
    <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
    <link rel="stylesheet" href="/assets/css/demo.css">
    <!-- 引入JQuery  bootstrap.js-->
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<style>
    .left-login{
        background-size: cover;
        height:400px
    }
    .right-login{
        background-size: cover;
        height:400px
    }
    .left-login .div_img{
        margin:80px 0 0 0 ;
        width: 100%;
        text-align: center;

    }
    .left-login .div_span{
        margin: 50px 0 0 0 ;
        width: 100%;
        text-align: center;
    }
    .right-login .div_img{
        margin: 80px 0 0 0 ;
        width: 100%;
        text-align: center;

    }
    .right-login .div_span{
        margin: 50px 0 0 0 ;
        width: 100%;
        text-align: center;
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
            <div class="panel panel-default"  >
                <div class="panel-heading"  >
                    <div class="row">
                        <h1 class="col-md-5">学院信息</h1>
                    </div>
                </div>
                <div class="col-sm-6 left-login">
                    <div class="div_img">
                        <img src="../../../images/计算机.png">
                    </div>
                    <div class="div_span">
                        <span>计算机系</span>
                        <span style="display: block;margin-top: 20px">电话号码：020888888</span>
                    </div>
                </div>
                <div class="col-sm-6 right-login">
                    <div class="div_img">
                        <img src="../../../images/财务统计.png">
                    </div>
                    <div class="div_span">
                        <span>财经系</span>
                        <span style="display: block;margin-top: 20px">电话号码：020777777</span>
                    </div>
                </div>

                <div class="col-sm-6 right-login">
                    <div class="div_img">
                        <img src="../../../images/设计.png">
                    </div>
                    <div class="div_span">
                        <span>设计系</span>
                        <span style="display: block;margin-top: 20px">电话号码：020666666</span>
                    </div>
                </div>
                <!-- END RIGHT COLUMN -->
            </div></div></div></div>
</body>
<script>
    $("#nav li:nth-child(4)").addClass("active")
</script>
</html>