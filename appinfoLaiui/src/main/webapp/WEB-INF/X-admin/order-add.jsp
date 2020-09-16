<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html class="x-admin-sm">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>欢迎页面-X-admin2.2</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/font.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/xadmin.css">
    <link href="${pageContext.request.contextPath}/statics/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/statics/lib/bootstrap/js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/statics/lib/bootstrap/js/bootstrap.min.js"></script>

    <script src="${pageContext.request.contextPath}/statics/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/xadmin.js"></script>

    <script>
        <%--JS gloable varilible--%>
        var ctx = "${ctx}";
    </script>
    <style type="text/css">
        .layui-form-item .layui-inline {
            width: 33.333%;
            float: left;
            margin-right: 0;
        }

        @media ( max-width: 1240px) {
            .layui-form-item .layui-inline {
                width: 100%;
                float: none;
            }
        }
    </style>
</head>
<body class="childrenBody">
<div class="x-nav">
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
    </a>
</div>
<form class="layui-form" style="width: 80%;" id="aaf">
    <div class="layui-form-item">
        <label class="layui-form-label">软件名称</label>
        <div class="layui-input-block">
            <input type="text" id="username" class="layui-input userName"
                   lay-verify="required" placeholder="请输入软件名称" name="username" value="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">APK名称</label>
        <div class="layui-input-block">
            <input type="password" id="password" class="layui-input userName"
                   lay-verify="pass" placeholder="请输入APK名称" name="password" value="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">支持ROM</label>
        <div class="layui-input-block">
            <input type="password" class="layui-input userName"
                   lay-verify="repass" placeholder="请输入支持的ROM" value="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">界面语言</label>
        <div class="layui-input-block">
            <input type="text" name="fullname" class="layui-input userName"
                   lay-verify="required" placeholder="请输入软件支持的界面语言" value="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">软件大小</label>
        <div class="layui-input-block">
            <input type="text" id="eMail" name="eMail" class="layui-input userName"
                   lay-verify="email" placeholder="请输入软件大小，单位是MB" value="">
            <label>（<span style="color: red">*</span>找回密码必须！）</label>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">下载次数</label>
        <div class="layui-input-block">
            <input type="text" id="" name="eMail" class="layui-input userName"
                   lay-verify="email" placeholder="请输入下载次数" value="">
            <label>（<span style="color: red">*</span>找回密码必须！）</label>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">所属平台</label>
        <div class="layui-input-block">
            <input type="text" id="birthday" class="layui-input userName"
                   name="birthday" lay-verify="required" placeholder="请输入出生日期">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">APP状态</label>
        <div class="layui-input-block">
            <input type="text" name="address" class="layui-input userName" lay-verify="required" placeholder="请输入地址"
                   value="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">应用简介</label>
        <div class="layui-input-block">
            <input type="text" name="phone" class="layui-input userName"
                   lay-verify="phone" placeholder="请输入手机号" value="">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">LOGO图片</label>
        <div class="layui-input-block">
            <input type="text" name="phone" class="layui-input userName"
                   lay-verify="phone" placeholder="请输入手机号" value="">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="addAdmin">立即提交</button>
        </div>
    </div>
</form>
<%--<script type="text/javascript" src="${ctx}/page/admin/addAdmin.js"></script>--%>
</body>
</html>