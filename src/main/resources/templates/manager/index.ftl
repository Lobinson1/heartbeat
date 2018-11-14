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
            <#include "../include/leftNav.ftl">
            </div>
            <div class="layui-col-md10">
                <div class="info-content">
                    <div class="show-info">
                        <blockquote class="layui-elem-quote"
                                    style="background-color: #fff;border-left: solid 5px #93D1FF; line-height: 2px; font-size: 16px">文章管理
                        </blockquote>
                        <div id="page-show" style="height: 950px;"></div>
                        <script type="text/html" id="page">
                            {{#  layui.each(d, function(index, item){ }}
                            <div class="page-item">
                                <div class="page-item-title">
                                    <p><a href="/blog/{{ item.id }}" target="_blank">{{ item.title }}</a></p>
                                </div>
                                <div class="page-item-info">
                                    <div class="page-item-info-left">
                                        <span>{{# if (item.type == 1){ }} 原创 {{# } }} {{# if (item.type == 2){ }} 转载 {{# } }} {{# if (item.type == 3){ }} 翻译 {{# } }} </span>
                                        <#--<span>{{item.publishTime}}</span>-->
                                        <span>{{ layui.util.toDateString(item.publishTime, "yyyy-MM-dd HH:mm:ss") }}</span>
                                        <span><i class="layui-icon layui-icon-read"></i>&nbsp;2011</span>
                                        <span><i class="layui-icon layui-icon-reply-fill"></i>&nbsp;0</span>
                                    </div>
                                    <div class="page-item-info-right">
                                        <a href="/blog/{{ item.id }}" target="_blank">查看</a>
                                        <a href="/blog/insert/{{ item.id }}" target="_blank">编辑</a>
                                        <a class="del" href="javascript:void(0);">删除</a>
                                    </div>
                                </div>
                            </div>
                            {{# }); }}
                        </script>
                        <div id="page-number"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    window.onload = function () {
        layui.use(["laypage", "laytpl", "util"], function () {
            var laypage = layui.laypage;
            var laytpl = layui.laytpl;

            $.ajax({
                url: "/manager/blog/list",
                data: {
                    "pageIndex": 1,
                    "pageSize": 10
                },
                dataType: "json",
                success: function (data) {
                    laytpl(page.innerHTML).render(data, function (html) {
                        $("#page-show").html(html);
                    });
                }
            });

            //执行一个laypage实例
            laypage.render({
                elem: 'page-number', //注意，这里的 test1 是 ID，不用加 # 号
                count: ${totalCount},//数据总数，从服务端得到\
                limit: 10,
                groups: 5,
                theme: '#93D1FF',
                prev: '<i class="layui-icon layui-icon-prev"></i>',
                next: '<i class="layui-icon layui-icon-next"></i>',
                hash: true,
                jump: function (obj, first) {
                    //首次不执行
                    if (!first) {
                        $.ajax({
                            url: '/manager/blog/list',
                            data: {
                                "pageIndex": obj.curr,
                                "pageSize": obj.limit
                            },
                            dataType: 'json',
                            success: function (data) {
                                laytpl(page.innerHTML).render(data, function (html) {
                                    $("#page-show").html(html);
                                });
                            }
                        })
                    }
                }
            });
        })
    }
</script>
</body>
</html>