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
    jQuery("#loginform").validationEngine();
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
</script>
<style type="text/css">
  html,body{height:100%; width:100%; overflow:hidden;}
  body{ position:relative;}
  body,h1,h2,h3,form,ul,li,img,input{padding:0; margin:0; border:0 none;}
  body,input,button,select{ font-family:微软雅黑, verdana, Simsun, STXihei; zoom:1;}
  body{ text-align:center; color:#000; font-size:12px; background-color:#fff;}
  header,footer{ margin:0; padding:0; border:0 none; display:block;}
  .bgimg,.mainUi{ position:absolute; left:0; top:0; width:100%; height:100%;}
  .mainUi{ z-index:1;}
  .bgimg{ background-color:#a3a7ab; z-index:0;}
  .bgimg img{ position:absolute; left:0; top:0; }
  .logo{ position:absolute; left:50%; top:50%; width:480px; height:99px; margin-top:-84px; margin-left:-240px; background:url(/img/logo_blue_little.png) no-repeat left top;}
  .login{ position:absolute; left:0; width:100%; left:0; height:80px; bottom:100px; color:#fff; z-index:1;}
  .login_inner{ position:relative; left:0; white-space:nowrap; margin:0 auto; width:764px; height:70px; font-size:14px; line-height:20px;}
  .loginFormIpt,.loginFormIptOnfocus{ position:absolute; z-index:1; width:268px; height:48px; background:url(/img/input_bg1.png) no-repeat;}
  .loginFormIptOnfocus{ background:url(/img/input_bg1_hover.png) no-repeat;}
  .loginFormIpt1,.loginFormIpt1Onfocus{position:absolute; z-index:1; width:77px; height:48px; background:url(/img/input_bg2.png) no-repeat;}
  .loginFormIpt1Onfocus{ background:url(/img/input_bg2_hover.png) no-repeat;}
  .loginTdIpt{ width:300px; height:38px; color:#fff; left:0; line-height:24px; padding:7px 14px; position:absolute; background-color:transparent; font-size:16px;}
  #idInputLine{ overflow:hidden; left:0; top:0;}
  #pwInputLine{ overflow:hidden; left:284px; top:0;}
  #yzInputLine{ overflow:hidden; left:568px; top:0; width:77px;}
  .formSubmit{cursor:pointer; position:absolute; top:0; right:0; width:108px; height:40px; background:url(/img/dl.png) no-repeat; border:none 0;}
  .footer{ width:100%; height:60px; border-top:dotted 1px #ccc; overflow:hidden; color:#fff; position:absolute; z-index:0; left:0; bottom:0; text-shadow:0px 1px 1px #000;}
  .footerNav{ position:relative; top:24px; white-space:nowrap; overflow:hidden; margin:0 auto; text-align:center;}
  .placeholder{ position:absolute; text-align:left; top:0; left:0; width:268px; height:38px; line-height:38px; text-indent:16px; color:#ccc;}
  .login_yzm{ position:absolute; zoom:1; width:71px; height:54px; z-index:2; background:url(/img/yzm_bg_little.png) no-repeat; right:112px; top:-62px; padding:10px; padding-top:4px;}

  .FormIpt_L{ background:url(/img/input_bg_left.png) no-repeat; display:inline-block; float:left; height:38px; }
  .FormIpt_L .FormIpt_R{ background:url(/img/input_bg_right.png) no-repeat right top; width:260px; display:inline-block; float:right; margin-left:10px; height:38px;}
  .FormIpt_user{position:absolute; left:8px; top:8px; color:#ccc; font-size: 12pt; width:250px; text-align:left;}
  .login_up,.login_down{position:relative; left:0; white-space:nowrap; margin:0 auto; width:764px; height:30px; font-size:14px; text-align:left; text-shadow:0 1px 1px #000000}

  .login_down A:link {
    COLOR: #000000; TEXT-DECORATION: none
  }
  .login_down A:visited {
    COLOR: #000000; TEXT-DECORATION: none
  }
  .login_down A:hover {
    COLOR: #000000; TEXT-DECORATION: underline
  }

</style>
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
        <a href="javascript:void(0);" onclick="demo_2_2();"  style="color:#0099ff; text-shadow:0px 1px 1px #000; text-decoration:none;">忘记密码?</a>
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

<div class="footer">
  <div class="footerNav">河南省863软件孵化器有限公司</div>
</div>

</body>
</html>
