<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/27
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试</title>
</head>
<body>
username: <input type="text" id="username"><br><br>
password: <input type="password" id="password"><br><br>
<button id="loginbtn">登录</button>
</body>
<script type="text/javascript">
  $('#loginbtn').click(function() {
    var param = {
      username : $("#username").val(),
      password : $("#password").val()
    };
    $.ajax({
      type: "post",
      url: "<%=request.getContextPath()%>" + "/checkLogin.json",
      data: param,
      dataType: "json",
      success: function(data) {
        if(data.success == false){
          alert(data.errorMsg);
        }else{
          //登录成功
          window.location.href = "<%=request.getContextPath()%>" +  "/loginsuccess.jhtml";
        }
      },
      error: function(data) {
        alert("调用失败....");
      }
    });
  });
</script>
</html>
