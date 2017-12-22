<#--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/10/16
  Time: 15:20
  To change this template use File | Settings | File Templates.
-->
<html>
<head>
    <title>博客列表</title>
    <#include "../../include/include.ftl">
</head>
<body>
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-xs9 layui-col-sm9 layui-col-md11">
                <a href="/manager/blog/insert" class="layui-btn-small layui-btn">创建博客</a>
                <table id="blogs" class="layui-table" lay-skin="line">
                </table>
            </div>
            <div class="layui-col-xs3 layui-col-sm3 layui-col-md1">
            </div>
        </div>
    </div>

    <script type="text/javascript">
        layui.use(['table'], function () {
            var table = layui.table;

            //第一个实例
            table.render({
                elem: '#blogs'
//                ,height: 315
                ,url: '/manager/blog/list' //数据接口
                ,page: false //开启分页
                ,cols: [[ //表头
                    {field: 'id', title: 'ID', width:50, sort: true, fixed: 'left'}
                    ,{field: 'title', title: '标题', width:100}
                    ,{field: 'content', title: '内容', width:600, sort: true}
                ]]
            });
        });
    </script>
</body>
</html>
