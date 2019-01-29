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
                                <label class="layui-form-label" for="type">展示图片</label>
                                <div class="layui-input-inline" style="min-width: 190px;">
                                    <a href="javascript:void(0);" id="img-btn" type="button" class="layui-btn layui-btn-sm"><i
                                            class="layui-icon layui-icon-upload"></i>上传图片</a>
                                    <span id="img-name" style="padding-left: 30px; font-size: 18px;"></span>
                                    <input type="hidden" id="imgpath" name="showImg" />
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label" for="type">简述</label>
                                <div class="layui-input-block">
                                    <input type="text" class="layui-input" style="width: 100%" name="blogAbstract" />
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

        layui.use(['form', 'layer', 'upload'], function () {
            var form = layui.form;
            var layer = layui.layer;

            var upload = layui.upload;

            //执行实例
            var uploadInst = upload.render({
                elem: '#img-btn' //绑定元素
                , url: '/manager/blog/upload/' //上传接口
                , accept: 'images'
                , acceptMime: 'image/*'
                , before: function(obj){ //obj参数包含的信息，跟 choose回调完全一致，可参见上文。
                    obj.preview(function(index, file, result) {
                        console.log(file.name); //得到文件对象
                        $("#img-name").html(file.name);
                    });
                    layer.load(); //上传loading
                }
                , done: function (res) {
                    $("#imgpath").val(res.data[0]);
                    layer.closeAll('loading'); //关闭loading
                }
                , error: function () {
                    layer.closeAll('loading'); //关闭loading
                    layer.msg('上传接口出错');
                }
            });

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
