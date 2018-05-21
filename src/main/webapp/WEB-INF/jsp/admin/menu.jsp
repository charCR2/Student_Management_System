<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="col-md-2">
    <ul class="nav nav-pills nav-stacked" id="nav">
        <li><a href="/admin/showCourse">课程管理<span class="glyphicon glyphicon-book pull-right"/></a></li>
        <li><a href="/admin/showStudent">学生管理<span class="glyphicon glyphicon-flag pull-right"/></a></li>
        <li><a href="/admin/showTeacher">教师管理<span class="glyphicon glyphicon-user pull-right"/></a></li>
        <li><a href="/admin/collageInfo">院系信息<span class="glyphicon glyphicon-th pull-right"/></a></li>
        <li><a href="/admin/userPasswordRest">修改用户密码
            <sapn class="glyphicon glyphicon-repeat pull-right"/>
        </a></li>
        <li><a href="/admin/passwordRest">修改密码
            <sapn class="glyphicon glyphicon-pencil pull-right"/>
        </a></li>
        <li><a href="/admin/versionsInfo">版本信息<span class="glyphicon glyphicon-info-sign pull-right"/></a></li>
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