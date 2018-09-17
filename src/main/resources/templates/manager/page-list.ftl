<#macro pager url pageIndex pageSize>

    <#list list as blog>
    <div class="page-item">
        <div class="page-item-title">
            <p><a href="javascript:void(0);">${blog.title}</a></p>
        </div>
        <div class="page-item-info">
            <div class="page-item-info-left">
                <span><#if blog.type == 1>原创<#elseif blog.type == 2>转载<#elseif blog.type == 3>翻译</#if></span>
                <span>${blog.publishTime}</span>
                <span><i class="layui-icon layui-icon-read"></i>&nbsp;2011</span>
                <span><i class="layui-icon layui-icon-reply-fill"></i>&nbsp;0</span>
            </div>
            <div class="page-item-info-right">
                <a href="javascript:void(0);">查看</a>
                <a href="javascript:void(0);">编辑</a>
                <a class="del" href="javascript:void(0);">删除</a>
            </div>
        </div>
    </div>
    </#list>
<div id="page-number"></div>
<script>
    window.onload = function () {
        layui.use("laypage", function () {
            var laypage = layui.laypage;

            //执行一个laypage实例
            laypage.render({
                curr: ${pageIndex},
                elem: 'page-number', //注意，这里的 test1 是 ID，不用加 # 号
                count: ${totalCount},//数据总数，从服务端得到\
                limit: 5,
                groups: 5,
                hash: true,
                jump: function (obj, first) {
                    //obj包含了当前分页的所有参数，比如：
                    console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
                    console.log(obj.limit); //得到每页显示的条数
                    //首次不执行
                    if (!first) {
                        location.href = "${url}?pageIndex=" + obj.curr + "&pageSize=" + obj.limit;
                    }
                }
            });
        })
    }
</script>
</#macro>