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
            <div class="logo_box" style="margin-top: -380px">
                <h3>欢迎您注册</h3>
                <form action="#" name="f" method="post" id="userDengLuForm">
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="username" id="username" class="text" style="color: #FFFFFF !important" type="text"
                               placeholder="请输入昵称（3-10个字母、数字、下划线）">
                        <br> <span id="sp1"></span>
                    </div>
                    <%--<div><a><span id="sp1"></span></a>--%>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="upwd" id="upwd" class="text"
                               style="color: #FFFFFF !important; position:absolute; z-index:100;" value=""
                               type="password" placeholder="请输入密码（6-10个字母、数字、下划线）">
                        <br><br>
                        <span id="sp2"></span>

                    </div>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="reupwd" id="reupwd" class="text"
                               style="color: #FFFFFF !important; position:absolute; z-index:100;" value=""
                               type="password" placeholder="请确认密码（6-10个字母、数字、下划线）">
                        <br><br>
                        <span id="resp2"></span>

                    </div>


                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="realname" id="realname" class="text" style="color: #FFFFFF !important" type="text"
                               placeholder="请输入真实姓名（3-4个中文）">
                        <br> <span id="sp3"></span>
                    </div>

                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="phone" id="phone" class="text" style="color: #FFFFFF !important" type="text"
                               placeholder="请输入手机号">
                        <br> <span id="sp4"></span>
                    </div>

                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="email" id="email" class="text" style="color: #FFFFFF !important" type="text"
                               placeholder="请输入邮箱">
                        <br> <span id="sp5"></span>
                    </div>

                    性别：<label><input name="gender" type="radio" value="0" checked="checked"/>女 </label>
                    <label><input name="gender" type="radio" value="1"/>男 </label>


                    <%--<div class="input_outer">
                            <span class="u_user"></span>
                            <input name="gender" id="gender" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入性别">
                            <br><span id="sp6"></span>
                        </div>--%>
                    <%--<div >
                       <input type="radio" name="gender" id="gender" value="0" checked="checked">女
                        <input type="radio" name="gender" id="gender" value="1" checked="checked">男
                    </div>--%>
                    <br><br>
                    <a style="color: white;margin-left: 100px" href="login">有账号！去登录！</a>

                    <%--<div><a><span id="sp2"></span></a></div>--%>
                    <%--<div class="mb2"><a class="act-but submit" href="javascript:document:userDengLuForm.submit();" style="color: #FFFFFF">登录</a></div>--%>
                    <%--<div class="mb2"><a class="act-but submit" type="submit" name="submit" style="color: #FFFFFF">登录</a></div>--%>
                    <table>
                        <tr align="center">
                            <td><input class=" submit" type="submit" name="submit1" value="注册"
                                       style="margin-right:20px;margin-left: 40px"/></td>
                            <td><input class=" submit" type="reset" name="reset" value="重置"
                                       style="margin-right:20px"/></td>
                            <td><input class=" submit" type="button" name="button" value="返回"
                                       onclick="history.back()"/></td>
                        </tr>
                    </table>
                    <%--<div class="mb2"> <input  type="submit" name="submit1" ><a class="act-but submit"  style="color: #FFFFFF">登录</a> <input></div>--%>
                    <%--<br/>--%>
                    <%--<a  style="color: white;margin-left: 35px "  href="#">忘记密码？</a>--%>


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

//用户名
        $("#username").blur(function () {
            var un = $("#username").val();
            var regexName = /^\w{3,10}$/;
            if (!regexName.test(un)) {
                $("#sp1").html("输入用户名，格式为3-10个字母、数字、下划线").css('color', 'red');
                $("#username").focus();
            } else {
                $("#sp1").html("").css('color', 'red');
//            flag1=true;
            }
        });
//密码
        $("#upwd").blur(function () {
            var pw = $("#upwd").val();
            var regexPwd = /^\w{6,10}$/;
            if (!regexPwd.test(pw)) {
                $("#sp2").html("输入密码，格式为6-10个字母、数字、下划线").css('color', 'red');
                $("#upwd").focus();
            } else {
                $("#sp2").html("").css('color', 'red');
//            flag1=true;
            }
        });
//重复密码
     /*    var pw1 = $("#upwd").val();
        if(pw1 !=null || pw1 !="") {*/
            $("#reupwd").blur(function () {
                var reupwd = $("#reupwd").val();
                var pw = $("#upwd").val();
                var regexRepwd = /^\w{6,10}$/;
//            alert(reupwd);
//            alert(pw);
                if (pw == null || pw == "") {
                    $("#resp2").html("先输入密码！！！").css('color', 'red');
                }else
                if (pw != reupwd) {
//                alert(123);
                    $("#resp2").html("确认密码输入错误").css('color', 'red');
                    $("#reupwd").focus();
                } else {
                    $("#resp2").html("").css('color', 'red');
//            flag1=true;
                }
                /*   if (!regexPwd.test(pw)) {
                       $("#resp2").html("密码格式为6-10个字母、数字、下划线").css('color', 'red');
                       $("#reupwd").focus();
                   } else {
                       $("#resp2").html("").css('color', 'red');
       //            flag1=true;
                   }*/
            });


        //真实姓名
        $("#realname").blur(function () {
            var realname = $("#realname").val();
            var regexRealname = /^[\u4e00-\u9fa5]{3,4}$/;
            $("#sp3").html(realname).css('color', 'red');
            if (!regexRealname.test(realname)) {
                $("#sp3").html("输入姓名，格式为3-4个中文").css('color', 'red');
                $("#realname").focus();
            } else {
                $("#sp3").html("").css('color', 'red');
//            flag1=true;
            }
        });

        //手机号码
        $("#phone").blur(function () {
            var phone = $("#phone").val();
            var regexPhone = /^[1][3458]\d{9}$/;
            if (!regexPhone.test(phone)) {
                $("#sp4").html("请输入正确的手机号码").css('color', 'red');
                $("#phone").focus();
            } else {
                $("#sp4").html("").css('color', 'red');
//            flag1=true;
            }
        });

        //邮箱
        $("#email").blur(function () {
            var email = $("#email").val();
            var regexEmail = /^\w+@\w+\.\w+$/;
            if (!regexEmail.test(email)) {
                $("#sp5").html("输入邮箱，格式为XXX@XXX.XXX").css('color', 'red');
                $("#email").focus();
            } else {
                $("#sp5").html("").css('color', 'red');
//            flag1=true;
            }
        });

        //submit里面一个回调函数
        //submit提交的时候，注册一个事件对象到e里面去
        $("#userDengLuForm").submit(function (e) {

            // alert(1);
            var un = $("#username").val();
            var pw = $("#upwd").val();
            var reupwd = $("#reupwd").val();
            var realname = $("#realname").val();
            var phone = $("#phone").val();
            var email = $("#email").val();
            var gender = $("input:radio:checked").val();

//            var regexName = /^\w{6,10}$/;


            var flag1 = false;
            var flag2 = false;
            var flag3 = false;
            var flag4 = false;
            var flag5 = false;
            var flag6 = false;

            if (un == null || un == "") {
                $("#sp1").html("用户名不能为空").css('color', 'red');
            }else {
                $("#sp1").html("");
                flag1= true;
            }

            if (pw == null || pw == "") {
                $("#sp2").html("密码不能为空").css('color', 'red');
            }
            else {
                $("#sp2").html("");
                flag2 = true;
            }

            if (reupwd == null || reupwd == "") {
                $("#resp2").html("确认密码不能为空").css('color', 'red');
            }
            else {
                $("#resp2").html("");
                flag6 = true;
            }

            if (realname == null || realname == "") {
                $("#sp3").html("真实姓名不能为空").css('color', 'red');
            }
            else {
                $("#sp3").html("");
                flag3 = true;
            }

            if (phone == null || phone == "") {
                $("#sp4").html("手机不能为空").css('color', 'red');
            }
            else {
                $("#sp4").html("");
                flag4 = true;
            }

            if (email == null || email == "") {
                $("#sp5").html("邮箱不能为空").css('color', 'red');
            }
            else {
                $("#sp5").html("");
                flag5 = true;
            }

//            alert(12)
            //在这里，不管他有没有验证成功，都先不要提交表单，要阻止表单提交
            e.preventDefault();
            //&1个2个都可以,2个&是短路法，效率高
            if (flag1 && flag2 && flag3 && flag4 && flag5&& flag6) {
                //ajax提交表单
                alert(111111)
                var param = {
                    "username": un,
                    "upwd": pw,
                    "realname": realname,
                    "phone": phone,
                    "email": email,
                    "gender": gender
                };
//        var param={"username":un,"upwd":pw,"realname":realname,"phone":phone,"email":email};


                $.ajax({
                    url: "userRegister",
                    data: param,
                    dataType: "text",
                    type: "post",
                    cache: false,
                    //写了个变量rec接收后台传过来的值
                    success: function (rec) {


                        //alert(info)
                        if (rec == 0) {
                            $("#sp1").html("用户名不能为空").css('color', 'red');

                        } else if (rec == 1) {
                            $("#sp2").html("密码不能为空").css('color', 'red');
//                            alert(321)
                        } else if (rec == 2) {
                            $("#sp1").html("用户名或密码错误").css('color', 'red');
                        } else {
                            //location.href="${pageContext.request.contextPath}/index.jsp"
                            alert("注册成功，进入首页")
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
