<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/30
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>面试反馈</title>
  <link href="/css1/style.css" rel="stylesheet" type="text/css" />
  <link href="/css1/select.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="/js/jquery.js"></script>
  <script type="text/javascript" src="/js/select-ui.min.js"></script>

  <script type="text/javascript">
    KE.show({
      id : 'content7',
      cssPath : './index.css'
    });
  </script>

  <script type="text/javascript">
    $(document).ready(function(e) {
      $(".select1").uedSelect({
        width : 345
      });
      $(".select2").uedSelect({
        width : 167
      });
      $(".select3").uedSelect({
        width : 100
      });
    });

    function checkAll(){
      arr = document.getElementsByName("userCheckId");
      if(document.getElementById("checkAll").checked==true){
        for(i=0;i<arr.length;i++){
          arr[i].checked = true;
        }
      } else{
        for(j=0;j<arr.length;j++){
          arr[j].checked = false;
        }
      }
    }
  </script>
</head>
<body style="background-color:#ffffff">
<div class="place">
  <span>位置：</span>
  <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">面试反馈</a></li>
  </ul>
</div>
<div class="formbody">
  <div id="tab2" class="tabson">
    <ul class="seachform">
      <li><label>序号</label><input name="" type="text" class="scinput" /></li>
      <li><label>通过状态</label>
        <div class="vocation">
          <select class="select3">
            <option value="" style="color: #c2c2c2;">---请选择---</option>
            <option>通过</option>
            <option>未通过</option>
          </select>
        </div>
      </li>

      <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>

    </ul>


    <table class="tablelist">
      <thead>
      <tr>
        <th><input name="userCheckId" type="checkbox" id="checkAll" value=""  onclick="checkAll()"/></th>
        <th>序号</th>
        <th>通过状态</th>
        <th>未通过原因</th>
        <th>进项目时间（客户预期）</th>
        <th>备注</th>
        <th>操作</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td><input name="userCheckId" type="checkbox" value="" /></td>
        <td>20130908</td>
        <td><i class="sort"><img src="/images/fail.gif" /></i></td>
        <td>项目经验|技术能力|语言能力|沟通能力|其他</td>
        <td></td>
        <td>其他</td>
        <td><input name="" type="button" value="关闭"/></td>
      </tr>

      <tr>
        <td><input name="userCheckId" type="checkbox" value="" /></td>
        <td>20130907</td>
        <td><i class="sort"><img src="/images/fail.gif"/></i></td>
        <td>项目经验|技术能力|语言能力|沟通能力|其他</td>
        <td></td>
        <td>其他</td>
        <td><input name="" type="button" value="关闭"/></td>
      </tr>

      <tr>
        <td><input name="userCheckId" type="checkbox" value="" /></td>
        <td>20130910</td>
        <td><i class="sort"><img src="/images/pass.gif" /></i></td>
        <td></td>
        <td>2017-10-12</td>
        <td>其他</td>
        <td><input name="" type="button" value="关闭"/></td>
      </tr>
      <tr>
        <td><input name="userCheckId" type="checkbox" value="" /></td>
        <td>20130910</td>
        <td><i class="sort"><img src="/images/pass.gif" /></i></td>
        <td></td>
        <td>2017-10-12</td>
        <td>其他</td>
        <td><input name="" type="button" value="关闭"/></td>
      </tr>
      </tbody>
    </table>
    <div class="pagin">
      <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
      <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
      </ul>
    </div>
  </div>
  <label>&nbsp;</label><input name="" type="button" class="scbtn" value="营销中心"/>
  <label>&nbsp;</label><input name="" type="button" class="scbtn" value="资源中心"/>

</div>

<script type="text/javascript">
  $("#usual1 ul").idTabs();
</script>

<script type="text/javascript">
  $('.tablelist tbody tr:odd').addClass('odd');
</script>
</div>

</body>
</html>
