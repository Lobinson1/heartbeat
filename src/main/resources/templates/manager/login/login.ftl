<%--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/7/26
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <#include "../../include/include.ftl">
    <title>login</title>
    <link rel="stylesheet" href="/static/manager/login/css/login.css">
</head>
<body>
<div class="container">
    <div class="login-form">
        <h1>Login</h1>
        <br>
        <form id="uForm" action="manager/login" method="post" class="layui-form layui-form-pane">
            <div class="form-group log-status">
                <input type="text" class="form-control" placeholder="Username " id="UserName" name="username" lay-verify="username">
                <i class="fa fa-user"></i>
            </div>
            <span class="alert">用户名不存在</span>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Password" id="Passwod" name="password">
                <i class="fa fa-lock"></i>
            </div>
            <input type="hidden" name="server" value="${server}" />
            <a class="link" href="#">Lost your password?</a>
            <button class="log-btn" lay-submit lay-filter="username">Log in</button>
        </form>
    </div>
</div><!-- /container -->
<script type="application/javascript">
    if (window != top){
        top.location.href = location.href;
    }

    layui.use('form', function(){
        var form = layui.form();

        form.verify({
            username: function (value, item) {
                var valid = false;
                $.ajax({
                    url: "login/checkUsername",
                    type: "get",
                    data: {
                        username: value
                    },
                    success: function (data) {
                        if (data === 'false'){
                            valid = true;
                        }else {
                            valid = false;
                            $('.log-status').addClass('wrong-entry');
                            $('.alert').fadeIn(500);
                            setTimeout( "$('.alert').fadeOut(1500);",3000 );
                        }
                    }
                });
            }
        });
        form.render();

    });

</script>
</body>
</html>
