<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="hotelcomm-toolbar">
    <div style="padding: 5px; background-color: #fff;">

        <div>
            <label>酒店名称:</label>
            <input class="easyui-textbox" type="text" id="htitle"/>
            <button type="button" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="searchForm()">
                查询
            </button>
        </div>
        <div>
            <button onclick="remove_comment()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
        </div>
    </div>
</div>

<table id="hoteltb"></table>
<script>
    function searchForm(){
        $('#hoteltb').datagrid('load',{
            title:$("#htitle").val(),
            //status:$('#status').combobox("getValue")
        });
    }

    function remove_comment() {
        var selections = $('#hoteltb').datagrid('getSelections');
        if (selections.length == 0) {
            //客户没有选择记录
            $.messager.alert('提示', '请至少选中一条记录！');
            return;
        }
        var ids = [];
        for (var i = 0; i < selections.length; i++) {
            ids.push(selections[i].id);
        }
        $.messager.confirm('确认', '您确认想要删除吗？', function (r) {
            if(r){
                $.post(
                    //  //url:请求后台的哪个地址来进行处理，相当于url,String类型
                    'hotel/remove',
                    //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                    {'ids[]': ids},
                    //callback:后台处理成功的回调函数，相当于success，function类型
                    function (data) {
                        if (data != -1) {
                            $("#hoteltb").datagrid("reload");
                        }
                    }
                    //返回数据类型
                    //'int'
                );
            }
        });
    }

    $('#hoteltb').datagrid({
        url: 'hotelByPage',
        multiSort: true,// 允许多列排序
        pagination: true, //分页栏显示
        striped: true,//隔行变色
        rownumbers: true,//显示第几列
        fit: true,//调整面板屏幕
        pageSize: 10, //初始分页列表大小
        pageList: [10, 30, 50],
        toolbar:'#hotelcomm-toolbar',
        /**
         * columns 工具栏
         */
        columns: [[{field: 'ck', checkbox: true},
            {field: 'id', title: '酒店编号', width: 90},
            {field: 'name', title: '酒店名字', width: 90},
            {field: 'cityId', title: '所在城市', width: 90},
            {field: 'sellPiont', title: '酒店特色', width: 90},
            {field: 'images', title: '酒店图片', width: 90},
            {field: 'price', title: '酒店价格', width: 90},
            {field: 'param', title: '酒店规格', width: 90},
            {field: 'placeId', title: '附近酒店', width: 90},
            {
                field: 'status', title: '酒店状态', width: 90,
                formatter: function (value, row, index) {
                    switch (value) {
                        case 1:
                            return '正常营业';
                            break;
                        case 2:
                            return '休业';
                            break;
                        default:
                            return '未知';
                            break;
                    }
                }
            }
        ]]
    });
</script>

