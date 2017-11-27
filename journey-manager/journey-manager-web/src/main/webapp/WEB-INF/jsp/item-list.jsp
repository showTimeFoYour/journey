<%--
  User: Frogzec
  Date: 2017/11/20
  Time: 23:16
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="toolbarItem">
    <div style="padding: 0px; background-color: #fff;">
        <label>订单标题：</label>
        <input class="easyui-textbox" type="text" id="title">
        <label>订单状态：</label>
        <select id="status" class="easyui-combobox" style="width:100px;" panelHeight="auto">
            <option value="3">全部</option>
            <option value="0">未完成</option>
            <option value="1">已确认</option>
        </select>
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
    <div>
       <%-- <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>--%>
        <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
        <button onclick="cancel()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">取消订单</button>
        <button onclick="confirm()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">确认订单</button>
    </div>
</div>
<table id="item_table"></table>

<script>
    //模糊查询
    function searchForm()
    {
        $('#item_table').datagrid('load',{
            title:$('#title').val(),
            status:$('#status').combobox('getValue')
        })
    }
    function remove()
    {
        //获得已选中的行
        var selectRows = $('#item_table').datagrid('getSelections');
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
                    "items/batch",
                    {"ids[]":ids},
                    function(data)
                    {
                        console.log(data);
                        console.log(typeof(data));
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
    function cancel()
    {
        //获得已选中的行
        var selectRows = $('#item_table').datagrid('getSelections');
        console.log(selectRows);
        if (selectRows.length == 0) {
            $.messager.alert('提示', '未选中记录', 'warning');
            return;
        }
        for (var i in selectRows) {
            if (selectRows[i].status == 0) {
                $.messager.alert('提示', "存在未完成的订单")
                return;
            }
        }

        $.messager.confirm('确认取消', '确认取消订单?', function (r) {
            if (r) {
                var ids = [];
                for (var i = 0; i < selectRows.length; i++) {
                    ids.push(selectRows[i].id);
                }
                $.post(
                    "items/cancel",
                    {"ids[]": ids},
                    function (data) {
                        if (data > 0) {
                            $('#item_table').datagrid('reload');
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
    //编辑订单模块
   /* function edit()
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

    }*/

    $("#item_table").datagrid({
       toolbar:'#toolbarItem',
        url: 'items',
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
            {field: 'id', title: '订单编号'},
            {field: 'title', title: '订单详情'},
            {field: 'price', title: '订单价格'},
            {field: 'num', title: '人数'},
            {field: 'contectDesc', title: '同行人姓名',formatter:function (value,row,index) {
              /*  var jsonObj = JSON.parse(value);
                var array=[];

                //JSON的遍历
                $.each(jsonObj,function (i,e) {
                   array.push(e.name);
                   array.push(e.phone);
                });*/
                var jsonObj = JSON.parse(value);
                var array=[];
                $.each(jsonObj,function (i,e) {
                    array.push("姓名:"+e.text);
                    array.push("电话:"+e.group);
                });
                return array.join(",");
            }},
            {
                field: 'created', title: '创建时间', formatter: function (value, row, index) {
                return moment(value).format("LL");
            }
            },
            {
                field: 'start', title: '出发时间', formatter: function (value, row, index) {
                return moment(value).format("LL");
            }
            },
            {field: 'statusName', title: '状态(后台)'},
            {field: 'userName', title: '订单所属用户'}
        ]]
    });

</script>