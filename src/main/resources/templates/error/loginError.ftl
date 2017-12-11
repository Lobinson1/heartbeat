<#--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/8/9
  Time: 14:19
  登录出错页面
-->
<html>
<head>
    <#include "../include/include.ftl">
    <title>登录失败</title>
</head>
<body>
<div style="margin: 0 auto; width: 500px; height: 50px;">
    <span id="login-error-msg" style="font-size: 20px; font-weight: bold;">登录失败(${errorMsg})！5秒后自动<a href="/manager/login" style="color: #708090">跳转</a></span>
</div>
</body>
<script type="text/javascript">
    var count = 4;
    function timer() {
        console.log("${errorMsg}");
        $("#login-error-msg").html("登录失败(${errorMsg})！"+count+"秒后自动<a style=\"color:#708090\" href=\"/manager/login\">跳转</a>");
        count--;
        if (count === 0){
            location.href = "/manager/login";
        }
    }
    setInterval(timer, 1000);
</script>
</html>
