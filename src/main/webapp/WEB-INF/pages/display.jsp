<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>浏览商品</title>
    <jsp:include page="/common/headEasyUI.jsp"></jsp:include>

</head>
<body>
<table class="easyui-datagrid" style="width:100%;height:100%"
       data-options="url:'datagrid_data.json',fitColumns:true,singleSelect:true">
    <thead>
    <tr>
        <th data-options="field:'code',width:100">编码</th>
        <th data-options="field:'name',width:100">名称</th>
        <th data-options="field:'price',width:100,align:'right'">价格</th>
    </tr>
    </thead>
</table>
</body>
</html>
