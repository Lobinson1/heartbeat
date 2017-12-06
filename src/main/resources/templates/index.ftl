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
    <link rel="stylesheet" href="/index/css/zerogrid.css">
    <link rel="stylesheet" href="/index/css/style.css">
    <link rel="stylesheet" href="/index/css/menu.css">
    <link rel="stylesheet" href="/index/css/responsiveslides.css">
    <link href="/index/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="/index/js/jquery183.min.js"></script>
    <script src="/index/js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
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
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="/index/js/html5.js"></script>
    <script src="/index/js/css3-mediaqueries.js"></script>
    <![endif]-->

    <style>
        .layui-bg-white{background-color: #ffffff!important;} /*白*/
        .layui-nav .layui-nav-item a{color: #8C918F}
        .layui-nav .layui-nav-item a:hover{color: #93D1FF}
    </style>
</head>
<body>
<div class="wrap-body">

    <!--////////////////////////////////////Header-->
    <header>
        <div class="top-header">
            <div class="zerogrid">
                <nav id="menu-wrap"><div id="menu-trigger">Menu</div>
                    <ul class="layui-nav layui-bg-blue layui-bg-white">
                        <li class="layui-nav-item">
                            <a href="">HOME</a>
                        </li>
                        <li class="layui-nav-item">
                            <a href="">CENTER</a>
                        </li>
                        <li class="layui-nav-item">
                            <a href="">IS ME</a>
                            <#--<dl class="layui-nav-child">-->
                                <#--<dd><a href="javascript:;">修改信息</a></dd>-->
                                <#--<dd><a href="javascript:;">安全管理</a></dd>-->
                                <#--<dd><a href="javascript:;">退了</a></dd>-->
                            <#--</dl>-->
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="clearfix">
            <div class="wrap-header">
                <div class="row">
                    <div class="col-full t-center">
                        <div class="wrap-col">
                            <div class="logo"><a href="#"><img src="/index/images/indexlogo.png"/></a></div>
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
                            <img src="/index/images/1.jpg" alt="">
                        </li>
                        <li>
                            <img src="/index/images/2.jpg" alt="">
                        </li>
                        <li>
                            <img src="/index/images/3.jpg" alt="">
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
                            <div class="row">
                                <article>
                                    <div class="art-header">
                                        <div class="entry-title">
                                            <a href="#">水里的世界 画里的念想</a>
                                        </div>
                                        <span>2015-11-12</span>
                                    </div>
                                    <div class="art-content">
                                        <div class="zoom-container">
                                            <a href="#">
                                                <img src="/index/images/4.jpg" />
                                            </a>
                                        </div>
                                        <p>众生皆妄.</p>
                                        <div class="t-center"><a class="button button02" href="#">Read More</a></div>
                                    </div>
                                </article>
                            </div>
                            <div class="row">
                                <article>
                                    <div class="art-header">
                                        <div class="entry-title">
                                            <a href="#">一个人吃饭旅行到处走走停停</a>
                                        </div>
                                        <span>2015-11-12</span>
                                    </div>
                                    <div class="art-content">
                                        <div class="zoom-container">
                                            <a href="#">
                                                <img src="/index/images/5.jpg" />
                                            </a>
                                        </div>
                                        <p>众生皆痴.</p>
                                        <div class="t-center"><a class="button button02" href="#">Read More</a></div>
                                    </div>
                                </article>
                            </div>
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
                                                        <img src="/index/images/6.jpg" />
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
                                                        <img src="/index/images/7.jpg" />
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
                                                        <img src="/index/images/8.jpg" />
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
                                                        <img src="/index/images/9.jpg" />
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
                                <h5>关于她</h5>
                            </div>
                            <div class="wid-content">
                                <img src="/index/images/10.jpg" />
                                <p>她的名字是 Activello ，嗯，不能告诉你更多了.</p>
                            </div>
                        </div>
                        <!---- Start Widget ---->
                        <div class="widget wid-follow">
                            <div class="wid-header">
                                <h5>关注她</h5>
                            </div>
                            <div class="wid-content">
                                <ul class="quick-link">
                                    <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                    <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                    <li><a href=""><i class="fa fa-youtube"></i></a></li>
                                    <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href=""><i class="fa fa-instagram"></i></a></li>
                                    <li><a href=""><i class="fa fa-github"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <!---- Start Widget ---->
                        <div class="widget wid-post">
                            <div class="wid-header">
                                <h5>最新情报</h5>
                            </div>
                            <div class="wid-content">
                                <div class="post">
                                    <div class="zoom-container">
                                        <a href="#">
                                            <img src="/index/images/11.jpg" />
                                        </a>
                                    </div>
                                    <div class="wrapper">
                                        <h5 class="vid-name"><a href="#">这是啥</a></h5>
                                        <div class="info">
                                            <h6>By <a href="#">不知名</a></h6>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="post">
                                    <div class="zoom-container">
                                        <a href="#">
                                            <img src="/index/images/12.jpg" />
                                        </a>
                                    </div>
                                    <div class="wrapper">
                                        <h5 class="vid-name"><a href="#">这是啥</a></h5>
                                        <div class="info">
                                            <h6>By <a href="#">不知名</a></h6>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="post">
                                    <div class="zoom-container">
                                        <a href="#">
                                            <img src="/index/images/13.jpg" />
                                        </a>
                                    </div>
                                    <div class="wrapper">
                                        <h5 class="vid-name"><a href="#">这是啥</a></h5>
                                        <div class="info">
                                            <h6>By <a href="#">不知名</a></h6>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="post">
                                    <div class="zoom-container">
                                        <a href="#">
                                            <img src="/index/images/14.jpg" />
                                        </a>
                                    </div>
                                    <div class="wrapper">
                                        <h5 class="vid-name"><a href="#">这是啥</a></h5>
                                        <div class="info">
                                            <h6>By <a href="#">不知名</a></h6>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!---- Start Widget ---->
                        <div class="widget wid-category">
                            <div class="wid-header">
                                <h5>类别</h5>
                            </div>
                            <div class="wid-content">
                                <ul>
                                    <li><a href="#">发生格局</a></li>
                                    <li><a href="#">样板</a></li>
                                    <li><a href="#">你的猫A</a></li>
                                    <li><a href="#">边缘地带</a></li>
                                    <li><a href="#">你的猫B</a></li>
                                </ul>
                            </div>
                        </div>
                        <!---- Start Widget ---->
                        <div class="widget wid-subcribe">
                            <div class="wid-header">
                                <h5>SUBSCRIBE TO BLOG VIA EMAIL</h5>
                            </div>
                            <div class="wid-content">
                                <p>Enter your email address to subscribe to this blog and receive notifications of new posts by email.</p>
                                <span>Join 4 other subscribers</span>
                                <form method="get" action="/search" id="subcribe" >
                                    <input name="q" type="text" size="40" placeholder="Email Address" />
                                </form>
                                <a class="button button03" href="#">SUBSCRIBE</a>
                            </div>
                        </div>
                        <!---- Start Widget ---->
                        <div class="widget wid-follow">
                            <div class="wid-header">
                                <h5>FOLLOW ME ON INSTAGRAM</h5>
                            </div>
                            <div class="wid-content">
                                <div class="row">
                                    <div class="col-1-3">
                                        <div class="wrap-col">
                                            <a href="#"><img src="/index/images/15.jpg" /></a>
                                            <a href="#"><img src="/index/images/16.jpg" /></a>
                                            <a href="#"><img src="/index/images/17.jpg" /></a>
                                        </div>
                                    </div>
                                    <div class="col-1-3">
                                        <div class="wrap-col">
                                            <a href="#"><img src="/index/images/18.jpg" /></a>
                                            <a href="#"><img src="/index/images/19.jpg" /></a>
                                            <a href="#"><img src="/index/images/20.jpg" /></a>
                                        </div>
                                    </div>
                                    <div class="col-1-3">
                                        <div class="wrap-col">
                                            <a href="#"><img src="/index/images/21.jpg" /></a>
                                            <a href="#"><img src="/index/images/22.jpg" /></a>
                                            <a href="#"><img src="/index/images/23.jpg" /></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                            <li><a href=""><i class="fa fa-facebook"></i></a></li>
                            <li><a href=""><i class="fa fa-twitter"></i></a></li>
                            <li><a href=""><i class="fa fa-youtube"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                            <li><a href=""><i class="fa fa-instagram"></i></a></li>
                            <li><a href=""><i class="fa fa-github"></i></a></li>
                        </ul>
                        <div class="copy-right">
                            <p>Copyright 20xx - More </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>


    <script type="text/javascript">
        $(function() {
            if ($.browser.msie && $.browser.version.substr(0,1)<7)
            {
                $('li').has('ul').mouseover(function(){
                    $(this).children('ul').css('visibility','visible');
                }).mouseout(function(){
                    $(this).children('ul').css('visibility','hidden');
                })
            }

            /* Mobile */
            $("#menu-trigger").on("click", function(){
                $("#menu").slideToggle();
            });

            // iPad
            var isiPad = navigator.userAgent.match(/iPad/i) != null;
            if (isiPad) $('#menu ul').addClass('no-transition');
        });

        layui.use(['element'], function () {
            var element = layui.element;
        })

    </script>

</div>
</body>
</html>