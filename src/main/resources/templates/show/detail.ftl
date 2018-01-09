<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <#include "../include/include.ftl">
    <link rel="stylesheet" href="/index/css/zerogrid.css">
    <title>${blog.title}</title>
</head>
<body>
    <div class="header">
    <#include "../include/head.ftl"/>
    </div>
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-md10" style="padding: 15px 5px;">
                <div style="background-color: #f2f2f2;height: 600px;">
                    ${blog.content}
                </div>
            </div>
            <div class="layui-col-md2" style="padding: 15px 5px;">
                <div style="background-color: #f2f2f2;height: 600px;">
                    content
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">
    layui.use('element', function () {
        var element = layui.element;
    })
</script>
</body>
</html>