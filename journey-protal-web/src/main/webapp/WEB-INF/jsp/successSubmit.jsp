<%--
  User: Frogzec
  Date: 2017/11/25
  Time: 14:51
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


<script>

    $(function(){
      alert("提交订单成功");
      if(confirm("确认跳转"))
      {
         location.href="${pageContext.request.contextPath}/user-info";
      }
    })
</script>
</body>
</html>
