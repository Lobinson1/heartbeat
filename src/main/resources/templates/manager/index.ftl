<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
<#include "../include/include.ftl">
</head>
<body>
<header>
<#include "../include/head.ftl"/>
</header>

<div class="layui-container">
    <div class="layui-row">
        <div class="layui-row layui-col-space10">
            <div class="layui-col-md2">
                <ul class="layui-nav layui-nav-tree" lay-filter="test">
                    <li class="layui-nav-item">
                        <a href="javascript:;">默认展开</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:;">解决方案</a>
                    </li>
                    <li class="layui-nav-item"><a href="">产品</a></li>
                    <li class="layui-nav-item"><a href="">大数据</a></li>
                </ul>
            </div>
            <div class="layui-col-md10">
                1/3
            </div>
        </div>
    </div>
</div>

</body>
</html>