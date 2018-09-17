<style>
    .layui-bg-white{background-color: #ffffff!important;} /*白*/
    .layui-nav .layui-nav-item a{color: #8C918F}
    .layui-nav .layui-nav-item a:hover{color: #93D1FF}
    .top-header { border-bottom: 1px solid #ccc; }
</style>
<link rel="stylesheet" href="/index/css/zerogrid.css">
<div class="top-header">
    <div class="zerogrid">
        <nav id="menu-wrap">
            <ul class="layui-nav layui-bg-blue layui-bg-white">
                <li class="layui-nav-item">
                    <a href="">HOME</a>
                </li>
                <li class="layui-nav-item">
                    <a href="/manager/index">CENTER</a>
                </li>
                <li class="layui-nav-item">
                    <a href="">IS ME</a>
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