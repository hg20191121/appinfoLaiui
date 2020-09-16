<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html;charset=UTF-8" %>
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
</head>

<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
                <a href="">首页</a>
                <a href="">演示</a>
                <a>
                    <cite>导航元素</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
    </a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5" id="recordListSearchForm">
                        <div class="layui-row">
                            <div class="layui-input-inline layui-show-xs-block layui-col-md4 layui-col-sm4 layui-col-lg4 ">
                                <label class="layui-form-label">软件名称</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="softwareName"
                                           autocomplete="off" class="layui-input">
                                </div>
                            </div>

                            <div class="layui-input-inline layui-show-xs-block layui-col-md4 layui-col-sm4 layui-col-lg4">
                                <label class="layui-form-label">APP状态</label>
                                <div class="layui-input-inline">
                                    <select name="status" lay-verify="">
                                        <option value="">--请选择--</option>
                                        <c:forEach items="${appStatus}" var="appStatue">
                                            <option value="${appStatue.id}">${appStatue.valueName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="layui-input-inline layui-show-xs-block layui-col-md4 layui-col-sm4 layui-col-lg4">
                                <label class="layui-form-label">所属平台</label>
                                <div class="layui-input-inline">
                                    <select name="flatformId">
                                        <option value="">--请选择--</option>
                                        <c:forEach items="${appFlatForms}" var="appFlatForm">
                                            <option value="${appFlatForm.id}">${appFlatForm.valueName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="layui-row">
                            <div class="layui-input-inline layui-show-xs-block layui-col-md4 layui-col-sm4 layui-col-lg4">
                                <label class="layui-form-label">一级分类</label>
                                <div class="layui-input-inline">
                                    <select name="categoryLevel1" id="queryCategoryLevel1"
                                            lay-filter="queryCategoryLevel1">
                                        <option value="">--请选择--</option>
                                        <c:forEach var="category" items="${categoryList}">
                                            <option value="${category.id}">${category.categoryName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <div class="layui-input-inline layui-show-xs-block layui-col-md4 layui-col-sm4 layui-col-lg4">
                                <label class="layui-form-label ">二级分类</label>
                                <div class="layui-input-inline">
                                    <select name="categoryLevel2" id="queryCategoryLevel2"
                                            lay-filter="queryCategoryLevel2"
                                            lay-verify="">
                                        <option value="">--请选择--</option>
                                    </select>
                                </div>
                            </div>

                            <div class="layui-input-inline layui-show-xs-block layui-col-md4 layui-col-sm4 layui-col-lg4">
                                <label class="layui-form-label ">三级分类</label>
                                <div class="layui-input-inline">
                                    <select name="categoryLevel3" id="queryCategoryLevel3" lay-verify="">
                                        <option value="">--请选择--</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="layui-input-inline layui-show-xs-block">
                            <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                <i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-header">
                    <div class="layui-row">
                        <div class="layui-col-md1"
                             style="background-color: #009688;text-align: center;display: inline"></div>
                        <i class="layui-icon"></i>新增APP基础信息
                    </div>
                </div>
                <div class="layui-card-body ">
                    <table class="layui-table layui-form ">
                        <thead>
                        <tr>
                            <th>软件名称</th>
                            <th>APK名称</th>
                            <th>软件大小(单位:M)</th>
                            <th>所属平台</th>
                            <th>所属分类(一级分类、二级分类、三级分类)</th>
                            <th>状态</th>
                            <th>下载次数</th>
                            <th>最新版本号</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody id="formTbody">
                        <c:forEach items="${appInfoList}" var="appInfo">
                            <tr>
                                <td>${appInfo.softwareName}</td>
                                <td>${appInfo.APKName}</td>
                                <td>${appInfo.softwareSize}</td>
                                <td>${appInfo.flatformName}</td>
                                <td>${appInfo.categoryLevel1Name}->${appInfo.categoryLevel2Name}->
                                        ${appInfo.categoryLevel3Name}
                                </td>
                                <td>${appInfo.statusName}</td>
                                <td>${appInfo.downloads}</td>
                                <td>${appInfo.versionName}</td>
                                <td class="layui-nav-item">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-danger dropdown-toggle"
                                                data-toggle="dropdown" aria-expanded="false">点击操作
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <c:choose>
                                                <c:when test="${appInfo.statusName}=='上架'">
                                                    <a>下架</a>
                                                    </li>
                                                </c:when>
                                                <c:when test="${appInfo.statusName}=='下架'">
                                                    <li>
                                                        <a>上架</a>
                                                    </li>
                                                </c:when>
                                            </c:choose>
                                            <li>
                                                <a onclick="xadmin.add_tab('新增版本','${pageContext.request.contextPath}/appInfoController/order-view.html/${appInfo.id}')">新增版本</a>
                                            </li>
                                            <li>
                                                <a onclick="xadmin.add_tab('修改版本','${pageContext.request.contextPath}/appInfoController/order-view.html/${appInfo.id}')">修改版本</a>
                                            </li>
                                            <li>
                                                <a onclick="xadmin.add_tab('修改信息','${pageContext.request.contextPath}/appInfoController/app-modify.html')">
                                                    <cite>修改</cite></a>
                                            </li>
                                            <li>
                                                <a onclick="xadmin.add_tab('查看信息','${pageContext.request.contextPath}/appInfoController/order-view.html');location.reload()">查看</a>
                                            </li>
                                            <li><a>删除</a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>

                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="layui-card-body ">
                    <div class="page" id="pageDemo">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>


<script>layui.use(['laydate', 'form', 'laypage'],
    function () {
        var laydate = layui.laydate;
        var form = layui.form;
        var laypage = layui.laypage;
        var totalRecord = ${totalRecord};

        //默认的分页,不含筛选条件
        laypage.render({
            elem: 'pageDemo' //分页容器的id
            , count: totalRecord //总数据数
            , limit: 5//分页条数默认为5
            , curr: 1
            , skin: '#1E9FFF' //自定义选中色值
            , skip: true //开启跳页
            , jump: function (obj, first) {
                //回调函数根据当前页数分页查询，并对结果进行渲染
                if (!first) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/appInfoController/order-list.page",
                        data: {currNo: obj.curr},
                        dataType: "json",
                        success: function (data) {
                            showRecord(data);
                        },
                        error: function () {
                            alert("error")
                        }
                    })
                    layer.msg('第' + obj.curr + '页', {offset: 'b'});
                }
            }
        });

        //表单提交，异步刷新
        form.on('submit(sreach)', function (data) {
            console.log(data.elem); //被执行事件的元素DOM对象，一般为button对象
            console.log(data.form); //被执行提交的form对象，一般在存在form标签时才会返回
            console.log(data.field);//当前容器的全部表单字段，名值对形式：{name: value}
            //更新总数
            //更新总页数
            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/appInfoController/getAppCountByMap.json",
                data: data.field,
                datatype: "json",
                success: function (data) {
                    totalRecord = data;
                }
            })
            //更新总条数
            $.ajax({
                type: "GET",
                url: "${pageContext.request.contextPath}/appInfoController/queryAppInfo.json",
                data: data.field,
                datatype: "json",
                success: function (data) {
                    laypage.render();
                    $("#formTbody").empty();//清空列表
                    var str = "";
                    //拼接html
                    for (let appInfo of data) {
                        str += '<tr>\n' +
                            '                                <td>' + appInfo.softwareName + '</td>\n' +
                            '                                <td>' + appInfo.aPKName + '</td>\n' +
                            '                                <td>' + appInfo.softwareSize + '</td>\n' +
                            '                                <td>' + appInfo.flatformName + '</td>\n' +
                            '                                <td>' + appInfo.categoryLevel1Name + '->' + appInfo.categoryLevel2Name + '->\n' +
                            '                                        ' + appInfo.categoryLevel3Name + '\n' +
                            '                                </td>\n' +
                            '                                <td>' + appInfo.statusName + '</td>\n' +
                            '                                <td>' + appInfo.downloads + '</td>\n' +
                            '                                <td>';
                        str += appInfo.versionName == null ? '' : appInfo.versionName;
                        str += '</td>\n' +
                            '                                <td class="layui-nav-item">\n' +
                            '                                    <div class="btn-group">\n' +
                            '                                        <button type="button" class="btn btn-danger dropdown-toggle"\n' +
                            '                                                data-toggle="dropdown" aria-expanded="false">点击操作\n' +
                            '                                            <span class="caret"></span>\n' +
                            '                                            <span class="sr-only">Toggle Dropdown</span>\n' +
                            '                                        </button>\n' +
                            '                                        <ul class="dropdown-menu" role="menu">\n';
                        // if ()
                            str +=
                                '                                            <li><a>上架</a>\n' +
                                '                                            </li>\n' +
                                '                                            <li><a>新增版本</a>\n' +
                                '                                            </li>\n' +
                                '                                            <li><a>修改版本</a>\n' +
                                '                                            </li>\n' +
                                '                                            <li><a>修改</a></li>\n' +
                                '                                            <li>\n' +

                                '                                                <a onclick="xadmin.add_tab(\'订单列表\',\'${pageContext.request.contextPath}/appInfoController/order-view.html\')">查看</a>\n' +
                                '                                            </li>\n' +
                                '                                            <li><a>删除</a></li>\n' +
                                '                                        </ul>\n' +
                                '                                    </div>\n' +
                                '                                </td>\n' +
                                '                            </tr>';
                    }
                    $("#formTbody").html(str);
                    //拿到表单数据
                    var d = {};
                    var t = $('#recordListSearchForm [name]').serializeArray();
                    $.each(t, function () {
                        d[this.name] = this.value;
                    });

                    //分页
                    laypage.render({
                        elem: 'pageDemo' //分页容器的id
                        , count: totalRecord //总页数
                        , limit: 5//分页条数默认为5
                        , curr: 1
                        , skin: '#1E9FFF' //自定义选中色值
                        , skip: true //开启跳页
                        , jump: function (obj, first) {
                            if (!first) {
                                d['currNo'] = obj.curr;
                                // data = JSON.stringify(d);
                                console.log(d)
                                $.ajax({
                                    url: "${pageContext.request.contextPath}/appInfoController/queryAppInfo.json",
                                    data: d,
                                    dataType: "json",
                                    success: function (data) {
                                        showRecord(data);
                                    },
                                    error: function () {
                                        alert("error!!")
                                    }
                                })
                                layer.msg('第' + obj.curr + '页', {offset: 'b'});
                            }
                        }
                    });
                },
                error: function () {
                    alert("error");
                }
            })
            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
        });

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


        //渲染表格，传入表格数据
        function showRecord(data) {
            $("#formTbody").empty();//清空列表
            var str = "";
            //拼接html
            for (let appInfo of data) {
                str += '<tr>\n' +
                    '                                <td>' + appInfo.softwareName + '</td>\n' +
                    '                                <td>' + appInfo.aPKName + '</td>\n' +
                    '                                <td>' + appInfo.softwareSize + '</td>\n' +
                    '                                <td>' + appInfo.flatformName + '</td>\n' +
                    '                                <td>' + appInfo.categoryLevel1Name + '->' + appInfo.categoryLevel2Name + '->\n' +
                    '                                        ' + appInfo.categoryLevel3Name + '\n' +
                    '                                </td>\n' +
                    '                                <td>' + appInfo.statusName + '</td>\n' +
                    '                                <td>' + appInfo.downloads + '</td>\n' +
                    '                                <td>' + appInfo.versionName + '</td>\n' +
                    '                                <td class="layui-nav-item">\n' +
                    '                                    <div class="btn-group">\n' +
                    '                                        <button type="button" class="btn btn-danger dropdown-toggle"\n' +
                    '                                                data-toggle="dropdown" aria-expanded="false">点击操作\n' +
                    '                                            <span class="caret"></span>\n' +
                    '                                            <span class="sr-only">Toggle Dropdown</span>\n' +
                    '                                        </button>\n' +
                    '                                        <ul class="dropdown-menu" role="menu">\n' +
                    '                                            <li><a>上架</a>\n' +
                    '                                            </li>\n' +
                    '                                            <li><a>新增版本</a>\n' +
                    '                                            </li>\n' +
                    '                                            <li><a>修改版本</a>\n' +
                    '                                            </li>\n' +
                    '                                            <li><a>修改</a></li>\n' +
                    '                                            <li>\n' +
                    '                                                <a onclick="xadmin.open(\'查看订单\',\'${pageContext.request.contextPath}/appInfoController/order-view.html\',800,600)">查看</a>\n' +
                    '                                            </li>\n' +
                    '                                            <li><a>删除</a></li>\n' +
                    '                                        </ul>\n' +
                    '                                    </div>\n' +
                    '                                </td>\n' +
                    '                            </tr>';
            }
            $("#formTbody").html(str);
        }

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });


    });


/*用户-停用*/
function member_stop(obj, id) {
    layer.confirm('确认要停用吗？',
        function (index) {

            if ($(obj).attr('title') == '启用') {

                //发异步把用户状态进行更改
                $(obj).attr('title', '停用');
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!', {
                    icon: 5,
                    time: 1000
                });

            } else {
                $(obj).attr('title', '启用');
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!', {
                    icon: 5,
                    time: 1000
                });
            }

        });
}

/*用户-删除*/
function member_del(obj, id) {
    layer.confirm('确认要删除吗？',
        function (index) {
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!', {
                icon: 1,
                time: 1000
            });
        });
}

function delAll(argument) {

    var data = tableCheck.getData();

    layer.confirm('确认要删除吗？' + data,
        function (index) {
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {
                icon: 1
            });
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
}</script>

</html>