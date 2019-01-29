<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8"/>
    <title>Lobinson小屋</title>
    <meta name="description" content="Free Responsive Html5 Css3 Templates "/>
    <meta name="author" content=""/>
<#--<#assign apps=springMacroRequestContext.contextPath >-->
<#include "include/include.ftl">

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="/indexpage/css/style.css">
    <link rel="stylesheet" href="/indexpage/css/menu.css">
    <link rel="stylesheet" href="/indexpage/css/responsiveslides.css">
    <link href= "/indexpage/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="/indexpage/js/jquery183.min.js"></script>
    <script src="/indexpage/js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            // Slideshow
            $("#slider").responsiveSlides({
                auto: true,
                pager: false,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });
        });
    </script>

    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="/indexpage/js/html5.js"></script>
    <script src="/indexpage/js/css3-mediaqueries.js"></script>
    <![endif]-->

</head>
<body>
<div class="wrap-body">

    <!--Header-->
    <header>
    <#assign bgcolor="#ffffff">
    <#include "include/head.ftl"/>
        <div class="clearfix">
            <div class="wrap-header">
                <div class="row">
                    <div class="col-full t-center">
                        <div class="wrap-col">
                            <div class="logo"><a href="#"><img src="/indexpage/images/indexlogo.png"/></a></div>
                            <div class="tagline">这是我的一方小天地</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="slider">
                <!-- Slideshow -->
                <div class="callbacks_container">
                    <ul class="rslides" id="slider">
                        <li>
                            <img src="/manager/blog/getFile?filename=pic_3_1.jpg" alt="">
                        </li>
                        <li>
                            <img src="/manager/blog/getFile?filename=pic_7_1.jpg" alt="">
                        </li>
                        <li>
                            <img src="/manager/blog/getFile?filename=pic_23_1.jpg" alt="">
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <section id="container">
        <div class="wrap-container">
            <div class="zerogrid">
                <div class="row">
                    <div id="main-content" class="col-2-3">
                        <div class="wrap-content">
                            <#list tops as top>
                                <div class="row">
                                    <article>
                                        <div class="art-header">
                                            <div class="entry-title">
                                                <a href="/blog/${top.id}" target="_blank">${top.title}</a>
                                            </div>
                                            <span>${top.publishTime}</span>
                                        </div>
                                        <div class="art-content">
                                            <div class="zoom-container">
                                                <a href="/blog/${top.id}" target="_blank">
                                                    <img src="${top.showImg}"/>
                                                </a>
                                            </div>
                                            <p>${top.blogAbstract}</p>
                                            <div class="t-center"><a class="button button02" href="/blog/${top.id}" target="_blank">Read More</a></div>
                                        </div>
                                    </article>
                                </div>
                            </#list>
                            <div class="row">
                                <div class="col-1-2">
                                    <div class="wrap-col">
                                        <article style="border:none;">
                                            <div class="art-header">
                                                <div class="entry-title">
                                                    <a href="#">脚下</a>
                                                </div>
                                                <span>2015-11-12</span>
                                            </div>
                                            <div class="art-content">
                                                <div class="zoom-container">
                                                    <a href="#">
                                                        <img src="/indexpage/images/6.jpg"/>
                                                    </a>
                                                </div>
                                                <p>此生痴妄，纵皆是错怨，终是不悔.</p>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                                <div class="col-1-2">
                                    <div class="wrap-col">
                                        <article style="border:none;">
                                            <div class="art-header">
                                                <div class="entry-title">
                                                    <a href="#">匠人</a>
                                                </div>
                                                <span>2015-11-12</span>
                                            </div>
                                            <div class="art-content">
                                                <div class="zoom-container">
                                                    <a href="#">
                                                        <img src="/indexpage/images/7.jpg"/>
                                                    </a>
                                                </div>
                                                <p>此生痴妄，纵皆是错怨，终是不悔.</p>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                                <div class="col-1-2">
                                    <div class="wrap-col">
                                        <article style="border:none;">
                                            <div class="art-header">
                                                <div class="entry-title">
                                                    <a href="#">丛生</a>
                                                </div>
                                                <span>2015-11-12</span>
                                            </div>
                                            <div class="art-content">
                                                <div class="zoom-container">
                                                    <a href="#">
                                                        <img src="/indexpage/images/8.jpg"/>
                                                    </a>
                                                </div>
                                                <p>此生痴妄，纵皆是错怨，终是不悔.</p>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                                <div class="col-1-2">
                                    <div class="wrap-col">
                                        <article style="border:none;">
                                            <div class="art-header">
                                                <div class="entry-title">
                                                    <a href="#">看你</a>
                                                </div>
                                                <span>2015-11-12</span>
                                            </div>
                                            <div class="art-content">
                                                <div class="zoom-container">
                                                    <a href="#">
                                                        <img src="/indexpage/images/9.jpg"/>
                                                    </a>
                                                </div>
                                                <p>此生痴妄，纵皆是错怨，终是不悔.</p>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="sidebar" class="col-1-3">
                        <!---- Start Widget ---->
                        <div class="widget wid-about">
                            <div class="wid-header">
                                <h5>关于他</h5>
                            </div>
                            <div class="wid-content">
                                <img src="/manager/blog/getFile?filename=pic_10.jpg"/>
                                <p>他的名字是 Lobinson ，嗯，也可以叫他燕启同学.</p>
                            </div>
                        </div>
                        <!---- Start Widget ---->
                        <div class="widget wid-follow">
                            <div class="wid-header">
                                <h5>关注他</h5>
                            </div>
                            <div class="wid-content">
                                <ul class="quick-link">
                                    <li>
                                        <a target="_blank" href="https://weibo.com/u/2779520971?is_all=1"><i style="font-size: 32px;" class="layui-icon layui-icon-login-weibo"></i></a>
                                    </li>
                                    <li><a href=""><i style="font-size: 32px;" class="layui-icon layui-icon-login-wechat"></i></a></li>
                                    <li><a href=""><i style="font-size: 32px;" class="layui-icon layui-icon-login-qq"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <!---- Start Widget ---->
                        <div class="widget wid-post">
                            <div class="wid-header">
                                <h5>最新情报</h5>
                            </div>
                            <div class="wid-content">
                                <#list news as new>
                                <div class="post">
                                    <div class="zoom-container">
                                        <a href="/blog/${new.id}" target="_blank">
                                            <img src="${new.showImg}"/>
                                        </a>
                                    </div>
                                    <div class="wrapper">
                                        <h5 class="vid-name" style="margin-bottom: 5px;"><a href="/blog/${new.id}" target="_blank">${new.title}</a></h5>
                                        <div class="info">
                                            <h6 style="padding-left: 6px;"> By Lobinson</h6>
                                            <span><i style="padding: 7px;" class="fa fa-calendar"></i>${new.publishTime}</span>
                                            <span><i style="padding: 7px;" class="fa fa-heart"></i>${new.viewCount}</span>
                                        </div>
                                    </div>
                                </div>
                                </#list>
                            </div>
                        </div>
                        <!---- Start Widget ---->
                        <#--<div class="widget wid-category">-->
                            <#--<div class="wid-header">-->
                                <#--<h5>类别</h5>-->
                            <#--</div>-->
                            <#--<div class="wid-content">-->
                                <#--<ul>-->
                                    <#--<li><a href="#">发生格局</a></li>-->
                                    <#--<li><a href="#">样板</a></li>-->
                                    <#--<li><a href="#">你的猫A</a></li>-->
                                    <#--<li><a href="#">边缘地带</a></li>-->
                                    <#--<li><a href="#">你的猫B</a></li>-->
                                <#--</ul>-->
                            <#--</div>-->
                        <#--</div>-->
                        <!---- Start Widget ---->
                        <div class="widget wid-subcribe">
                            <div class="wid-header">
                                <h5>Email的故事</h5>
                            </div>
                            <div class="wid-content">
                                <p>如果你想要遇见我，如果你有故事想告诉我，可以给我发邮件哟.</p>
                                <span>给我发邮件吧：lobinson_cjx@163.com</span>
                            </div>
                        </div>
                        <div class="widget wid-subcribe">
                            <div class="wid-header">
                                <h5>另一个网址</h5>
                            </div>
                            <div class="wid-content">
                                <p>悄悄的告诉你们哟.</p>
                                <span>给我发邮件吧：lobinson_cjx@163.com</span>
                            </div>
                        </div>
                        <!---- Start Widget ---->
                        <div class="widget wid-follow">
                            <#--<div class="wid-header">-->
                                <#--<h5>FOLLOW ME ON INSTAGRAM</h5>-->
                            <#--</div>-->
                            <#--<div class="wid-content">-->
                                <#--<div class="row">-->
                                    <#--<div class="col-1-3">-->
                                        <#--<div class="wrap-col">-->
                                            <#--<a href="#"><img src="/indexpage/images/15.jpg"/></a>-->
                                            <#--<a href="#"><img src="/indexpage/images/16.jpg"/></a>-->
                                            <#--<a href="#"><img src="/indexpage/images/17.jpg"/></a>-->
                                        <#--</div>-->
                                    <#--</div>-->
                                    <#--<div class="col-1-3">-->
                                        <#--<div class="wrap-col">-->
                                            <#--<a href="#"><img src="/indexpage/images/18.jpg"/></a>-->
                                            <#--<a href="#"><img src="/indexpage/images/19.jpg"/></a>-->
                                            <#--<a href="#"><img src="/indexpage/images/20.jpg"/></a>-->
                                        <#--</div>-->
                                    <#--</div>-->
                                    <#--<div class="col-1-3">-->
                                        <#--<div class="wrap-col">-->
                                            <#--<a href="#"><img src="/indexpage/images/21.jpg"/></a>-->
                                            <#--<a href="#"><img src="/indexpage/images/22.jpg"/></a>-->
                                            <#--<a href="#"><img src="/indexpage/images/23.jpg"/></a>-->
                                        <#--</div>-->
                                    <#--</div>-->
                                <#--</div>-->
                            <#--</div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="zerogrid">
            <div class="wrap-footer t-center">
                <div class="row">
                    <div class="full">
                        <ul class="quick-link">
                            <li>
                                <a target="_blank" href="https://weibo.com/u/2779520971?is_all=1"><i style="font-size: 32px;" class="layui-icon layui-icon-login-weibo"></i></a>
                            </li>
                            <li><a href=""><i style="font-size: 32px;" class="layui-icon layui-icon-login-wechat"></i></a></li>
                            <li><a href=""><i style="font-size: 32px;" class="layui-icon layui-icon-login-qq"></i></a></li>
                        </ul>
                        <div class="copy-right">
                            <p>Copyright 2018 - More </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>


    <script type="text/javascript">
        $(function () {
            if ($.browser.msie && $.browser.version.substr(0, 1) < 7) {
                $('li').has('ul').mouseover(function () {
                    $(this).children('ul').css('visibility', 'visible');
                }).mouseout(function () {
                    $(this).children('ul').css('visibility', 'hidden');
                })
            }

            /* Mobile */
            $("#menu-trigger").on("click", function () {
                $("#menu").slideToggle();
            });

            // iPad
            var isiPad = navigator.userAgent.match(/iPad/i) != null;
            if (isiPad) $('#menu ul').addClass('no-transition');
        });

    </script>

</div>
</body>
</html>