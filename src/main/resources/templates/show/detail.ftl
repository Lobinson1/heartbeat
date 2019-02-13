<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
<#include "../include/include.ftl">
    <link rel="stylesheet" href="/indexpage/css/zerogrid.css">
    <link rel="stylesheet" href="/indexpage/css/style.css">
    <link rel="stylesheet" href="/indexpage/css/menu.css">
    <link rel="stylesheet" href="/indexpage/css/responsiveslides.css">
    <link href= "/indexpage/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <title>${blog.title}</title>
    <style>
        .tips-text {
            padding-right: 20px;
            font-size: 16px;
        }

        <#--.bg-div:before{-->
            <#--background: url(${blog.showImg}) repeat-y;-->
            <#--background-size: cover;-->
            <#--content: "";-->
            <#--position: absolute;-->
            <#--width: 100%;-->
            <#--height: 100%;-->
            <#--top: 0;-->
            <#--left: 0;-->
            <#--z-index: -1;/*-1 可以当背景*/-->
            <#---webkit-filter: blur(3px);-->
            <#--filter: blur(3px);-->
        <#--}-->
    </style>
</head>
<body>
<div class="header" style="background-color: #f0f0f0">
<#assign bgcolor="#f0f0f0">
<#include "../include/head.ftl"/>
</div>
<div class="bg-div">
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-md12" style="padding: 15px 5px; height: 100%">
                <div class="layui-row layui-col-space20" style="text-align: center; padding-top: 50px;">
                    <span class="tips-text">[${blogType}]</span>
                    <span style="font-size: 26px; font-weight: bold;">${blog.title}</span>
                </div>
                <div class="layui-row layui-col-space20" style="padding-top: 30px; text-align: center;">
                    <span class="tips-text">${blog.publishTime}</span>
                    <span class="tips-text">${author}</span>
                    <span class="tips-text">标签：[${blog.tips}]</span>
                </div>
                <div class="layui-row layui-col-space10" style="padding-top: 50px;">
                    <div class="layui-col-md12" style="height:100%;">
                    ${blog.content}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    layui.use('element', function () {
        var element = layui.element;
    });
    window.onscroll = function () {
        $('.bg-div').append('<style>.bg-div::before{top:'+$(window).scrollTop()+'px}</style>');
    };
</script>
</body>
</html>