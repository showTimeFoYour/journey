<%--
  User: Frogzec
  Date: 2017/11/25
  Time: 17:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>

<form  id="form1" action="${pageContext.request.contextPath}/index">
    <input type="submit" value="返回主页">
</form>

<script>

$("#form1").submit(function(){
     var i= confirm("确认返回主页?")
    if(i)
    {
        return true;
    }

});
</script>
</body>
</html>
