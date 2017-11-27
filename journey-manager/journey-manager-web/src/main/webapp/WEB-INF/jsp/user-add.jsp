<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="商品详情" data-options="fit:true">
    <form class="itemForm" id="itemAddForm" name="itemAddForm" method="post">
        <table style="width:100%;">
            <%--<tr>
                &lt;%&ndash;设计成下拉框&ndash;%&gt;
                <td class="label">商品类目：</td>
                <td>
                    <input id="cid" name="cid" style="width:200px;">
                </td>
            </tr>--%>
            <tr>
                <td class="label">用户昵称：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="username" name="username"
                           data-options="required:true" style="width:100%">
                </td>
            </tr>
                <tr>
                    <td class="label">用户密码：</td>
                    <td>
                        <input class="easyui-textbox" type="text" id="upwd" name="upwd"
                               data-options="required:true" style="width:100%">
                    </td>
                </tr>

                <tr>
                    <td class="label">真实姓名：</td>
                    <td>
                        <input class="easyui-textbox" type="text" id="realname" name="realname"
                               data-options="required:true" style="width:100%">
                    </td>
                </tr>

                <tr>
                    <td class="label">手机：</td>
                    <td>
                        <input class="easyui-textbox" type="text" id="phone" name="phone"
                               data-options="required:true" style="width:100%">
                    </td>
                </tr>

                <tr>
                    <td class="label">邮箱：</td>
                    <td>
                        <input class="easyui-textbox" type="text" id="email" name="email"
                               data-options="required:true" style="width:100%">
                    </td>
                </tr>

               <tr>
                <td class="label"><label class="label">用户性别：</label></td>
                   <td> <select id="gender" class="easyui-combobox" style="width:100px;" panelHeight="auto">
                    <option value="0">女</option>
                    <option value="1">男</option>
                </select></td>
                </tr>

            <tr>
                <td colspan="2">
                    <button onclick="submitForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-ok'">保存
                    </button>
                    <button onclick="clearForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-undo'">重置
                    </button>
                </td>
            </tr>
        </table>
        <input name="paramData" id="paramData" style="display:none;">
    </form>
</div>


<script>
    //提交表单
    function submitForm(){
        $('#itemAddForm').form('submit',{
            //提交表单到item进行处理,这里加/，工程名都没有了
            url: 'item',
            //在表单提交之前触发
            onSubmit:function () {
                <%--${this}表示form表单--%>

                //将表单上价格单位从元转为分
                $('#price').val($('#priceView').val()*100);


                //获取参数规格部分，把数据转换成JSON
                var paramsJson = [];
                var $liList = $('#itemAddForm .paramsShow li');
                $liList.each(function (i, e) {
                    $group = $(e).find('.group');
                    var groupName = $group.text();

                    var params = [];
                    var $trParams = $(e).find('tr').has('td.param');
                    $trParams.each(function (_i, _e) {
                        var $oneDataTr = $(_e);
                        var $keyTd = $oneDataTr.find('.param');
                        var $valueInput = $keyTd.next('td').find('input');
                        var key = $keyTd.text();
                        var value = $valueInput.val();

                        var _o = {
                            k: key,
                            v: value
                        };
                        params.push(_o);
                    });
                    var o = {};
                    o.group = groupName;
                    o.params = params;
                    paramsJson.push(o);
                });
                paramsJson = JSON.stringify(paramsJson);
//                把数据转换成JSON对象
                $('#paramData').val(paramsJson);



                //做表单校验，表单上所有字段全部校验通过才能返回true，才会提交表单，
                //如果有任意一个字段没有校验通过，返回false，不会提交表单
                return $(this).form('validate');
            },
            //表单提交成功后触发,data是action中方法返回的值。,String类型
            success:function(data){
                console.log(typeof (data)+'123');   //String
                console.log(data);//{"success":true,"message":"成功新增一个商品","data":null}
//
                var obj=JSON.parse(data);
                console.log(obj);//{success: true, message: "成功新增一个商品", data: null}
                if(obj.success) {
//                    console.log(typeof (data));//String类型的
                    $.messager.alert('温馨提示','恭喜！添加商品成功！');
                    //下面这行代码是可以关闭窗口的
//                    $("#tab").tabs('close','新增商品');
                    ddshop.closeTabs('新增商品');
                    ddshop.addTabs('查询商品', 'item-list');
                    //这也是一个关闭新窗口的方式



                }
            }
        });
    }



</script>