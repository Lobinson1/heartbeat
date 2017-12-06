<%--
  Created by IntelliJ IDEA.
  User: chenjunxu
  Date: 2017/8/18
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>index</title>
    <#import "/templates/include/include.ftl" as include>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
<#import "/templates/include/framework.ftl" as framework>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <iframe id="index-body" name="index-body" src="${apps}/manager/index/index" width="100%" height="94%" style="border: none"></iframe>
        </div>
    </div>

    <#import "/templates/include/foot.ftl" as foot>
</div>
</body>
</html>
