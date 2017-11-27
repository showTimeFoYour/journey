<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="usertoolbarItem">
    <div style="padding: 0px; background-color: #fff;">
        <label>用户姓名：</label>
        <input class="easyui-textbox" type="text" id="username">
        <label>用户性别：</label>
        <select id="gender" class="easyui-combobox" style="width:100px;" panelHeight="auto">
            <option value="3">全部</option>
            <option value="0">女</option>
            <option value="1">男</option>
        </select>
        <button onclick="searchForm()" type="button"  data-options="iconCls:'icon-search'" class="easyui-linkbutton">搜索</button>
    </div>
    <div>
        <%--<button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>--%>
        <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
        <%--<button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>--%>
        <%--<button onclick="down()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">设为普通用户</button>--%>
        <button onclick="up()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">提升为管理员</button>
        <%--<button onclick="cancel()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">取消订单</button>--%>
        <%--<button onclick="confirm()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">确认订单</button>--%>
    </div>
</div>
<table id="user_item_table"></table>

<script>
    //模糊查询
    function searchForm()
    {
        debugger
        $('#user_item_table').datagrid('load',{
            username:$('#username').val(),
            gender:$('#gender').combobox('getValue')

        });
    }
    //删除，改用户权限为3
    function remove()
    {
        //获得已选中的行
        var selectRows = $('#user_item_table').datagrid('getSelections');
        console.log(selectRows);
        if(selectRows.length == 0)
        {
            $.messager.alert('提示','未选中记录','warning');
            return ;
        }
        $.messager.confirm('确认删除','确认删除记录?',function(r){
            if(r){
                var ids = [];
                for(var i = 0; i < selectRows.length;i++)
                {
                    ids.push(selectRows[i].id);
                }
                $.post(
                    "users/batchRemove",
                    {"ids[]":ids},
                    function(data)
                    {
                        console.log(data);
                        console.log(typeof(data));
                        if(data > 0)
                        {
                            $('#user_item_table').datagrid('reload');
                        }
                    },
                    'json'
                );
            }
        });
    }
//新增用户
    function add() {
        ddshop.addTabs('新增用户', 'user-add');
    }

//    提升为管理员，改用户权限为1
    function up()
    {
        //获得已选中的行
        var selectRows = $('#user_item_table').datagrid('getSelections');
        console.log(selectRows);
        if(selectRows.length == 0)
        {
            $.messager.alert('提示','未选中记录','warning');
            return ;
        }
        $.messager.confirm('确认','确认提升至管理员?',function(r){
            if(r){
                var ids = [];
                for(var i = 0; i < selectRows.length;i++)
                {
                    ids.push(selectRows[i].id);
                }
                $.post(
                    "users/batchUp",
                    {"ids[]":ids},
                    function(data)
                    {
                        console.log(data);
                        console.log(typeof(data));
                        if(data > 0)
                        {
                            $('#user_item_table').datagrid('reload');
                        }
                    },
                    'json'
                );
            }
        });
    }


    function confirm()
    {
        //获得已选中的行
        var selectRows = $('#item_table').datagrid('getSelections');
        console.log(selectRows);
        if(selectRows.length == 0)
        {
            $.messager.alert('提示','未选中记录','warning');
            return ;
        }
        for(var i in selectRows)
        {
            if(selectRows[i].status ==1)
            {
                $.messager.alert('提示',"存在已确认的订单")
                return;
            }
        }

        $.messager.confirm('确认','确认订单?',function(r){
            if(r){
                var ids = [];
                for(var i = 0; i < selectRows.length;i++)
                {
                    ids.push(selectRows[i].id);
                }
                $.post(
                    "items/confirm",
                    {"ids[]":ids},
                    function(data)
                    {
                        if(data > 0)
                        {
                            $('#item_table').datagrid('reload');
                        }
                    },
                'json'
                );
            }
        });
    }
    function edit()
    {
        var selectRows = $('#item_table').datagrid('getSelections');
        if(selectRows.length == 0)
        {
            $.messager.alert('提示','未选中记录','warning');
            return ;
        }
        //只能编辑一条
        if(selectRows.length > 1)
        {
            $.messager.alert('提示','只能选中一条记录','warning');
            return;
        }
        var id = selectRows[0].id;
        console.log(id)
        ddshop.addTabs("修改订单","item/edit?id="+id);

    }

    $("#user_item_table").datagrid({
       toolbar:'#usertoolbarItem',
        url: 'userlist',
        striped: true,//隔行变色
        pagination: true,//添加分页工具栏
        rownumbers: true,//
        //使得数据表格自适应填充父容器
        fit: true,
        //默认显示10条，这样的话就显示20条
        pageSize: 10,
        //分页列表
        pageList: [10,20,30,50],
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'id', title: '用户编号'},
            {field: 'username', title: '用户姓名'},
//            {field: 'upwd', title: '用户密码'},
            {field: 'realname', title: '真实姓名'},
            {field: 'phone', title: '手机'},
            {field: 'email', title: '邮箱'},
//            {field: 'gender', title: '性别'},
            {
                field: 'gender', title: '性别', formatter: function (value, row, index) {
                switch (value) {
                    case 0 :
                        return "女";
                        break;
                    default:
                        return "男";
                        break;
                }
            }
            },
//            {field: 'cityId', title: '所在城市ID'},
//            {field: 'isadmin', title: '权限1'},
            {
                field: 'isadmin', title: '权限2', formatter: function (value, row, index) {
                switch (value) {
                    case 1 :
                        return "管理员";
                        break;
                    case 0 :
                        return "普通用户";
                        break;
                    default:
                        return "未设置";
                        break;
                }
            }
            }
        ]]
    });

</script>