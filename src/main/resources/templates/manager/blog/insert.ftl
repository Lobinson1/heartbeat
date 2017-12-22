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
                    <div class="layui-form-item">
                        <div style="display: block; width: 100px; position: absolute;">
                            <select name="city">
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
                            <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
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
            layui.use('form', function () {
                var form = layui.form;
                form.render();
            });
        })
    </script>
</body>
</html>
