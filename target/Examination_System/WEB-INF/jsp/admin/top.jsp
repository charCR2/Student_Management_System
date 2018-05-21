<%--
  Created by IntelliJ IDEA.
  User: Vinci
  Date: 2017/6/30
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--shiro标签--%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!-- 顶栏 -->
<style>
    #header {

        width: 100%;
        top: 0;
        box-shadow: 0 0 1px rgba(0,0,0,0.25);
        transition: background-color 0.3s ease-in-out;
        background-color: #fff;
        height: 65px;
        padding: 10px 60px;
        position: relative;
        z-index: 100;
        float: left;
    }
</style>

            <!--加入导航条标题-->
            <div id="header" style="margin-bottom: 30px">　
                <div class="navbar-header">
                    <img style="float: left" src="../../../images/logo(3).png">
                    　 <a href="##" class="navbar-brand">学生信息管理系统(管理员端)</a>
                    　
                </div>
                <form action="##" class="navbar-form navbar-right" rol="search">
                    <div class="dropdown">
                        <a href="#" class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1"
                                data-toggle="dropdown" style="margin-right: 20px; ">
                            <%--登录用户名--%>
                            <span class="glyphicon glyphicon-user"> 您好：<shiro:principal/></span>
                        </a>
                    </div>

                </form>
            </div>


