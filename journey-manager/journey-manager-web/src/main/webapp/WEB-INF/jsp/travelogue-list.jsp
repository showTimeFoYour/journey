<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/21
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="travelogue-toolbar">
    <div style="7padding: 5px; background-color: #fff;">

        <div>
            <label>游记标题:</label>
            <input class="easyui-textbox" type="text" id="travelogue_title"/>
            <label>评论类型：</label>
            <select id="travelogue_status" class="easyui-combobox">
                <option value="0">全部</option>
                <option value="1">个人</option>
                <option value="2">发布</option>
                <option value="3">草稿</option>

            </select>

            <button type="button" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="searchTravelogueForm()">
                查询
            </button>
        </div>
<div>
    <button onclick="down_travelogue()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">
        驳回
    </button>
    <button onclick="remove_travelogue()" class="easyui-linkbutton"
            data-options="iconCls:'icon-remove',plain:true">删除
    </button>

</div>
    </div>

</div>

<table id="tb_travelogue"></table>
<script>
    function remove_travelogue() {
        var selections = $('#tb_travelogue').datagrid('getSelections');
        //  console.log(selections);
        if (selections.length == 0) {
            //客户没有选择记录
            $.messager.alert('提示', '请至少选中一条记录！');
            return;
        }
        else{
            var ids = [];
            for (var i = 0; i < selections.length; i++) {
                //console.log(selections[i].status);
                /*    if(selections[i].commentStatus ==2){
                        $.messager.alert('提示', '请不要选择已经下架的记录！');
                        return;
                    }*/

                ids.push(selections[i].commentId);
            }
            $.post(
                //  //url:请求后台的哪个地址来进行处理，相当于url,String类型
                'travelogue/bacth',
                //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                {'ids[]': ids},
                //callback:后台处理成功的回调函数，相当于success，function类型
                function (data) {
                    $("#tb_travelogue").datagrid("reload");
                },
                //返回数据类型
                'json'
            );
        }
    }

    function down_travelogue() {
        var selections = $('#tb_travelogue').datagrid('getSelections');
        //  console.log(selections);
        if (selections.length == 0) {
            //客户没有选择记录
            $.messager.alert('提示', '请至少选中一条记录！');
            return;
        }
        else{
            var ids = [];
            for (var i = 0; i < selections.length; i++) {
                //console.log(selections[i].status);
                if(selections[i].commentState ==2){
                    $.messager.alert('提示', '请不要选择已经驳回的记录!！');
                    return;
                }

                ids.push(selections[i].commentId);
            }
            $.post(
                //  //url:请求后台的哪个地址来进行处理，相当于url,String类型
                'travelogues/down',
                //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                {'ids[]': ids},
                //callback:后台处理成功的回调函数，相当于success，function类型
                function (data) {
                    $("#tb_travelogue").datagrid("reload");
                },
                //返回数据类型
                'json'
            );
        }
    }
    function searchTravelogueForm(){

        $('#tb_travelogue').datagrid('load',{
            title:$("#travelogue_title").val(),
            status:$('#travelogue_status').combobox("getValue")

        });

    }

    $('#tb_travelogue').datagrid({

        url: 'traveloguesByPage',
        multiSort: true,// 允许多列排序
        pagination: true, //分页栏显示
        striped: true,//隔行变色
        rownumbers: true,//显示第几列
        fit: true,//调整面板屏幕
        pageSize: 10, //初始分页列表大小
        pageList: [10, 30, 50],
        toolbar:'#travelogue-toolbar',
        /**
         * columns 工具栏
         *
         */
        columns: [[{field: 'ck', checkbox: true},
            {field: 'travelId', title: '游记编号', width: 90},
            {field: 'userName', title: '游记作者', width: 90},
            {field: 'title', title: '标题', width: 90},
            {field: 'description', title: '内容', width: 90},
            {field: 'whatday', title: '第几天', width: 90},
            {field: 'statu', title: '游记状态', width: 90,formatter:function (value, row, index) {
                switch (value) {
                    case 1 :
                        return "个人";
                        break;
                    case 2:
                        return "发布";
                        break;
                    case 3:
                        return "草稿";
                        break;
                    default:
                        return "未知";
                        break;
                }
            }},


            {
                field: 'created', title: '创建时间', width: 100, formatter: function (value, row, index) {
                return moment(value).format('LL');
            }
            },
            {
                field: 'updated', title: '更新时间', width: 100, formatter: function (value, row, index) {
                return moment(value).format('LL');
            }
            }


        ]]

    });
</script>


