<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/9/29
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图表展示</title>
    <!-- 引入echart.js -->
    <jsp:include page="/common/headEasyUI.jsp"></jsp:include>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
</head>
<body>
        <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
        <div id="main" style="width: 600px;height:400px;"></div>


        <!-- 饼图 -->
        <div id="bing" style="width: 600px;height: 400px;"></div>

        <--  折线图 -->
        <div id="zhexian" style="width: 600px;height: 400px;"></div>

        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));

            myChart.setOption({
                title:{
                    text:"EChart 入门示例"
                },
                tooltip: {},
                legend: {
                    data:['销量']
                },
                xAxis: {
                    data: []
                },
                yAxis: {},
                series: [{
                    name: '销量',
                    type: 'bar',
                    data: []
                }]
            });

            //异步加载数据

            $.ajax({
                url:"${pageContext.request.contextPath}/managerr/getData",
                dataType:'json',
                type:'post',
                success:function(data){
                    //alert(data);
                    console.log(data);
                    myChart.setOption({
                        xAxis: {
                            data: data.categories
                        },
                        series: [{
                            // 根据名字对应到相应的系列
                            name: '销量',
                            data: data.data
                        }]
                    });
                }
            });


            // 指定图表的配置项和数据
/*            var option = {
                title: {
                    text: 'ECharts 入门示例'
                },
                tooltip: {},
                legend: {
                    data:['销量']
                },
                xAxis: {
                    data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
                },
                yAxis: {},
                series: [{
                    name: '销量',
                    type: 'bar',
                    data: [5, 20, 36, 10, 10, 20]
                }]
            };*/

            // 使用刚指定的配置项和数据显示图表。
           // myChart.setOption(option);

        </script>

        <script type="text/javascript">
            var myChart1 = echarts.init(document.getElementById('bing'));
            myChart1.setOption({
                series : [
                    {
                        name: '访问来源',
                        roseType: 'angle',
                        type: 'pie',
                        radius: '60%',

                        data:[
                            {value:235, name:'视频广告'},
                            {value:274, name:'联盟广告'},
                            {value:310, name:'邮件营销'},
                            {value:335, name:'直接访问'},
                            {value:400, name:'搜索引擎'}
                        ]
                    }
                ]
            });
        </script>

        <!-- 折线图 -->
        <script type="text/javascript">
            var myChart2 = echarts.init(document.getElementById('zhexian'));
            myChart2.setOption(option = {
                title: {
                    text: 'Beijing AQI'
                },
                tooltip: {
                    trigger: 'axis'
                },
                xAxis: {
                    data: data.map(function (item) {
                        return item[0];
                    })
                },
                yAxis: {
                    splitLine: {
                        show: false
                    }
                },
                toolbox: {
                    left: 'center',
                    feature: {
                        dataZoom: {
                            yAxisIndex: 'none'
                        },
                        restore: {},
                        saveAsImage: {}
                    }
                },
                dataZoom: [{
                    startValue: '2014-06-01'
                }, {
                    type: 'inside'
                }],
                visualMap: {
                    top: 10,
                    right: 10,
                    pieces: [{
                        gt: 0,
                        lte: 50,
                        color: '#096'
                    }, {
                        gt: 50,
                        lte: 100,
                        color: '#ffde33'
                    }, {
                        gt: 100,
                        lte: 150,
                        color: '#ff9933'
                    }, {
                        gt: 150,
                        lte: 200,
                        color: '#cc0033'
                    }, {
                        gt: 200,
                        lte: 300,
                        color: '#660099'
                    }, {
                        gt: 300,
                        color: '#7e0023'
                    }],
                    outOfRange: {
                        color: '#999'
                    }
                },
                series: {
                    name: 'Beijing AQI',
                    type: 'line',
                    data: data.map(function (item) {
                        return item[1];
                    }),
                    markLine: {
                        silent: true,
                        data: [{
                            yAxis: 50
                        }, {
                            yAxis: 100
                        }, {
                            yAxis: 150
                        }, {
                            yAxis: 200
                        }, {
                            yAxis: 300
                        }]
                    }
                }
            });
        </script>
</body>
</html>
