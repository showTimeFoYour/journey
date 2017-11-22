<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="easyui-panel" title="商品详情" data-options="fit:true">
    <form class="itemForm" id="itemUpdated" name="itemAddForm" method="POST">
        <table style="width:100%;">
            <tr>
                <td class="label">订单编号：</td>
                <td>
                    <input class="easyui-textbox"  id="cid" name="id" style="width:200px; " value="${item.id}" readonly="readonly">
                </td>
            </tr>
            <tr>
                <td class="label">订单标题：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="title" name="title"
                           style="width:80%; color: #4d4d4d" value="${item.title}" readonly = readonly >
                </td>
            </tr>
            <tr>
                <td class="label">价格(元)：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="price" name="price"
                           data-options="required:true" value="${item.price}">
                </td>
            </tr>
            <tr>
                <td class="label">人数：(人)</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="num" name="num"
                           data-options="required:true,min:0,precision:0" value="${item.num}">
                </td>
            </tr>
            <tr>
                <td class="label">订单详情：</td>
                <td>

                    <textarea id="contectDesc" name="contectDesc" class="easyui-textbox" style="width: 100%; height: 30px" > ${item.contectDesc} </textarea>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center" style="margin: 10px">
                    <button onclick="submitForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-ok'">修改
                    </button>
                </td>
            </tr>
        </table>
    </form>
</div>
<script>
    function  submitForm() {
      $('#itemUpdated').form('submit',{
          url:'items/update',
          onSubmit:function () {
              return $(this).form('validate');
          },
          success:function (data) {
               if(data == 1)
               {
                   $.messager.alert('提示','修改订单成功');
                   ddshop.addTabs("查询订单",'item-list');
                   $('#item_table').datagrid('reload');
                   ddshop.closeTabs("修改订单")
               }
          }
      });
    }

</script>

