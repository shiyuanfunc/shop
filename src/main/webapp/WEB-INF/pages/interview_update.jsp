<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/30
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>修改面试安排</title>
  <link rel="stylesheet" type="text/css" href="/easyui/themes/default/easyui.css">
  <link rel="stylesheet" type="text/css" href="/easyui/themes/icon.css">
  <link rel="stylesheet" type="text/css" href="/easyui/demo/demo.css">

  <script type="text/javascript" src="/js/jquery.min.js"></script>
  <script type="text/javascript" src="/easyui/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="/easyui/easyui-lang-zh_CN.js"></script>
</head>
<body>
<div style="margin:20px 0;"></div>
<%--<div class="easyui-panel" title="修改面试安排" data-options="fit:true"  style="width:100%;">--%>
  <form id="ff" class="easyui-form" method="post" data-options="novalidate:true">
    <div style="margin-bottom:20px">
      <input class="easyui-datebox" name="email" style="width:100%" data-options="label:'面试日期:',required:true" />
    </div>
    <div style="margin-bottom:20px">
      <input class="easyui-textbox" name="name1" style="width:100%" data-options="label:'客户名称:',required:true" value="杭州东驰" />
    </div>
    <div style="margin-bottom:20px">
      <input class="easyui-textbox" name="name2" style="width:100%" data-options="label:'面试方:'">
    </div>
    <div style="margin-bottom:20px">
      <input class="easyui-textbox" name="name3" style="width:100%" data-options="label:'终端客户:'" value="支付宝">
    </div>
    <div style="margin-bottom:20px">
      <input class="easyui-textbox" name="message1" style="width:100%;height:60px" data-options="label:'面试参与人员:',multiline:true,required:true" value="张三、李四">
    </div>
    <div style="margin-bottom:20px">
      <select class="easyui-combobox" name="func" label="面试方式:" required="required" style="width:100%">
        <option value="tel" selected="selected">手机面试</option>
        <option value="view">视频面试</option>
        <option value="onsite">现场面试</option>
      </select>
    </div>
    <div style="margin-bottom:20px">
      <input class="easyui-timespinner" name="time" style="width:100%" data-options="label:'面试时间:',required:true" />
    </div>
    <div style="margin-bottom:20px">
      是否需要复试：
				<span class="radioSpan">
	                <input class="easyui-validatebox" type="radio" name="yes_no" value="1"/>是
					<input class="easyui-validatebox" type="radio" name="yes_no" value="0" data-options="validType:'requireRadio[\'#ff input[name=yes_no]\', \'Yes or no\']'"/>否
	            </span>
    </div>
    <div style="margin-bottom:20px">
      <input class="easyui-textbox" name="message2" style="width:100%;height:60px" data-options="label:'注意事项:',multiline:true" />
    </div>
  </form>
  <div style="text-align:center;padding:5px 0">
    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">保存</a>
  </div>
<%--</div>--%>
<script>
  function submitForm(){
    $('#ff').form('submit',{
      onSubmit:function(){
        return $(this).form('enableValidation').form('validate');
      }
    });
  }
  $.extend($.fn.validatebox.defaults.rules, {
    requireRadio: {
      validator: function(value, param){
        var input = $(param[0]);
        input.off('.requireRadio').on('click.requireRadio',function(){
          $(this).focus();
        });
        return $(param[0] + ':checked').val() != undefined;
      },
      message: '请选择是或者否'
    }
  });
</script>
</body>
</html>
