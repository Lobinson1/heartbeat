<style>
    .layui-bg-white{background-color: ${bgcolor}!important;} /*白*/
    .layui-nav .layui-nav-item a{color: #8C918F}
    .layui-nav .layui-nav-item a:hover{color: #93D1FF}
    .top-header { border-bottom: 1px solid #ccc; }
    body {
        font: 14px/25px Arial;
        font-family: 'Montserrat', sans-serif;
        letter-spacing: 1px;
    }
</style>
<link rel="stylesheet" href="/indexpage/css/zerogrid.css">
<div class="top-header">
    <div class="zerogrid">
        <nav id="menu-wrap">
            <ul class="layui-nav layui-bg-blue layui-bg-white">
                <li class="layui-nav-item <#if action?? && action == 'index'>layui-this</#if>">
                    <a class="head-menu-a" href="/index">HOME</a>
                </li>
                <li class="layui-nav-item <#if action?? && action == 'center'>layui-this</#if>">
                    <a class="head-menu-a" href="/manager/blog">CENTER</a>
                </li>
                <li class="layui-nav-item <#if action?? && action == 'about'>layui-this</#if>">
                    <a class="head-menu-a" href="/about">IS ME</a>
                </li>
            </ul>
        </nav>
    </div>
</div>
<script>
    layui.use(['element'], function () {
        var element = layui.element;
    })
</script>