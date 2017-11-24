<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="css/demo_1.css"/>
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="css/component.css"/>
    <!--[if IE]>
    <!--<script src="js/html5.js"></script>-->
    <%--<![endif]-->--%>
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <h3>欢迎您登录</h3>
                <form action="#" name="f" method="post" id="userDengLuForm">
                    <div class="input_outer">
                        <span class="u_user" ></span>
                        <input name="username" id="username" class="text" style="color: #FFFFFF !important" type="text"
                               placeholder="请输入账户"><br><span id="sp1"></span>
                    </div>
                    <%--<div><a><span id="sp1"></span></a>--%>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="upwd" id="upwd" class="text"
                               style="color: #FFFFFF !important; position:absolute; z-index:100;" value=""
                               type="password" placeholder="请输入密码"><br><br>
                        <span id="sp2"></span>
                    </div>


                    <%--<div><a><span id="sp2"></span></a></div>--%>
                    <%--<div class="mb2"><a class="act-but submit" href="javascript:document:userDengLuForm.submit();" style="color: #FFFFFF">登录</a></div>--%>
                    <%--<div class="mb2"><a class="act-but submit" type="submit" name="submit" style="color: #FFFFFF">登录</a></div>--%>
                    <table>
                        <tr align="center">
                            <td><input class="input_oute submit" type="submit" name="submit1" value="登录"
                                       style="margin-right:100px;margin-left: 40px"/></td>
                            <td><input class="input_oute submit" type="reset" name="reset" value="重置"/></td>
                        </tr>
                    </table>
                    <br>
                    <%--<div class="mb2"> <input  type="submit" name="submit1" ><a class="act-but submit"  style="color: #FFFFFF">登录</a> <input></div>--%>
                    <a style="color: white;margin-left: 35px" href="#">忘记密码？</a>
                    <a style="color: white;margin-left: 30px" href="register">没有账号？去注册</a>




                </form>
            </div>
        </div>
    </div>
</div><!-- /container -->


<script src="js/tweenlite.min.js"></script>
<script src="js/easepack.min.js"></script>
<script src="js/raf.js"></script>
<script src="js/demo-1.js"></script>
<!-- jquery -->
<script src="js/jquery-easyui-1.5/jquery.min.js"></script>

<script>
    //ready函数
    $(function () {
        //submit里面一个回调函数
        //submit提交的时候，注册一个事件对象到e里面去
        $("#userDengLuForm").submit(function (e) {

            // alert(1);
            var un = $("#username").val();
            var pw = $("#upwd").val();
//               alert(un);
            var flag1 = false;
            var flag2 = false;

            if (un == null || un == "") {
                $("#sp1").html("用户名不能为空").css('color', 'red');
            }
            else {
                $("#sp1").html("");
                flag1 = true;
            }

            if (pw == null || pw == "") {
                $("#sp2").html("密码不能为空").css('color', 'red');
            }
            else {
                $("#sp2").html("");
                flag2 = true;
            }
            //在这里，不管他有没有验证成功，都先不要提交表单，要阻止表单提交
            e.preventDefault();
            //&1个2个都可以,2个&是短路法，效率高
            if (flag1 && flag2) {
                //ajax提交表单
//                alert(111111)
                var param = {"username": un, "upwd": pw};


                $.ajax({
                    url: "userlogin",
                    data: param,
                    dataType: "text",
                    type: "post",
                    cache: false,
                    //写了个变量rec接收后台传过来的值
                    success: function (rec) {
//                        alert(rec)
                        //alert(rec.mess)

                        //alert(info)
                        if (rec == 0) {
                            $("#sp1").html("用户名不能为空").css('color','red');

                        } else if (rec == 1) {
                            $("#sp2").html("密码不能为空").css('color','red');
                            alert(321)
                        } else if (rec == 2) {
                            $("#sp1").html("用户名或密码错误").css('color','red');
                        } else {
                            //location.href="${pageContext.request.contextPath}/index.jsp"
                            alert("欢迎登录，进入首页")
                            location.href = "${pageContext.request.contextPath}/index"
                        }
                    },
                    error: function () {
                        alert("error")
                    }

                });

            }
        });
    })

</script>

</body>
</html>
