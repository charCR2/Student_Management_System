<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="col-md-2">
    <ul class="nav nav-pills nav-stacked" id="nav">
        <li><a href="/student/showCourse">所有课程<span class="badge pull-right">26</span></a></li>
        <li><a href="/student/selectedCourse">已选课程<span class="badge pull-right">5</span></a></li>
        <li><a href="/student/overCourse">已修课程<span class="badge pull-right">8</span></a></li>
        <li><a href="/student/passwordRest">修改密码
            <sapn class="glyphicon glyphicon-pencil pull-right"/>
        </a></li>
        <li>
            <a href="/student/profile">个人信息<sapn class="glyphicon glyphicon-floppy-open pull-right"/></a>
        </li>
        <li><a href="#" data-toggle="modal" data-target="#myModal">退出系统
            <sapn class="glyphicon glyphicon-log-out pull-right"/>
            <!-- <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                 开始演示模态框
             </button>
             <!-- 模态框（Modal） -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                警告
                            </h4>
                        </div>
                        <div class="modal-body">
                            确定退出系统？
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" onclick="logout()">确定</button>
                            <button type="button" class="btn btn-default" >关闭</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>
        </a></li>
    </ul>
</div>
<script>
    function  logout(){
        window.location.href="/logout"
    }
</script>