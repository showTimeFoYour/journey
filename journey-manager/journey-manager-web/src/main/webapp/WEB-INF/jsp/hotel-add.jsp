<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="酒店详情" data-options="fit:true">
    <form class="itemForm" id="hotelAddForm" name="hotelAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">酒店名字：</td>
                <td>
                    <input class="easyui-textbox" type="text"
                           id="name" name="name" style="width:200px;" data-options="required:true">
                </td>
            </tr>
            <tr>
            <td class="label">酒店所在城市：</td>
            <td>
                <input class="easyui-textbox" type="text" id="cityId" name="cityId"
                       data-options="required:true" style="width:100%">
            </td>
        </tr>
            <tr>
                <td class="label">酒店特色：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="sellPiont" name="sellPiont"
                           data-options="required:true" style="width:100%">
                </td>
            </tr>
            <tr>
                <td class="label">酒店规格：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="price" name="price"
                           data-options="required:true" style="width:100%">
                </td>
            </tr>
            <tr>
                <td class="label">最近景点：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="placeId" name="placeId"
                           data-options="required:true" style="width:100%">
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <button onclick="hotelsubmitForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-ok'">保存
                    </button
                    <%--<button onclick="clearForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-undo'">重置
                    </button>--%>
                </td>
            </tr>
        </table>
        <input name="paramData" id="paramData" style="display:none;">
    </form>
</div>

<script>
    //提交表单
    function hotelsubmitForm(){
        $('#hotelAddForm').form('submit',{
            //提交表单到item进行处理
            url: 'hotelitem',
            //在表单提交之前触发
            onSubmit:function () {
                //将表单上价格单位从元转为分
//                $('#price').val($('#priceView').val()*100);
                //做表单校验，表单上所有字段全部校验通过才能返回true，才会提交表单，
                //如果有任意一个字段没有校验通过，返回false，不会提交表单
                return $(this).form('validate');
            },
            //后台处理成功之后的回调函数
            success:function(data){
                if(data > 0) {
                    $.messager.alert('温馨提示','恭喜！添加酒店成功！');
                    ddshop.addTabs('查询酒店', 'hotel-list');
                }
            }
        });
    }
</script>
