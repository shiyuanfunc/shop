<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品上传</title>
    <jsp:include page="/common/headEasyUI.jsp"></jsp:include>
</head>
<style rel="stylesheet" type="text/css">
    div{
        margin-top:20px;

    }
    div.main{
        position: relative;
        border: 10px outset burlywood;
        width: 650px;
        text-align: center;
        margin: 200px auto;
    }
    #btn{
        position: relative;
    }
    form{
        position: relative;
        margin-top: 50px;
        margin-bottom: 50px;
    }
</style>
<body>
<div class="main">
    <form id="ff" method="post" >
        <div class="lb">
            <label>商品名称</label>
            <input name="goodsName" class="easyui-textbox" data-options="iconCls:'icon-search',prompt:'请输入商品名称',height:25" style="width:200px" >
        </div>
        <div>
            <label>商品图片</label>
            <input id="fb" type="text" name="photoFile" style="width:200px">
        </div>
        <div>
            <label>商品价格</label>
            <input type="text" id="nn" name="price" style="width:200px">
        </div>
        <div>
            <label>商品描述</label>
            <input class="easyui-textbox" name="desc" data-options="iconCls:'icon-search'" style="width:200px">
        </div>
        <div>
            <label>商品类别</label>
            <select id="cc" class="easyui-combobox" name="dept" style="width:200px;"
                    data-options="valueField:'id',textField:'text',url:'${pageContext.request.contextPath}/manager/combobox'">
            </select>
        </div>
        <div>
            <a id="reset" href="#" _value="reset" class="easyui-linkbutton" data-options="" style="width: 50px">重置</a>
            <a id="sub" href="#" _value = "submit" class="easyui-linkbutton" data-options="" style="width: 50px">提交</a>
        </div>
    </form>
</div>
<script>
    $(function(){
        $('#nn').numberbox({
            min:0,
            precision:2
        });
        $('#fb').filebox({
            buttonText: '选择文件',
            buttonAlign: 'right',
        });
        $(".easyui-linkbutton").linkbutton({
            onClick:function(){
                var value = $(this).attr("_value");
                if(value == 'reset'){
                    $("#ff").form('reset');
                }
                if (value == 'submit'){
                    $.messager.progress();	// 显示进度条
                    var formData = new FormData($("#ff")[0]);
                    //提交表单
                    $.ajax({
                        url: '${pageContext.request.contextPath}/manager/upload',
                        type:'post',
                        data:formData,
                        contentType: false,
                        async: true,
                        processData: false,
                        success:function(data){
                            $.messager.progress('close');
                            alert(1);
                        },error:function(){
                            $.messager.progress('close');
                            alert(2);
                        }
                    });
                }
            }

        });

    });
</script>
</body>
</html>
