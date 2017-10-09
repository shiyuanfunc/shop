<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/10/9
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css"/>
  <script src="/js/jquery-1.10.2.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
  <title>进项安排</title>
  <style type="text/css">
    html{
      font-size: 16px;
      font-family: "微软雅黑";
    }
    #main label{
      font-size: 1.1rem;
      color: #37363b;
      text-align: right;
      margin-right: -2.2rem;
      padding-top: 0.5rem;
    }
    #main .form-group{
      padding-top: 2.1rem;
    }
    #main .form-control{
      width: 21.5rem;
      margin-left: 0.6rem;
      margin-right: -0.6rem;
    }
    #main .submit{
      margin-top: 50px;
      text-align: center;
    }
    #main .submit button{
      width: 18.2rem;
      padding: 0.4rem;
      font-size: 1.1rem;
      color: #FFFFFF;
      font-weight: 600;
      background-color: #27A9E3;
      border: none;
    }
    #main .submit button:hover{
      border: none;
      background-color: #20baee;
      color: #FFFFFF;
    }
    #main .submit p{
      margin-top: 0.7rem;
      font-size: 1.3rem;
    }
    #main .submit a{
      font-size: 1.4rem;
      text-decoration: none;
      color: #27A9E3;
    }
  </style>
</head>
<body>
<div class="container-fluid" style="position: relative;margin: 5px 100px;">
    <div class="title">
        <a href="#" style="text-decoration: none;"><h2>进项安排</h2></a>
    </div>
    <div id="main" style="position: absolute;left: 50px;">
        <form>
            <div class="form-group">
                <label for="inputId" class="col-lg-5 col-sm-5 control-label">姓名：</label>
                <div class="col-lg-7 col-lg-7 col-sm-7">
                    <input type="text" class="form-control" id="inputId" placeholder="姓名">
                </div>
            </div>
            <div class="form-group">
                <label for="inputText" class="col-lg-5 col-sm-5 control-label">外派公司：</label>
                <div class="col-lg-7 col-sm-7">
                    <input type="text" class="form-control" id="inputText" placeholder="外派公司">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-lg-5 col-sm-5 control-label">客户经理：</label>
                <div class="col-lg-7 col-sm-7">
                    <input type="text" class="form-control" id="inputPassword" placeholder="客户经理">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword1" class="col-lg-5 col-sm-5 control-label">进项目时间：</label>
                <div class="col-lg-7 col-sm-7">
                    <input type="date" class="form-control" id="inputPassword1" placeholder="进项目时间">
                </div>
            </div>
            <div class="form-group">
                <label for="inputBth" class="col-lg-5 col-sm-5 control-label">住宿情况：</label>
                <div class="col-lg-7 col-sm-7">
                    <select class="form-control" id="inputClass">
                        <option>--请选择--</option>
                        <option>公司发放房补</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="inputClass" class="col-lg-5 col-sm-5 control-label">电脑情况：</label>
                <div class="col-lg-7 col-sm-7">
                    <select class="form-control" id="inputClass">
                        <option>--请选择--</option>
                        <option>客户提供电脑</option>
                        <option>自带电脑</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="inputOver" class="col-lg-5 col-sm-5 control-label">报道地址/客户方地址(*)：</label>
                <div class="col-lg-7 col-sm-7">
                    <input type="text" class="form-control" id="inputOver" placeholder="报道地址/客户方地址(*)">
                </div>
            </div>
            <div class="form-group">
                <label for="inputOver" class="col-lg-5 col-sm-5 control-label">预计下项时间：</label>
                <div class="col-lg-7 col-sm-7">
                    <input type="date" class="form-control" id="inputOver" placeholder="预计下项时间">
                </div>
            </div>
            <div class="form-group">
                <label for="inputOver" class="col-lg-5 col-sm-5 control-label">备注：</label>
                <div class="col-lg-7 col-sm-7">
                    <input type="text" class="form-control" id="inputOver" placeholder="备注">
                </div>
            </div>
            <div class="submit">
                <button type="submit" class="btn btn-default">保存</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
