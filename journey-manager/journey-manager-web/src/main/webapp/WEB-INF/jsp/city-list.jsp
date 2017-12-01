<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/18
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="citycomm-toolbar">
    <div style="padding: 5px; background-color: #fff;">

        <div>
            <label>城市名称:</label>
            <input class="easyui-textbox" type="text" id="ctitle"/>
            <button type="button" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="searchForm()">
                查询
            </button>
        </div>
        <div>
            <%--<button onclick="down_comment()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">驳回</button>--%>
            <button onclick="remove_comment()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
        </div>
    </div>
</div>

<table id="citytb"></table>
<script>
    function remove_comment() {
        var selections = $('#citytb').datagrid('getSelections');
        //  console.log(selections);
        if (selections.length == 0) {
            //客户没有选择记录
            $.messager.alert('提示', '请至少选中一条记录！');
            return;
        }
            var ids = [];
            for (var i = 0; i < selections.length; i++) {
                //console.log(selections[i].status);
                /*    if(selections[i].commentStatus ==2){
                        $.messager.alert('提示', '请不要选择已经下架的记录！');
                        return;
                    }*/
                ids.push(selections[i].id);
            }
        $.messager.confirm('确认', '您确认想要删除吗？', function (r) {
            if(r){
            $.post(
                //  //url:请求后台的哪个地址来进行处理，相当于url,String类型
                'city/remove',
                //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                {'ids[]': ids},
                //callback:后台处理成功的回调函数，相当于success，function类型
                function (data) {
                    if (data != -1) {
                        $("#citytb").datagrid("reload");
                    }
                }
                //返回数据类型
                //'int'
            );
            }
        });
    }
//    function down_comment() {
//        var selections = $('#tb').datagrid('getSelections');
//        //  console.log(selections);
//        if (selections.length == 0) {
//            //客户没有选择记录
//            $.messager.alert('提示', '请至少选中一条记录！');
//            return;
//        }
//        else{
//            var ids = [];
//            for (var i = 0; i < selections.length; i++) {
//                //console.log(selections[i].status);
//                if(selections[i].commentState ==2){
//                    $.messager.alert('提示', '请不要选择已经驳回的记录!！');
//                    return;
//                }
//                debugger;
//                ids.push(selections[i].commentId);
//            }
//            $.post(
//                //  //url:请求后台的哪个地址来进行处理，相当于url,String类型
//                'comments/down',
//                //data:从前台提交哪些数据给后台处理，相当于data，Object类型
//                {'ids[]': ids},
//                //callback:后台处理成功的回调函数，相当于success，function类型
//                function (data) {
//                    $("#tb").datagrid("reload");
//                },
//                //返回数据类型
//                'json'
//            );
//        }
//    }
    function searchForm(){
        $('#citytb').datagrid('load',{
            title:$("#ctitle").val(),
            //status:$('#status').combobox("getValue")
        });
    }

    $('#citytb').datagrid({

        url: 'cityByPage',
        multiSort: true,// 允许多列排序
        pagination: true, //分页栏显示
        striped: true,//隔行变色
        rownumbers: true,//显示第几列
        fit: true,//调整面板屏幕
        pageSize: 10, //初始分页列表大小
        pageList: [10, 30, 50],
        toolbar:'#citycomm-toolbar',
        /**
         * columns 工具栏
         */
        columns: [[{field: 'ck', checkbox: true},
            {field: 'id', title: '城市编号', width: 90},
            {field: 'name', title: '城市名字', width: 90}
        ]]
    });
</script>

