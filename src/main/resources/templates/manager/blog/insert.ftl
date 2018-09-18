<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
<#include "../../include/include.ftl">
    <link href="/manager/css/all-style.css">
    <script type="text/javascript" src="/manager/wangEditor/wangEditor.js"></script>
</head>
<body>
<header>
<#include "../../include/head.ftl"/>
</header>
<div class="layui-container">
    <div class="layui-row">
        <div class="layui-row layui-col-space10">
            <div class="layui-col-md2">
                <ul class="layui-nav layui-nav-tree" lay-filter="test">
                    <li class="layui-nav-item layui-this">
                        <a href="javascript:void(0);"><i class="layui-icon layui-icon-edit"></i>&nbsp;写博客</a>
                    </li>
                    <hr class="layui-bg" style="background-color: #cccccc; padding: 0;margin: 0;">
                    <li class="layui-nav-item">
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
                                    style="background-color: #fff;border-left: solid 5px #93D1FF; line-height: 2px; font-size: 16px">写文章
                        </blockquote>
                        <form class="layui-form" action="" style="padding-top: 20px;">
                            <input type="text" class="layui-input">
                            <div class="layui-form-item" style="padding-top: 20px;">
                                <div id="toolbar" style="border: solid 1px #cccccc;"></div>
                                <div id="editor" style="height: 700px; border: solid 1px #cccccc;"></div>
                                <input type="hidden" name="content" id="blog-content" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        layui.use(['form', 'layer'], function () {
            var form = layui.form;
            var layer = layui.layer;
            form.render();
            form.render('select');
            form.on('submit', function (data) {
                $.ajax({
                    url: '/manager/blog/insert',
                    type: 'post',
                    data: data.field,
                    success: function (data) {
                        data = eval("(" + data + ")");
                        console.log(data, data.result);
                        if (data.result === 'success') {
                            layer.alert(data.msg);
                        }
                    }
                });

                return false;
            });
        });

        var E = window.wangEditor;
        var editor = new E('#toolbar', '#editor');
        editor.customConfig.uploadImgServer = '/manager/blog/upload'; //配置图片上传路径
        editor.customConfig.debug = location.href.indexOf('wangeditor_debug_mode=1') > 0
        var $text1 = $('#blog-content');
        editor.customConfig.onchange = function (html) {
            // 监控变化，同步更新到 textarea
            $text1.val(html)
        };
        editor.create();

    })
</script>
</body>
</html>
