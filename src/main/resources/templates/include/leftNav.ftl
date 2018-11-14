<ul class="layui-nav layui-nav-tree" lay-filter="test">
    <li id="write-blog" class="layui-nav-item">
        <a href="/manager/blog/insert"><i class="layui-icon layui-icon-edit"></i>&nbsp;写博客</a>
    </li>
    <hr class="layui-bg" style="background-color: #cccccc; padding: 0;margin: 0;">
    <li id="blog-list" class="layui-nav-item">
        <a href="/manager/blog">文章管理</a>
    </li>
    <li id="blog-type" class="layui-nav-item">
        <a href="javascript:void(0);">分类管理</a>
    </li>
    <li id="big-data" class="layui-nav-item">
        <a href="javascript:void(0);">大数据</a>
    </li>
</ul>
<script type="text/javascript">
    $(function () {
        var h = window.location.pathname;
        if (h === '/manager/blog/insert') {
            $("#write-blog").addClass('layui-this');
        }
        if (h === '/manager/blog') {
            $("#blog-list").addClass('layui-this');
        }
    })
</script>