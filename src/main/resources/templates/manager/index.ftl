<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
<#include "../include/include.ftl">
    <link href="/manager/css/all-style.css">
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
                        <a href="javascript:void(0);"><i class="layui-icon layui-icon-edit"></i>&nbsp;写博客</a>
                    </li>
                    <hr class="layui-bg" style="background-color: #cccccc; padding: 0;margin: 0;">
                    <li class="layui-nav-item layui-this">
                        <a href="javascript:void(0);">文章管理</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:void(0);">分类管理</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="javascript:void(0);">大数据</a>
                    </li>
                </ul>
            </div>
            <div class="layui-col-md10">
                <div class="info-content">
                    <div class="show-info">
                        <blockquote class="layui-elem-quote"
                                    style="background-color: #fff;border-left: solid 5px #93D1FF; line-height: 2px; font-size: 16px">文章管理
                        </blockquote>
                        <#include "page-list.ftl">
                        <@pager url="/manager/blog" pageIndex="1" pageSize="5" />
                        <#--<div class="page-list">-->
                            <#--<#list blogList as blog>-->
                                <#--<div class="page-item">-->
                                    <#--<div class="page-item-title">-->
                                        <#--<p><a href="javascript:void(0);">${blog.title}</a></p>-->
                                    <#--</div>-->
                                    <#--<div class="page-item-info">-->
                                        <#--<div class="page-item-info-left">-->
                                            <#--<span><#if blog.type == 1>原创<#elseif blog.type == 2>转载<#elseif blog.type == 3>翻译</#if></span>-->
                                            <#--<span>${blog.publishTime}</span>-->
                                            <#--<span><i class="layui-icon layui-icon-read"></i>&nbsp;2011</span>-->
                                            <#--<span><i class="layui-icon layui-icon-reply-fill"></i>&nbsp;0</span>-->
                                        <#--</div>-->
                                        <#--<div class="page-item-info-right">-->
                                            <#--<a href="javascript:void(0);">查看</a>-->
                                            <#--<a href="javascript:void(0);">编辑</a>-->
                                            <#--<a class="del" href="javascript:void(0);">删除</a>-->
                                        <#--</div>-->
                                    <#--</div>-->
                                <#--</div>-->
                            <#--</#list>-->
                                <#--<div id="page-number"></div>-->
                        <#--</div>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>