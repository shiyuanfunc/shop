<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/30
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>面试安排人员列表页</title>
  <link rel="stylesheet" type="text/css" href="/easyui/themes/default/easyui.css">
  <link rel="stylesheet" type="text/css" href="/easyui/themes/icon.css">

  <script type="text/javascript" src="/js/jquery.min.js"></script>
  <script type="text/javascript" src="/easyui/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="/easyui/easyui-lang-zh_CN.js"></script>
</head>
<body>
<table class="easyui-datagrid" id="peopleList">
  <thead>
  <tr>
    <th data-options="field:'interviewDate', width:5">面试日期</th>
    <th data-options="field:'clientName', width:10">客户名称</th>
    <th data-options="field:'interview', width:10">面试方</th>
    <th data-options="field:'terminalClient', width:10">终端客户</th>
    <th data-options="field:'interviewPeople', width:20">面试参与人员</th>
    <th data-options="field:'interviewType', width:10">面试方式</th>
    <th data-options="field:'interviewDate', width:10">面试时间</th>
    <th data-options="field:'isReexamine', width:5">是否需要复试</th>
    <th data-options="field:'remark', width:20">注意事项</th>
    <th data-options="field:'options', width:20">操作</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>2017年9月29日</td>
    <td>杭州东驰</td>
    <td>AA</td>
    <td>支付宝</td>
    <td>张三、李四</td>
    <td>手机</td>
    <td>下午4点</td>
    <td>是</td>
    <td>
      <span class="dd">1此次是杭州东驰一面，一面通过后再由支付宝安排面试。<br/>学历有调整、客户面试特别注重沟通能力等</span>
    </td>
    <td><a class="modify-btn" href="#">修改面试安排</a></td>
  </tr>
  <tr>
    <td>2017年9月29日</td>
    <td>杭州东驰</td>
    <td>AA</td>
    <td>支付宝</td>
    <td>张三、李四</td>
    <td>手机</td>
    <td>下午4点</td>
    <td>是</td>
    <td>
      <span class="dd">2此次是杭州东驰一面，一面通过后再由支付宝安排面试。<br/>学历有调整、客户面试特别注重沟通能力等</span>
    </td>
    <td><a class="modify-btn" href="#">修改面试安排</a></td>
  </tr>
  </tbody>
</table>
<div id="toolbar" style="padding:5px 0px 5px 15px">
  <div>
    <a id="add-btn" href="#">添加面试安排</a>
  </div>
  <hr/>
  <div>
    <select id="search-conditions" class="easyui-combobox">
      <option>查询类型</option>
      <option>面试人员名</option>
    </select>
    <input id="search-ipt" style="width:200px">
    开始时间：<input id="start-date" class="easyui-datetimebox" type="text" name="startDate" />
    结束时间：<input id="end-date" class="easyui-datetimebox" type="text" name="endDate" />
    <select id="interview-type" class="easyui-combobox">
      <option>面试方式</option>
      <option>电话面试</option>
      <option>视频面试</option>
      <option>现场面试</option>
    </select>
  </div>
</div>
<div id="add-dialog"></div>
<script type="text/javascript">
  $(function() {
    // datagrid
    $('#peopleList').datagrid({
      //'title': '面试安排人员列表',
      fit: true,
      pagination: true, // 显示分页工具栏
      fitColumns: true, // 自动调整列大小，要与列的width配合使用
      checkOnSelect: false, // 取消单选框与选中的级联
      selectOnCheck: false, // 取消选中与单选框的级联
      singleSelect: true, // 设置一次只能选择一行
      pageSize: 10,
      pageList: [10, 20, 50],
      rownumbers: true,
      toolbar: '#toolbar', // 设置工具栏
    });

    // 面试方式
    $('#search-conditions').combobox({
      editable: false
    });

    // 搜索框
    $('#search-ipt').textbox({
      iconCls:'icon-search',
    });

    // 面试方式
    $('#interviewType').combobox({
      editable: false
    });

    $('.dd').mouseover(function() {
      var content = $(this).html();
      $(this).tooltip({
        position: 'left',
        content: '<span style="color:#fff;width:10px;">'+content+'</span>',
        onShow: function(){
          $(this).tooltip('tip').css({
            backgroundColor: '#666',
            borderColor: '#666'
          });
        }
      });
    });

    $('#add-btn').linkbutton({
      iconCls: 'icon-add',
      onClick: function() {
        $('#add-dialog').dialog({
          title: '添加面试安排',
          width: 500,
          height: 300,
          closed: false,
          cache: false,
          href: '${pageContext.request.contextPath}/view/interview_details',
          modal: true
        });
      }
    });

    $('.modify-btn').linkbutton({
      iconCls: 'icon-edit',
      onClick: function() {
        $('#add-dialog').dialog({
          title: '修改面试安排',
          width: 500,
          height: 300,
          closed: false,
          cache: false,
          href: '${pageContext.request.contextPath}/view/interview_update',
          modal: true
        });
      }
    });
  });
</script>
</body>
</html>
