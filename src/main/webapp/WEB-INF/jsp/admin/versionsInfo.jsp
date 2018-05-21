<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>版本信息</title>
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
                        <h1 class="col-md-5">版本信息</h1>
                    </div>
                </div>
                <!-- LEFT COLUMN -->
                <div class="profile-left" style="margin-top: 25px;background:#fff">
                    <!-- PROFILE HEADER -->
                    <div class="profile-header">
                        <div class="overlay"></div>
                        <div class="profile-main">
                            <img src="/images/header.jpg" class="img-circle" alt="Avatar" style="width: 70px;height: 70px">
                            <h3 class="name">陈  睿</h3>
                            <span class="online-status status-available">header</span>
                        </div>

                    </div>
                    <!-- END PROFILE HEADER -->
                    <!-- PROFILE DETAIL -->
                    <div class="profile-detail">
                        <div class="profile-info">
                            <h4 class="heading">Basic Info</h4>
                            <ul class="list-unstyled list-justify">
                                <li>Birthdate <span>24 Apr. 2018</span></li>
                                <li>QQ <span>981470928</span></li>
                                <li>Email <span>981470928@qq.com</span></li>
                                <li>Website <span><a href="http://www.jsu.edu.cn" target="_blank">www.jsu.edu.cn</a></span></li>
                            </ul>
                        </div>
                        <div class="profile-info">
                            <h4 class="heading">About</h4>
                            <p>这个人很懒，什么都没留下。联系本人请加qq或者回复邮件即可</p>
                        </div>
                    </div>
                </div>
                    <!-- END PROFILE DETAIL -->
                    <!-- TABBED CONTENT -->
                    <div class="profile-right">
                    <div class="custom-tabs-line tabs-line-bottom left-aligned">
                        <ul class="nav" role="tablist">
                            <li class="active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">版本信息</a></li>
                            <li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">感谢</a></li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab-bottom-left1">
                            <ul class="list-unstyled activity-timeline">
                                <li>
                                    <i class="fa fa-comment activity-icon"></i>
                                    <p>部分前端样式功能的添加（增加学生学院的分类）<span class="timestamp">2018年5月1日</span></p>
                                </li>
                                <li>
                                    <i class="fa fa-comment activity-icon"></i>
                                    <p>测试拦截器<span class="timestamp">2018年4月15日</span></p>
                                </li>
                                <li>
                                    <i class="fa fa-comment activity-icon"></i>
                                    <p>添加分类信息，学生、老师、管理员<span class="timestamp">2018年3月28日</span></p>
                                </li>
                                <li>
                                    <i class="fa fa-comment activity-icon"></i>
                                    <p>总体前端样式设计<span class="timestamp">2018年3月24日</span></p>
                                </li>
                                <li>
                                    <i class="fa fa-comment activity-icon"></i>
                                    <p>增加登录页面<span class="timestamp">2018年3月5日</span></p>
                                </li>
                                <li>
                                    <i class="fa fa-cloud-upload activity-icon"></i>
                                    <p>设计数据库 <span class="timestamp">2018年3月1日</span></p>
                                </li>
                                <li>
                                    <i class="fa fa-plus activity-icon"></i>
                                    <p>添加数据库连接代码，增加添加查询代码 <span class="timestamp">2018年2月12日</span></p>
                                </li>
                                <li>
                                    <i class="fa fa-check activity-icon"></i>
                                    <p>新建工程 <span class="timestamp">2018年1月24日</span></p>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-pane fade" id="tab-bottom-left2">
                            <div class="table-responsive">
                                <table class="table project-table">
                                    <thead>
                                    <tr>
                                        <th>文章或项目</th>
                                        <th>作者</th>
                                        <th>来源</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><a href="#">Student-Information-Management-System</a></td>
                                        <td><img src="/images/header1.jpg" alt="Avatar" class="avatar img-circle"> <a href="#">Vinci</a></td>
                                        <td><span class="label label-success">GITHUB</span></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">Klorofil</a></td>
                                        <td><img src="/assets/img/user-medium.png" alt="Avatar" class="avatar img-circle"> <a href="#">Samuel Gold</a></td>
                                        <td><span class="label label-warning">模板之家</span></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">Project 123GO</a></td>
                                        <td><img src="/assets/img/user1.png" alt="Avatar" class="avatar img-circle"> <a href="#">Antonius</a></td>
                                        <td><span class="label label-success">ACTIVE</span></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">Wordpress Theme</a></td>
                                        <td><img src="/assets/img/user2.png" alt="Avatar" class="avatar img-circle"> <a href="#">Michael</a></td>
                                        <td><span class="label label-success">ACTIVE</span></td>
                                    </tr>
                                    <tr>
                                        <td><a href="#">Redesign Landing Page</a></td>
                                        <td><img src="/assets/img/user5.png" alt="Avatar" class="avatar img-circle" /> <a href="#">Jason</a></td>
                                        <td><span class="label label-default">CLOSED</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- END TABBED CONTENT -->
                </div>
                <!-- END RIGHT COLUMN -->
        </div></div></div></div>
</body>
<script>
    $("#nav li:nth-child(7)").addClass("active")
</script>
</html>