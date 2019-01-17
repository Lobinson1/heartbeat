<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>index</title>
<#include "../../include/include.ftl">
    <link href="/manager/css/all-style.css">
    <link rel="stylesheet" type="text/css" href="/css/jquery-ui.min.css">
    <link href="/css/jquery.tagit.css" rel="stylesheet" type="text/css">
    <link href="/css/tagit.ui-zendesk.css" rel="stylesheet" type="text/css">
    <script src="/js/jquery-ui.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/tag-it.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="/manager/wangEditor/wangEditor.js"></script>
</head>
<body>
<header>
    <#assign bgcolor="#ffffff">
<#include "../../include/head.ftl"/>
</header>
<div class="layui-container">
    <div class="layui-row">
        <div class="layui-row layui-col-space10">
            <div class="layui-col-md2">
                <#include "../../include/leftNav.ftl">
            </div>
            <div class="layui-col-md10">
                <div class="info-content">
                    <div class="show-info">
                        <blockquote class="layui-elem-quote"
                                    style="background-color: #fff;border-left: solid 5px #93D1FF; line-height: 2px; font-size: 16px">写文章
                        </blockquote>
                        <form class="layui-form" action="" style="padding-top: 20px;" method="post">
                            <input type="text" class="layui-input" name="title">
                            <div class="layui-form-item" style="padding-top: 20px;">
                                <div id="toolbar" style="border: solid 1px #cccccc;"></div>
                                <div id="editor" style="height: 700px; border: solid 1px #cccccc;"></div>
                                <input type="hidden" name="content" id="blog-content"/>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-inline">
                                    <label class="layui-form-label" for="type">类型</label>
                                    <div class="layui-input-inline">
                                        <select name="type">
                                        <#list blogType as type>
                                            <option value="${type.typeId}">${type.typeName}</option>
                                        </#list>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-inline">
                                    <label class="layui-form-label" for="type">标签</label>
                                    <div class="layui-input-inline">
                                        <ul id="myTags" style="width: 300px; height: 32px; overflow-y: hidden"></ul>
                                    </div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-input-block">
                                    <button class="layui-btn layui-btn-normal" lay-submit lay-filter="formDemo">保存</button>
                                </div>
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
        $("#myTags").tagit();

        layui.use(['form', 'layer'], function () {
            var form = layui.form;
            var layer = layui.layer;
            form.render();
            form.render('select');
            form.on('submit', function (data) {
                $.ajax({
                    url: '/manager/blog/insert',
                    type: 'post',
                    data: $(data.form).serialize(),
                    success: function (data) {
                        data = eval("(" + data + ")");
                        if (data.result === 'success') {
                            layer.alert(data.msg, function () {
                                window.location.href = "/manager/blog";
                            });
                        }
                    }
                });

                return false;
            });
        });

        var E = window.wangEditor;
        var editor = new E('#toolbar', '#editor');
        editor.customConfig.uploadImgServer = '/manager/blog/upload'; //配置图片上传路径
        editor.customConfig.debug = location.href.indexOf('wangeditor_debug_mode=1') > 0;
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
