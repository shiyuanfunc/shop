<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>需求列表查询</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script>
$('#dg').datagrid({
	toolbar: '#tb'
});

</script>
</head>

<body>


<table id="dg"  ></table>
<div id="tb">
	<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</a>
	<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-help',plain:true">新增</a>
	<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-help',plain:true">删除</a>
</div>

<script type="text/javascript">
	
		$('#dg').datagrid({
			url:'${pageContext.request.contextPath}/request/list',
			columns:[[
				{field:'ck',checkbox:true},
				{field:'id',title:'编号'},
		        {field:'publish',title:'发布日期'},
		        {field:'type',title:'技术方向'},
		        {field:'num',title:'人数'},
		        {field:'workyear',title:'工作年限'},
		        {field:'starttime',title:'到岗时间'},
		        {field:'outtime',title:'外派周期'},
		        {field:'method',title:'面试方式'},
		        {field:'address',title:'外派地址'},
		        {field:'status',title:'需求状态'},
		    ]],
        fit:true,
		singleSelect:true,
		pagination:true,
		pageSize:1,
		pageList:[5,10,20],
		rownumbers:true,
		toolbar:'#tb',
		checkOnSelect:true	
		});
		
	
</script>
</body>

</html>