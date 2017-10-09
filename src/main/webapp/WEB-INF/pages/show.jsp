<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <jsp:include page="/common/headEasyUI.jsp"></jsp:include>
</head>
<body>
<div id="cc" class="easyui-layout" style="width:100%;height:100%;">
    <div data-options="region:'north',title:'北',split:true,collapsible:true,minimizable:true"
         style="height:100px; color: red ; background: url('/img/login_bg_2.jpg')">
        <div style="position: absolute;right: 200px;top:60px;">
            <span id="nowDate" style="display: inline-block;float: left; height: 18px;line-height: 18px; color:#ffffff;">欢迎您：宋迎辉 ,今天是:</span>
            <a href="javascript:void(0);" onclick="song()">
            <span id="msg" style="padding: 20px" >
                <img id="icon" src="/img/dengpao.png" />
                <font style="color: #FFF" > 短消息(<span id="sms_num" style="color:red; font-size:14px; font-weight:bold;">0</span>)</font>
            </span>
            </a>
        </div>
    </div>
    <div data-options="region:'west',title:'导航菜单',split:true, collapsible:true" style="width:150px;background: url('/img/login_bg_2.jpg')">
        <div id="aa" class="easyui-accordion" style="width:100%;height:90%;background: url('/img/login_bg_2.jpg')">
            <div title="需求管理" data-options="iconCls:'icon-save',selected:true" style="overflow:auto;padding:0px;background: url('/img/login_bg_2.jpg')">
                <a class="easyui-linkbutton" _href="view/add" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">新建需求</a>
                <a class="easyui-linkbutton" _href="view/list" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">浏览需求</a>
                <a class="easyui-linkbutton" _href="view/edit" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">修改需求</a>
                <a class="easyui-linkbutton" _href="view" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">需求</a>
                <a class="easyui-linkbutton" _href="view/xuqiuduiying" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">需求对应</a>
                <a class="easyui-linkbutton" _href="view/mq" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">消息列表</a>
                <a class="easyui-linkbutton" _href="view/interview_list" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">面试安排列表</a>
                <a class="easyui-linkbutton" _href="view/InterviewBack" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">面试反馈</a>
                <a class="easyui-linkbutton" _href="view/ruxianganpai" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">入项安排</a>
            </div>
            <div title="顾客信息管理" data-options="iconCls:'icon-save',selected:true" style="padding:0px;background: url('/img/login_bg_2.jpg')">
                <a class="easyui-linkbutton" _href="${mapp.URL}" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">浏览顾客信息</a>
                <a class="easyui-linkbutton" _href="${mapp.URL}" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">管理顾客信息</a>
            </div>
            <div title="个人信息管理" data-options="iconCls:'icon-save'" style="padding:0px;background: url('/img/login_bg_2.jpg')">
                <a class="easyui-linkbutton" _href="view/xuqiuduiying" data-options="iconCls:'icon-man'"
                   style="width: 100%;background: url('/img/login_bg_2.jpg')">需求对应</a>
            </div>

        </div>
    </div>
    <div data-options="region:'center',title:'中心面板'" style="padding:0px;background:#eee;background: url('/img/login_bg_2.jpg')">
        <div id="tt" data-options="fit:true" class="easyui-tabs" style="width:500px;height:250px;background: url('/img/login_bg_2.jpg')">
            <div title="首页" style="background: url('/img/login_bg_2.jpg')">
                欢迎您！！！
            </div>
        </div>
    </div>

    <div data-options="region:'south',split:true" style="height:50px;width: auto;background: url('/img/login_bg_2.jpg')" align="center">
        技术支持：河南省863软件孵化器
    </div>
</div>
<script language=Javascript type=text/Javascript>
                var day="";
                var month="";
                var ampm="";
                var ampmhour="";
                var myweekday="";
                var year="";
                mydate=new Date();
                myweekday=mydate.getDay();
                mymonth=mydate.getMonth()+1;
                myday= mydate.getDate();
                myyear= mydate.getYear();
                year=(myyear > 200) ? myyear : 1900 + myyear;
                if(myweekday == 0)
                    weekday=" 星期日 ";
                else if(myweekday == 1)
                    weekday=" 星期一 ";
                else if(myweekday == 2)
                    weekday=" 星期二 ";
                else if(myweekday == 3)
                    weekday=" 星期三 ";
                else if(myweekday == 4)
                    weekday=" 星期四 ";
                else if(myweekday == 5)
                    weekday=" 星期五 ";
                else if(myweekday == 6)
                    weekday=" 星期六 ";
              //  document.write(year+"年"+mymonth+"月"+myday+"日 "+weekday);
                var str = year+"年"+mymonth+"月"+myday+"日 "+weekday;
                var elementById = document.getElementById("nowDate");
                elementById.innerText = elementById.innerText+str;
                //alert(elementById.innerText);
            </script>

<script>
    function song(){
        alert ("aaaaa");
        //var p = $(this).linkbutton('options');
        //var url = $(this).attr("_href");
        var url = "view/mq";
        var title = "消息列表";

       // background: url("/img/login_bg_2.jpg")
        var html = '<iframe src="${pageContext.request.contextPath}/' + url + '"' + ' style="width:100%;height:100%;background: url("/img/login_bg_2.jpg")"></iframe>';
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
    $(function () {
        $(".easyui-linkbutton").linkbutton({
            //获取所有class等于 上面的对象  $(this)
            onClick: function () {
                //$('#btn').linkbutton('disable');
                var p = $(this).linkbutton('options');
                var url = $(this).attr("_href");
                var title = p.text;
                var html = '<iframe src="${pageContext.request.contextPath}/' + url + '"' + ' style="width:100%;height:100%;background: url("/img/login_bg_2.jpg")"></iframe>';
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
