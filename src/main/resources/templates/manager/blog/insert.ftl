<#--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/10/16
  Time: 15:20
  To change this template use File | Settings | File Templates.
-->
<html>
<head>
    <title>创建博客</title>
    <#include "../../include/include.ftl">
</head>
<body>
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-xs9 layui-col-sm9 layui-col-md11">
                <a href="javascript:window.history.back();" class="layui-btn-small layui-btn">返回</a>
                <h2 class="title-right">新建博客</h2>
                <hr class="layui-bg-cyan">
                <form action="/manager/blog/insert" method="post" class="layui-form">
                    
                </form>
            </div>
            <div class="layui-col-xs3 layui-col-sm3 layui-col-md1">
            </div>
        </div>
    </div>
</body>
</html>
