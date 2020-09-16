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
    基础信息
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
    </a>
</div>
<form class="layui-form" style="width: 80%;" id="aaf">
    <input name="id" value="${appInfo.id}" hidden>
    <div class="layui-form-item">
        <label class="layui-form-label">软件名称</label>
        <div class="layui-input-block">
            <input type="text" id="username" class="layui-input userName"
                   lay-verify="required" name="softwareName" value="${appInfo.softwareName}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">APK名称</label>
        <div class="layui-input-block">
            <input type="text" id="password" class="layui-input userName"
                   readonly lay-verify="required" name="apkNameRead" value="${appInfo.APKName}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">支持ROM</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input userName" name="supportROM"
                   lay-verify="required" value="${appInfo.supportROM}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">界面语言</label>
        <div class="layui-input-block">
            <input type="text" name="interfaceLanguage" class="layui-input userName"
                   lay-verify="required" value="${appInfo.interfaceLanguage}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">软件大小</label>
        <div class="layui-input-block">
            <input type="text" name="softwareSize" class="layui-input userName"
                   lay-verify="required" value="${appInfo.softwareSize}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">下载次数</label>
        <div class="layui-input-block">
            <input type="text" name="downloads" class="layui-input userName"
                   lay-verify="required" value="${appInfo.downloads}">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">所属平台</label>
        <div class="layui-input-block">
            <select name="flatformId"
                    lay-verify="required">
                <%--全部的一级菜单--%>
                <c:forEach var="appFlat" items="${appFlatForms}">
                    <option value="${appFlat.id}" <c:if test="${appFlat.valueName} == ${appInfo.flatformName}">
                    aria-selected
                </c:if>">${appFlat.valueName}</option>
                </c:forEach>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">一级分类</label>
        <div class="layui-input-block">
            <select name="categoryLevel1" id="queryCategoryLevel1"
                    lay-filter="queryCategoryLevel1"
                    lay-verify="required">
                <%--全部的一级菜单--%>
                <c:forEach var="category" items="${categoryListFirst}">
                    <option value="${category.id}" <c:if
                        test="${category.categoryName} == ${appInfo.categoryLevel1Name}">
                    aria-selected
                </c:if>">${category.categoryName}</option>
                </c:forEach>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label ">二级分类</label>
        <div class="layui-input-block">
            <select name="categoryLevel2" id="queryCategoryLevel2"
                    lay-filter="queryCategoryLevel2"
                    lay-verify="required">
                <%--全部的二级菜单--%>
                <c:forEach var="category" items="${categoryListSecond}">
                    <option value="${category.id}"<c:if
                            test="${category.categoryName} == ${appInfo.categoryLevel2Name}">
                        aria-selected
                    </c:if>>${category.categoryName}</option>
                </c:forEach>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label ">三级分类</label>
        <div class="layui-input-block">
            <select name="categoryLevel3" id="queryCategoryLevel3" lay-verify="required">
                <%--全部的三级分类--%>
                <c:forEach var="category" items="${categoryListThird}">
                    <option value="${category.id}"<c:if
                            test="${category.categoryName} == ${appInfo.categoryLevel3Name}">
                        selected
                    </c:if> >${category.categoryName}</option>
                </c:forEach>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">APP状态</label>
        <div class="layui-input-block">
            <input readonly type="text" name="statusNameRead" class="layui-input userName" lay-verify="required"
                   value="${appInfo.statusName}">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">应用简介</label>
        <div class="layui-input-block">
            <textarea  name="appInfo" class="layui-input userName" name="appInfo"
                   lay-verify="required" >${appInfo.appInfo}</textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">LOGO图片</label>
        <div class="layui-input-block">
            <input type="text" name="phone" class="layui-input userName"
                   lay-verify="required" value="">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn layui-layer-close layui-layer-close" id="test" lay-submit="" lay-filter="updateAdmin">
                立即提交
            </button>
        </div>
    </div>
</form>
<%--<script type="text/javascript" src="${ctx}/page/admin/addAdmin.js"></script>--%>

</body>
<script>layui.use(['laydate', 'form', 'laypage'],
    function () {
        var laydate = layui.laydate;
        var form = layui.form;
        var $ = layui.$;
        form.on('submit(updateAdmin)',function (data) {
            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/appInfoController/app-modify.do",
                data: data.field,
                datatype: "json",
                success: function (data) {
                    alert(data.key)
                    //修改成功
                    if(data.key){
                        //关闭弹窗
                        var frameIndex = parent.layer.getFrameIndex(window.name);
                        parent.layer.close(frameIndex);
                    }else{
                        //修改失败
                        alert("修改失败请联系管理员")
                    }
                }
            })

        })
        //三级菜单刷新
        form.on('select(queryCategoryLevel1)', function () {
            var queryCategoryLevel1 = $("#queryCategoryLevel1").val();
            if (queryCategoryLevel1 != '' && queryCategoryLevel1 != null) {
                $.ajax({
                    type: "GET",//请求类型
                    url: "${pageContext.request.contextPath}/appCategory/categoryChildList.json",//请求的url
                    data: {pid: queryCategoryLevel1},//请求参数
                    dataType: "json",//ajax接口（请求url）返回的数据类型
                    success: function (data) {//data：返回数据（json对象）
                        $("#queryCategoryLevel2").html("");
                        var options = "<option value=\"\">--请选择--</option>";
                        for (var i = 0; i < data.length; i++) {
                            options += "<option value=\"" + data[i].id + "\">" + data[i].categoryName + "</option>";
                        }
                        $("#queryCategoryLevel2").html(options);
                        form.render();
                    },
                    error: function (data) {//当访问时候，404，500 等非200的错误状态码
                        alert("加载二级分类失败！");
                    }
                });
            } else {
                $("#queryCategoryLevel2").html("");
                var options = "<option value=\"\">--请选择--</option>";
                $("#queryCategoryLevel2").html(options);
            }
            $("#queryCategoryLevel3").html("");
            var options = "<option value=\"\">--请选择--</option>";
            $("#queryCategoryLevel3").html(options);
        });

        form.on('select(queryCategoryLevel2)', function () {
            var queryCategoryLevel2 = $("#queryCategoryLevel2").val();
            if (queryCategoryLevel2 != '' && queryCategoryLevel2 != null) {
                $.ajax({
                    type: "GET",//请求类型
                    url: "${pageContext.request.contextPath}/appCategory/categoryEndChildList.json",//请求的url
                    data: {pid: queryCategoryLevel2},//请求参数
                    dataType: "json",//ajax接口（请求url）返回的数据类型
                    success: function (data) {//data：返回数据（json对象）
                        $("#queryCategoryLevel3").html("");
                        var options = "<option value=\"\">--请选择--</option>";
                        for (var i = 0; i < data.length; i++) {
                            //alert(data[i].id);
                            //alert(data[i].categoryName);
                            options += "<option value=\"" + data[i].id + "\">" + data[i].categoryName + "</option>";
                        }
                        $("#queryCategoryLevel3").html(options);
                        form.render();
                    },
                    error: function (data) {//当访问时候，404，500 等非200的错误状态码
                        alert("加载三级分类失败！");
                    }
                });
            } else {
                $("#queryCategoryLevel3").html("");
                var options = "<option value=\"\">--请选择--</option>";
                $("#queryCategoryLevel3").html(options);
            }
        });
    })</script>
</html>