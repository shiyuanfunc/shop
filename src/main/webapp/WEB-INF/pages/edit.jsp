<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>编辑页面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.3.3/themes/icon.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>

</head>
<body  style="background-color:#ffffff">
<div class="easyui-panel" title="新增需求" style="width:350px;padding:30px 30px;text-align:center;">
    <form id="ff" method="post" style="width:350px;">
        <input type="hidden" name="id">
        <div style="text-align:center; margin-bottom:20px">
            <lable for="publish">发布时间:</lable>
            <input class="easyui-datebox" name="publish"  data-options="required:true" style="width:150px"/>
        </div>
        <div style="text-align:center; margin-bottom:20px">
            <label for="type">技术方向:</label>
            <select id="dd" class="easyui-combobox" name="type" data-options="required:true" style="width:150px;">
                <option value="aa">请选择</option>
                <option>java</option>
                <option>c#</option>
                <option>php</option>
            </select>

        </div>

        <div style="text-align:center; margin-bottom:20px">
            <label for="workyear">工作年限:</label>
            <input class="easyui-textbox"  name="workyear" data-options="required:true'" style="width:150px" placeholder="请输入年限要求"/>
        </div>

        <div style="text-align:center; margin-bottom:20px">
            <label for="num">人数:</label>
            <input class="easyui-textbox"  name="num" data-options="required:true'" style="width:150px"/>
        </div>
        <div style="text-align:center; margin-bottom:20px">
            <label for="starttime">到岗时间:</label>
            <input class="easyui-textbox"  name="starttime" data-options="required:true'" style="width:150px"/>
        </div>
        <div style=" text-align:center; margin-bottom:20px">
            <label for="address">外派地址:</label>
            <input class="easyui-textbox"  name="address" data-options="required:true'" style="width:150px"/>
        </div>
        <div style="text-align:center; margin-bottom:20px">
            <label for="status">需求状态:</label>
            <input class="easyui-textbox"  name="status" data-options="required:true'" style="width:150px"/>
        </div>

        <div style="margin-bottom:20px;text-align:center;">
            <lable for="method">面试方式:</lable>
            <select id="cc" class="easyui-combobox" name="method" style="width:150px">
                <option value="0">请选择</option>
                <option value="tel">电话面试</option>
                <option value="view">视频面试</option>
                <option value="onsite">现场面试</option>
        </div>
        </select>

    </form>
    <div style="text-align:center;padding:5px 0">
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:80px">保存</a>
    </div>
</div>
<script>
    function submitForm(){

        $('#ff').form({
            url:'request/list',
            onSubmit: function(){
                // do some check
                // return false to prevent submit;
            }

        });

    }

</script>
</body>
</html>