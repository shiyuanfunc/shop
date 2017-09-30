<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/30
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8" />
  <title>消息列表</title>
  <link rel="shortcut icon" href="/ioms/static/images/favicon.ico" type="image/x-icon" />
  <link href="http://218.28.28.186:86/ioms/static/dwz/themes/default/style.css" rel="stylesheet" type="text/css" media="screen" />
  <link href="http://218.28.28.186:86/ioms/static/dwz/themes/css/core.css" rel="stylesheet" type="text/css" media="screen" />
  <link href="http://218.28.28.186:86/ioms/static/dwz/themes/css/custom.css" rel="stylesheet" type="text/css" media="screen" />
  <link href="http://218.28.28.186:86/ioms/static/dwz/themes/css/print.css" rel="stylesheet" type="text/css" media="print" />
  <link href="http://218.28.28.186:86/ioms/static/validationEngine/css/validationEngine.jquery.css" rel="stylesheet" type="text/css" media="screen" />
  <link href="http://218.28.28.186:86/ioms/static/ztree/css/zTreeStyle.css" rel="stylesheet" type="text/css" media="screen" />
  <link href="http://218.28.28.186:86/ioms/static/uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<!--[if IE]>
<link href="/ioms/static/dwz/themes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->
<!--[if lte IE 9]>
<script src="/ioms/static/dwz/js/speedup.js" type="text/javascript"></script>
<![endif]-->
<style type="text/css">
  #header {
    height: 117px
  }

  #leftside,
  #container,
  #splitBar,
  #splitBarProxy {
    top: 120px
  }
</style>
<script src="http://218.28.28.186:86/ioms/static/jquery/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="http://218.28.28.186:86/ioms/static/dwz/js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="http://218.28.28.186:86/ioms/static/validationEngine/js/languages/jquery.validationEngine-zh_CN.js" type="text/javascript" charset="utf-8"></script>
<script src="http://218.28.28.186:86/ioms/static/validationEngine/js/jquery.validationEngine-2.6.4.js" type="text/javascript" charset="utf-8"></script>
<script src="http://218.28.28.186:86/ioms/static/dwz/js/dwz.min.js" type="text/javascript"></script>
<script src="http://218.28.28.186:86/ioms/static/dwz/js/dwz.regional.zh.js" type="text/javascript"></script>
<script src="http://218.28.28.186:86/ioms/static/dwz/js/customer.js" type="text/javascript"></script>
<script src="http://218.28.28.186:86/ioms/static/uploadify/scripts/jquery.uploadify.min.js" type="text/javascript"></script>
<script type="text/javascript" src="http://218.28.28.186:86/ioms/static/js/upload.js"></script>
<script src="http://218.28.28.186:86/ioms/static/ztree/js/jquery.ztree.all-3.5.min.js" type="text/javascript"></script>
<script src="http://218.28.28.186:86/ioms/static/dwz/js/dwz.dialog.js" type="text/javascript"></script>

<script src="/ioms/static/xheditor/xheditor-1.2.2.min.js" type="text/javascript"></script>
<script src="/ioms/static/xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="/ioms/static/ckeditor/ckeditor.js" type="text/javascript"></script>

<script type="text/javascript"></script>
<body>
<div class="pageContent" style="background-color: white">
  <table class="hb_table" width="100%" layoutH="90">
    <thead>
    <tr height="60px">
      <!-- <th width="5%"><input type="checkbox" group="ids" class="checkboxCtrl"/></th> -->
      <th width="20%">时间</th>
      <th>需求</th>
      <th width="20%">跳转</th>
    </tr>
    <tr height="60px">
      <!-- <th width="5%"><input type="checkbox" group="ids" class="checkboxCtrl"/></th> -->
      <td>2017年9月29日 16时43分56秒</td>
      <td>XXX</td>
      <td>
        <a href="###">详情请点击这里查看。</a>
      </td>
    </tr>
    </thead>
    <tbody>
    </tbody>
  </table>
</div>
</body>
</html>
