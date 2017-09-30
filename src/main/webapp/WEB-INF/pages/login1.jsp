<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/29
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>863登录界面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css"/>
  <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js" type="text/javascript"></script>
</head>
<script>
  var submitFlag = false;
  document.onkeydown=function(e) {
    var e = e||event;
    if(e.keyCode==13) {
      if(submitFlag){
        return;
      }
      var result = userLogin();
      if(result!=null&&result){
        submitFlag = true;
      }
      return false;
    }
  };

  $(document).ready(function(){
    //$("#loginform").validationEngine();
  });
  $(document).ready(function(){
    $("#captcha").click(function(){

      $(this).attr("src", "/ioms/Captcha.jpg?time=" + new Date());
      return false;
    });
  });

  function asssignment(){
    $("#username").attr("name","userName");
    $("#loginform").attr("action","/ioms/userWorkLogin/toLogin");
  }

  function userLogin(){
    var username = $("#username").val();
    var password = $("#password").val();
    var captcha_key = $("#captcha_key").val();

    if(username == "") {
      alert("请输入用户名");
      $("#username").focus();
      return false;
    }
    if(password == "") {
      alert("请输入密码");
      $("#password").focus();
      return false;
    }
    if(captcha_key == "" || captcha_key == '验证码') {
      alert("请输入验证码");
      $("#captcha_key").focus();
      return false;
    }

    $("#username").attr("name","username");
    $("#loginform").attr("action","${pageContext.request.contextPath}/view/show");
    $("#loginform").submit();
    submitFlag = true;
    $("#loginBnt").attr("disabled",true);
    return true;
  }
  function usernameOnfocus() {
    $("#idInputLine").attr("class","loginFormIptOnfocus");
    $(".login_yzm").hide();
    $("#formIpt_user").hide();
  }
  function usernameOnblur() {
    $("#idInputLine").attr("class","loginFormIpt");
    var username = $("#username").val();
    if(username == ""){
      $("#formIpt_user").show();
    }

  }

  function passwordOnfocus() {
    $("#pwInputLine").attr("class","loginFormIptOnfocus");
    $(".login_yzm").hide();
    $("#formIpt_pass").hide();

  }
  function passwordOnblur() {
    $("#pwInputLine").attr("class","loginFormIpt");
    var password = $("#password").val();
    if(password == ""){
      $("#formIpt_pass").show();
    }

  }

  function yzmOnblur(){
    $("#yzInputLine").attr("class","loginFormIpt1");
    if($("#captcha_key").val()=='') {
      $("#captcha_key").val('验证码');
    };
  }

  function yzmOnfocus() {
    $("#yzInputLine").attr("class","loginFormIpt1Onfocus");
    if($("#captcha_key").val() == '验证码') {
      $("#captcha_key").val('');
      $("#captcha_key").focus();
      $(".login_yzm").show();
    };
  }

  function userNameClick(){
    $("#username").focus();
  }

  function passwordClick(){
    $("#password").focus();
  }

    function demo_2_2(){
        alert("暂时未开放");
    }
</script>
</head>
<body>
<input type="hidden" id="resetPasswdsubmit" value="/ioms/login/repasswd/reset">
<div class="bgimg">
  <img src="${pageContext.request.contextPath}/img/login_bg_2.jpg"  style="display:inline; margin-left:0; height:auto; width:100%; height:100%; z-index:1;" />
</div>
<section class="mainUi">
  <header><h1 class="logo"></h1></header>
</section>

<form id="loginform" action="${pageContext.request.contextPath}/view/show" method="post">

  <div class="login">
    <div class="login_up">
    </div>
    <div class="login_inner">
      <div style="position:absolute; top:46px; left:5px;">
        <a href="javascript:void(0);" onclick="demo_2_2();"  >忘记密码?</a>
      </div>

      <div id="formIpt_user" class="FormIpt_user" style="z-index: 2;" onclick="userNameClick();">用户名</div>
      <div class="loginFormIpt" id="idInputLine">
        <input name="username" id="username" type="text" class="loginTdIpt" title="请输入账号" tabindex="1" onfocus="usernameOnfocus();" onblur="usernameOnblur();" onclick="userNameClick();"/>
      </div>
      <div id="formIpt_pass"  class="FormIpt_user" style="left: 294px; z-index: 3;" onclick="passwordClick();">密&nbsp;码</div>
      <div class="loginFormIpt" id="pwInputLine">
        <input name="password" id="password" type="password" type="text" class="loginTdIpt" title="请输入密码" onfocus="passwordOnfocus();" onblur="passwordOnblur();" tabindex="2" onclick="passwordClick();"/>
      </div>
      <!--<div class="loginFormIpt1" id="yzInputLine">
          <input style="width: 48px; left: 2px;" name="captcha_key" id="captcha_key" type="text"
              class="loginTdIpt" title="请输入验证码" onfocus="yzmOnfocus();" onblur="yzmOnblur();"
              value="验证码"  tabindex="3"/>
      </div> -->
      <button class="formSubmit" type="button" tabindex="3" id="loginBnt" onclick="return userLogin();"></button>
      <div class="login_yzm" style="display: none;">
        <img src="/img/back2.jpg" width="60" height="40" id="captcha" />
      </div>

    </div>
  </div>
</form>

<div class="footer" >
  <div class="footerNav">河南省863软件孵化器有限公司</div>
</div>

</body>
</html>
