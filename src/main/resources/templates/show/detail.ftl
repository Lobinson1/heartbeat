<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
<#include "../include/include.ftl">
    <link rel="stylesheet" href="/index/css/zerogrid.css">
    <title>${blog.title}</title>
    <style>
        .tips-text {
            padding-right: 20px;
        }
    </style>
</head>
<body>
<div class="header">
<#include "../include/head.ftl"/>
</div>
<div class="layui-container">
    <div class="layui-row">
        <div class="layui-col-md10" style="padding: 15px 5px;">
            <div class="layui-row layui-col-space20">
                <div class="layui-col-md4"></div>
                <div class="layui-col-md4">
                    <span class="tips-text">[${blogType}]</span>
                    <span style="font-size: 20px; font-weight: bold;">${blog.title}</span>
                </div>
                <div class="layui-col-md4"></div>
            </div>
            <div class="layui-row layui-col-space20" style="text-align: center;">
                <span class="tips-text">${blog.publishTime}</span>
                <span class="tips-text">${author}</span>
                <span class="tips-text">标签：[${blog.tips}]</span>
            </div>
            <div class="layui-row layui-col-space10">
                <div class="layui-col-md12">
                ${blog.content}
                </div>
            </div>
        </div>
        <div class="layui-col-md2" style="padding: 15px 5px;">
            <div style="background-color: #f2f2f2;height: 600px;">
                content
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    layui.use('element', function () {
        var element = layui.element;
    })
</script>
</body>
</html>