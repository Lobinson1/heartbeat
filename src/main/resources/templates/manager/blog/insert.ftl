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
    <script type="text/javascript" src="/manager/wangEditor/wangEditor.js"></script>
</head>
<body>
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-xs9 layui-col-sm9 layui-col-md11">
                <a href="javascript:window.history.back();" class="layui-btn-small layui-btn">返回</a>
                <h2 class="title-right">新建博客</h2>
                <hr class="layui-bg-cyan">
                <form action="" method="post" class="layui-form">
                    <div class="layui-form-item">
                        <div style="display: block; width: 100px; position: absolute;">
                            <select name="type">
                                <#list blogType as type>
                                    <option value="${type.typeId}">${type.typeName}</option>
                                </#list>
                            </select>
                        </div>
                        <div class="layui-input-block">
                            <input type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">正文</label>
                        <div class="layui-input-block">
                            <div id="editor"></div>
                            <input type="hidden" name="content" id="blog-content" />
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="layui-col-xs3 layui-col-sm3 layui-col-md1">
            </div>
        </div>
    </div>

    <script type="text/javascript">
        $(function () {
            layui.use(['form','layer'], function () {
                var form = layui.form;
                var layer = layui.layer;
                form.render();
                form.on('submit', function (data) {
                    $.ajax({
                        url: '/manager/blog/insert',
                        type: 'post',
                        data: data.field,
                        success: function (data) {
                            data =  eval("(" + data + ")");
                            console.log(data, data.result);
                            if (data.result === 'success'){
                                layer.alert(data.msg);
                            }
                        }
                    });

                    return false;
                });
            });

            var E = window.wangEditor;
            var editor = new E('#editor');
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
