<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台首页</title>
    <!-- 导入easyui的样式表 -->
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/bootstrap/easyui.css">
    <link rel="stylesheet" href="js/jquery-easyui-1.5/themes/icon.css">
    <link rel="stylesheet" href="css/common.css">
</head>
<body class="easyui-layout">

<div data-options="region:'north'" style="height:70px;padding-left:20px;">
    <h2>途蜂旅游后台管理系统</h2>
    <span ></span>
</div>

<div data-options="region:'south'" style="padding:2px;background:#eee;">
    系统版本：V1.0
</div>

<div data-options="region:'west'" style="width:200px;">
    <div id="menu" class="easyui-accordion">
        <div title="订单管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'item-list'}">查询订单</li>
            </ul>
        </div>
        <div title="旅行管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:10px 0;">
            <div id="menu1" class="easyui-accordion">
        <div title="景点管理" data-options="selected:true,iconCls:'icon-tip'" style="padding:5px 0;line-height: 10px">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'place-add'}">新增景点</li>
                <li data-options="attributes:{'href':'place-list'}">查询景点</li>
            </ul>
        </div>
        <div title="酒店管理" data-options="iconCls:'icon-tip'" style="padding:5px 0; ">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'hotel-add'}">新增酒店</li>
                <li data-options="attributes:{'href':'hotel-list'}">查询酒店</li>
            </ul>
        </div>
        <div title="城市管理" data-options="iconCls:'icon-tip'" style="padding:5px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'city-add'}">新增城市</li>
                <li data-options="attributes:{'href':'city-list'}">查询城市</li>
            </ul>
        </div>
        </div>
        </div>
        <div title="评论管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                 <li data-options="attributes:{'href':'comment-list'}">查询评论</li>
            </ul>
        </div>
        <div title="游记管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'travelogue-list'}">查询游记</li>
            </ul>
        </div>
        <div title="用户管理" data-options="iconCls:'icon-tip'" style="padding:10px 0;">
            <ul class="easyui-tree">
                <li data-options="attributes:{'href':'user-list'}">添加用户</li>
                <li data-options="attributes:{'href':'user-add'}">查询用户</li>
            </ul>
        </div>
    </div>


</div>

<div data-options="region:'center'" style="background:#eee;">
    <div id="tab" class="easyui-tabs" data-options="fit:true">
        <div title="欢迎页面" style="padding:20px;">
             欢迎${session_user.username}来到途蜂旅游后台管理系统
            <img src="#">
        </div>
    </div>
</div>


<!-- 先导入jquery的包 -->
<script src="js/jquery-easyui-1.5/jquery.min.js"></script>
<!-- jquery easyui -->
<script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>

<%--引入日期处理库--%>
<script src="js/moment/moment-with-locales.js"></script>
<script>
    moment.locale('zh-cn');
</script>

<script src="js/common.js"></script>

<script>
    ddshop.registerMenuEvent();
</script>
</body>
</html>
