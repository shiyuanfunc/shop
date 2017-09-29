<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <jsp:include page="/common/headEasyUI.jsp"></jsp:include>
</head>
<body>
<div id="cc" class="easyui-layout" style="width:100%;height:100%;">
    <div data-options="region:'north',title:'北',split:true,collapsible:true,minimizable:true"
         style="height:150px; color: red ; background: url('/img/login_bg_2.jpg')">
        <div>
            后台管理
        </div>
    </div>
    <div data-options="region:'west',title:'导航菜单',split:true, collapsible:true" style="width:150px;">
        <div id="aa" class="easyui-accordion" style="width:100%;height:90%;">
            <div title="需求管理" data-options="iconCls:'icon-save',selected:true" style="overflow:auto;padding:0px;">
                <a class="easyui-linkbutton" _href="view/uplaodGoods" data-options="iconCls:'icon-man'"
                   style="width: 100%">新建需求</a>
                <a class="easyui-linkbutton" _href="${mapp.URL}" data-options="iconCls:'icon-man'"
                   style="width: 100%">浏览需求</a>
                <a class="easyui-linkbutton" _href="view/display" data-options="iconCls:'icon-man'"
                   style="width: 100%">浏览商品信息</a>
                <a class="easyui-linkbutton" _href="${mapp.URL}" data-options="iconCls:'icon-man'"
                   style="width: 100%">修改商品信息</a>

            </div>
            <div title="顾客信息管理" data-options="iconCls:'icon-save',selected:true" style="padding:0px;">
                <a class="easyui-linkbutton" _href="${mapp.URL}" data-options="iconCls:'icon-man'"
                   style="width: 100%">浏览顾客信息</a>
                <a class="easyui-linkbutton" _href="${mapp.URL}" data-options="iconCls:'icon-man'"
                   style="width: 100%">管理顾客信息</a>
            </div>
            <div title="个人信息管理" data-options="iconCls:'icon-save'" style="padding:0px;">
                <a class="easyui-linkbutton" _href="${mapp.URL}" data-options="iconCls:'icon-man'"
                   style="width: 100%">上传图片</a>
            </div>

        </div>
    </div>
    <div data-options="region:'center',title:'中心面板'" style="padding:0px;background:#eee;">
        <div id="tt" data-options="fit:true" class="easyui-tabs" style="width:500px;height:250px;">
            <div title="首页">
                欢迎您！！！
            </div>
        </div>
    </div>

    <div data-options="region:'south',split:true" style="height:50px;width: auto" align="center">
        技术支持：
    </div>
</div>
<script>
    $(function () {
        $(".easyui-linkbutton").linkbutton({
            //获取所有class等于 上面的对象  $(this)
            onClick: function () {
                //$('#btn').linkbutton('disable');
                var p = $(this).linkbutton('options');
                var url = $(this).attr("_href");
                var title = p.text;
                var html = '<iframe src="${pageContext.request.contextPath}/' + url + '"' + ' style="width:100%;height:100%"></iframe>';
                if ($("#tt").tabs("getTab", title) == null) {
                    $('#tt').tabs('add', {
                        title: title,
                        content: html,
                        selected: true,
                        closable: true
                    });
                } else {
                    $("#tt").tabs("select", title);
                }
            }
        });

        setting = {
            view: {
                selectedMulti: false
            },
            async: {
                enable: true,
                url: "#",
                type: 'post',
                dataType: 'json'
            },
            data: {
                key: {
                    name: 'MENUNAME',
                },
                simpleData: {
                    enable: true,
                    idKey: "ID",
                    pIdKey: "PARENTID",
                    rootPId: null
                }
            },
            check: {
                enable: true,
                chkboxType: {"Y": "s", "N": "ps"}
            },
            callback: {
                onCheck: function (event, treeId, treeNode) {
                    //alert(treeNode.MENUNAME);
                }
            }
        };
        $.fn.zTree.init($("#tree"), setting);
    });
</script>
</body>
</html>
