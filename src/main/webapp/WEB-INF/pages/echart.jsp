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
                    alert(data);
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
</body>
</html>
