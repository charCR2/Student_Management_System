<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <style type="text/css">
        body {
            background: url(images/a.jpg) no-repeat;
        }
        #login-box {
            padding: 35px;
            color: #fff;
        }
        a{
            color:#999;
            text-decoration: none;
        }
        a:hover{
            cursor:pointer;
            color:#6f5499;
            background-color:white;
        }
        #foot{
            position: absolute;
            left: 58%;
            bottom: 0;
        }
        .left-login{
            float: left;
            background-size: cover;
            width:60%;
            background:rgba(23,23,23,0.5);
            height:400px
        }
        .left-login .div_img{
            margin: 80px 0 0 0 ;
            width: 100%;
            text-align: center;

        }
        .left-login .div_span{
            margin: 80px 0 0 0 ;
            width: 100%;
            text-align: center;
        }
        .left-login span {
            color: #ffffff ;
            font-size: 3rem ;
            font-weight: bold
        }
        .right-login{
            float: left;
            width: 40%;
            padding: 20px 6% 27px 6%;
            background-color:#fff;
            height:400px
        }
        .right-login input{
            -webkit-appearance: none;
            background-color: #fff;
            border: 1px solid #fff;
            border-bottom :1px solid #ccc;
            box-sizing: border-box;
            color: #606266;
            display: inline-block;
            font-size: inherit;
            height: 30px;
            line-height: 1;
            outline: 0;
            transition: border-color .2s cubic-bezier(.645,.045,.355,1);
            width: 100%;
        }
        .ms-title{
            font-size: 15px;
            color: #7577bf;
            margin-bottom: 20px;
            border-left :5px solid  #0F97E5;
        }
        .login-foot{
            float: right;
            color: #000;
            margin-top: 80px;
            font-size: 12px;
        }
        #pass{
            display: none;
            position: absolute;
            width: 180px;
            left: 100%;
            top: 51%;
        }
    </style>
</head>
<body>
<div class="container" id="top">
    <div class="row" style="margin-top: 100px; ">
        <div class="col-md-2"></div>
        <div class="col-md-8" id="login-box">
            <div class="left-login">
                <div class="div_img">
                    <img src="./images/logo(2).png">
                </div>
                <div class="div_span">
                    <span>学生信息管理系统</span>
                </div>
            </div>
            <div class="right-login">
                <form class="form-horizontal" role="form" action="/login" id="from1" method="post">
                    <div class="form-group">
                        <h1 class="ms-title">
                            <span style="padding-left:5px ">登录</span>
                        </h1>
                        <br/>
                        <div class="col-sm-12">
                            <input type="text" id="userID" placeholder="请输入您的用户ID" name="username">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input type="password"  id="password" placeholder="请输入密码" name="password">
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <button id="fat-btn" class="btn btn-primary" style="width: 100%;margin: 40px 0 0 0" data-loading-text="Loading..." onclick="document.getElementById('from1').submit()"
                                type="button">登录
                        </button>

                    </div>
                    <div class="login-foot">
                        忘记密码？<a href="#" class="color:#000" onclick="obt()">点击这里</a>
                    </div>
                </form>
            </div>
            <div id="pass">
                <br/>
                <br/>
                <h6>管理员账号：admin</h6>
                <h6>老师账号：1001至1003任意</h6>
                <h6>学生账号：10001-10006任意</h6>
                <h6>默认密码均为123</h6>
            </div>
            <div class="col-md-2">
            </div>
        </div>
    </div>
</div>
<footer id="foot">
    <td align="center">CopyRight &copy; 2018 <a
            href="http://www.jsu.edu.cn/">吉首大学</a>&nbsp;数学与统计学院 &nbsp;陈睿 QQ:981470928
        Email:981470928@qq.com<br>
    </td>
</footer>
<script>
    $(function() {
        $(".btn").click(function(){
            $(this).button('loading').delay(1000).queue(function() {
                // $(this).button('reset');
                // $(this).dequeue();
            });
        });
    });
    function  obt() {
        var self=document.getElementById("pass");
        self.setAttribute("style",'display:block')
    }
</script>
</body>
</html>