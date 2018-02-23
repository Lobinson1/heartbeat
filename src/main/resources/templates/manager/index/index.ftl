<#--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/10/17
  Time: 10:40
  To change this template use File | Settings | File Templates.
-->
<!DOCTYPE html>
<html>
<head>
    <title>index</title>
    <#include "../../include/include.ftl">
    <link rel="stylesheet" href="/manager/index/css/clock.css">

</head>
<body>
    <div>
        <div id="clock" class="light" style="float: right">
            <div class="display">
                <div class="weekdays"></div>
                <div class="ampm"></div>
                <div class="alarm"></div>
                <div class="digits"></div>
            </div>
            <#--<%@include file="/WEB-INF/include/weather.ftl"%>-->
        </div>

    </div>

    <script src="/manager/index/js/moment.min.js"></script>
    <script src="/manager/index/js/clock.js"></script>


</body>
</html>
