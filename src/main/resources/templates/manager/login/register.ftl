<%--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/7/26
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <#include "../../include/include.ftl">
    <title>lobinson注册</title>
</head>
<body>
<div class="layui-main">
    <form action="login/register" class="layui-form layui-form-pane" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">输入框</label>
            <div class="layui-input-block">
                <input type="text" name="username" required lay-verify="required|username" placeholder="请输入标题" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码框</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
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
<script type="application/javascript">
    layui.use('form', function(){
        var form = layui.form();
        form.verify({
            username: function (value, item) {
                var text =$.ajax({
                    url: 'login/checkUsername',
                    type: 'post',
                    async: false,
                    data: {
                        'username' : value
                    },
                    dataType: 'json'
                }).responseText;
                if (text.result === 'error'){
                    return text.msg;
                }
            }
        });
        form.render();
    });

</script>
</body>
</html>
