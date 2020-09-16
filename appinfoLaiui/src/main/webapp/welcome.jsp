<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面-X-admin2.2</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/xadmin.css">
        <script src="${pageContext.request.contextPath}/statics/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/xadmin.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

    <div class="layui-container" style="text-align: center;margin-top: 100px;font-size: 30px">
        <div class="layui-row">
            <div class="layui-col-lg12 layui-col-md12 layui-col-sm12">
                <h1>APP信息管理系统</h1>
            </div>
            <div class="layui-col-lg12 layui-col-md12 layui-col-sm12">
                <a href="${pageContext.request.contextPath}/backendLogin.html">后台管理页面</a>
            </div>
            <div class="layui-col-lg12 layui-col-md12 layui-col-sm12">
                <a href="${pageContext.request.contextPath}/devLogin.html">开发者入口</a>
            </div>
        </div>
    </div>


    </body>
</html>