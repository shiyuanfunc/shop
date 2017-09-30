
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="/static/h-ui/css/H-ui.min.css" />
  <!--<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.admin.css" />-->
  <link rel="stylesheet" type="text/css" href="/lib/Hui-iconfont/1.0.8/iconfont.css" />
  <!--<link rel="stylesheet" type="text/css" href="static/h-ui/skin/default/skin.css" id="skin" />-->
  <!--<link rel="stylesheet" type="text/css" href="static/h-ui/css/style.css" />-->
  <script type="text/javascript" src="/lib/jquery/1.9.1/jquery.js" ></script>
  <title>需求对应页面</title>
  <script type="text/javascript">
    function deleteThisRow(obj) {
      var tr = $(obj).parent().parent();
      tr.remove();
    }
  </script>
</head>
<body>
<div class="text-c">
  <div class="text-c">
    <div style="text-align: left;">
      <label>技术方向：</label>
      <select>
        <option value="1" selected="selected">Java开发工程师</option>
        <option value="2">.net开发工程师</option>
        <option value="3">前端开发工程师</option>
        <option value="3">软件测试工程师</option>
      </select>
      <label>工作经验(年限要求)：</label>
      <select>
        <option value="1">2</option>
        <option value="2" selected="selected">2.5</option>
        <option value="3">3</option>
        <option value="4">3.5</option>
        <option value="5">4</option>
        <option value="6">4.5</option>
        <option value="7">5</option>
        <option value="8">5.5</option>
        <option value="9">6</option>
        <option value="10">6.5</option>
      </select>
      <button type="button" class="btn btn-primary" id="" name="" onClick="">查询&nbsp;<i class="Hui-iconfont">&#xe683;</i>	</button>
      <br/>
      <button type="button" class="btn btn-success" id="" name="" onClick=""> 发送&nbsp;<i class="Hui-iconfont">&#xe603;</i></button>
    </div>
  </div>

  <div class="text-c">
    <table class="table table-border table-bordered table-hover table-bg table-sort">
      <thead>
      <tr class="text-c">
        <th>姓名</th>
        <th>年龄</th>
        <th>联系方式</th>
        <th>技术方向</th>
        <th>工作经验(年限要求)</th>
        <th>简历上传</th>
        <th>操作</th>
      </tr>
      </thead>
      <tbody>
      <tr class="text-c">
        <td>
          <span id="name">张三</span>
        </td>
        <td>
          <span id="age">25</span>
        </td>
        <td>
          <span id="phone">15315331533</span>
        </td>
        <td>
          <span id="">Java软件开发工程师</span>
        </td>
        <td>
          <span id="">2.5年</span>
        </td>
        <td>
          <input type="file" value="点击上传简历" />
        </td>
        <td>
          <a onclick="deleteThisRow(this);" style="text-decoration:none;"><i class="Hui-iconfont">&#xe6e2;</i>删除</a>
        </td>
      </tr>
      <tr class="text-c">
        <td>
          <span id="name">李四</span>
        </td>
        <td>
          <span id="age">25</span>
        </td>
        <td>
          <span id="phone">15315331533</span>
        </td>
        <td>
          <span id="">Java软件开发工程师</span>
        </td>
        <td>
          <span id="">2.5年</span>
        </td>
        <td>
          <input type="file" value="点击上传简历" />
        </td>
        <td>
          <a onclick="deleteThisRow(this);" style="text-decoration:none;">删除</a>
        </td>
      </tr>
      <tr class="text-c">
        <td>
          <span id="name">王五</span>
        </td>
        <td>
          <span id="age">25</span>
        </td>
        <td>
          <span id="phone">15315331533</span>
        </td>
        <td>
          <span id="">Java软件开发工程师</span>
        </td>
        <td>
          <span id="">2.5年</span>
        </td>
        <td>
          <input type="file" value="点击上传简历" />
        </td>
        <td>
          <a onclick="deleteThisRow(this);" style="text-decoration:none;"><i class="Hui-iconfont">&#xe6e2;</i></a>
        </td>
      </tr>
      <tr class="text-c">
        <td>
          <span id="name">赵六</span>
        </td>
        <td>
          <span id="age">25</span>
        </td>
        <td>
          <span id="phone">15315331533</span>
        </td>
        <td>
          <span id="">Java软件开发工程师</span>
        </td>
        <td>
          <span id="">2.5年</span>
        </td>
        <td>
          <input type="file" value="点击上传简历" />
        </td>
        <td>
          <a onclick="deleteThisRow(this);" style="text-decoration:none;"><i class="Hui-iconfont">&#xe6e2;</i></a>
        </td>
      </tr>
      <tr class="text-c">
        <td>
          <span id="name">钱七</span>
        </td>
        <td>
          <span id="age">25</span>
        </td>
        <td>
          <span id="phone">15315331533</span>
        </td>
        <td>
          <span id="">Java软件开发工程师</span>
        </td>
        <td>
          <span id="">2.5年</span>
        </td>
        <td>
          <input type="file" value="点击上传简历" />
        </td>
        <td>
          <a onclick="deleteThisRow(this);" style="text-decoration:none;"><i class="Hui-iconfont">&#xe6e2;</i></a>
        </td>
      </tr>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>
