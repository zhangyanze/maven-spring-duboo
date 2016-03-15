<!DOCTYPE html>
<html lang="zh"><head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <title>电商测试 - 用户注册</title>
    <meta content="电商测试" name="keywords">
    <meta content="电商测试" name="description">
    <meta content="ShopNC" name="author">
    <meta content="ShopNC Inc. All Rights Reserved" name="copyright">
    <style type="text/css">
        body {
            _behavior: url(http://localhost/shopnc/shop/templates/default/css/csshover.htc);
        }
    </style>
    <link type="text/css" rel="stylesheet" href="http://localhost/shopnc/shop/templates/default/css/base.css">
    <link type="text/css" rel="stylesheet" href="http://localhost/shopnc/shop/templates/default/css/home_header.css">
    <link type="text/css" rel="stylesheet" href="http://localhost/shopnc/shop/templates/default/css/home_login.css">
    <link rel="stylesheet" href="http://localhost/shopnc/shop/resource/font/font-awesome/css/font-awesome.min.css">
    <!--[if IE 7]>
    <link rel="stylesheet" href="http://localhost/shopnc/shop/resource/font/font-awesome/css/font-awesome-ie7.min.css">
    <![endif]-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="http://localhost/shopnc/data/resource/js/html5shiv.js"></script>
    <script src="http://localhost/shopnc/data/resource/js/respond.min.js"></script>
    <![endif]-->
    <!--[if IE 6]>
    <script src="http://localhost/shopnc/data/resource/js/IE6_PNG.js"></script>
    <script>
        DD_belatedPNG.fix('.pngFix');
    </script>
    <script>
        // <![CDATA[
if((window.navigator.appName.toUpperCase().indexOf("MICROSOFT")>=0)&&(document.execCommand))
try{
document.execCommand("BackgroundImageCache", false, true);
   }
catch(e){}
// ]]>
</script>
<![endif]-->
    <script>
        var COOKIE_PRE = '5BF5_';var _CHARSET = 'utf-8';var SITEURL = 'http://localhost/shopnc/shop';var SHOP_SITE_URL = 'http://localhost/shopnc/shop';var RESOURCE_SITE_URL = 'http://localhost/shopnc/data/resource';var RESOURCE_SITE_URL = 'http://localhost/shopnc/data/resource';var SHOP_TEMPLATES_URL = 'http://localhost/shopnc/shop/templates/default';
    </script>
    <script src="http://localhost/shopnc/data/resource/js/jquery.js"></script>
    <script charset="utf-8" src="http://localhost/shopnc/data/resource/js/common.js"></script>
    <script src="http://localhost/shopnc/data/resource/js/jquery-ui/jquery.ui.js"></script>
    <script src="http://localhost/shopnc/data/resource/js/jquery.validation.min.js"></script>
    <script src="http://localhost/shopnc/data/resource/js/jquery.masonry.js"></script>
    <script charset="utf-8" id="dialog_js" src="http://localhost/shopnc/data/resource/js/dialog/dialog.js"></script><link type="text/css" rel="stylesheet" href="http://localhost/shopnc/data/resource/js/dialog/dialog.css">
    <script type="text/javascript">
        var PRICE_FORMAT = '&amp;yen;%s';
        $(function(){
            //首页左侧分类菜单
            $(".category ul.menu").find("li").each(
                    function() {
                        $(this).hover(
                                function() {
                                    var cat_id = $(this).attr("cat_id");
                                    var menu = $(this).find("div[cat_menu_id='"+cat_id+"']");
                                    menu.show();
                                    $(this).addClass("hover");
                                    if(menu.attr("hover")&gt;0) return;
                                    menu.masonry({itemSelector: 'dl'});
                                    var menu_height = menu.height();
                                    if (menu_height &lt; 60) menu.height(80);
                                    menu_height = menu.height();
                                    var li_top = $(this).position().top;
                                    if ((li_top &gt; 60) &amp;&amp; (menu_height &gt;= li_top)) $(menu).css("top",-li_top+50);
                                    if ((li_top &gt; 150) &amp;&amp; (menu_height &gt;= li_top)) $(menu).css("top",-li_top+90);
                                    if ((li_top &gt; 240) &amp;&amp; (li_top &gt; menu_height)) $(menu).css("top",menu_height-li_top+90);
                                    if (li_top &gt; 300 &amp;&amp; (li_top &gt; menu_height)) $(menu).css("top",60-menu_height);
                                    if ((li_top &gt; 40) &amp;&amp; (menu_height &lt;= 120)) $(menu).css("top",-5);
                                    menu.attr("hover",1);
                                },
                                function() {
                                    $(this).removeClass("hover");
                                    var cat_id = $(this).attr("cat_id");
                                    $(this).find("div[cat_menu_id='"+cat_id+"']").hide();
                                }
                        );
                    }
            );
            $(".head-user-menu dl").hover(function() {
                        $(this).addClass("hover");
                    },
                    function() {
                        $(this).removeClass("hover");
                    });
            $('.head-user-menu .my-mall').mouseover(function(){// 最近浏览的商品
                load_history_information();
                $(this).unbind('mouseover');
            });
            $('.head-user-menu .my-cart').mouseover(function(){// 运行加载购物车
                load_cart_information();
                $(this).unbind('mouseover');
            });
            $('#button').click(function(){
                if ($('#keyword').val() == '') {
                    return false;
                }
            });
        });
    </script>
    <style type="text/css">
        &lt;!--
        .STYLE1 {
            color: #FF0000;
            font-weight: bold;
            font-size: 24px;
        }
        --&gt;
    </style>
    <style type="text/css" id="poshytip-css-tip-yellowsimple">div.tip-yellowsimple{visibility:hidden;position:absolute;top:0;left:0;}div.tip-yellowsimple table, div.tip-yellowsimple td{margin:0;font-family:inherit;font-size:inherit;font-weight:inherit;font-style:inherit;font-variant:inherit;}div.tip-yellowsimple td.tip-bg-image span{display:block;font:1px/1px sans-serif;height:10px;width:10px;overflow:hidden;}div.tip-yellowsimple td.tip-right{background-position:100% 0;}div.tip-yellowsimple td.tip-bottom{background-position:100% 100%;}div.tip-yellowsimple td.tip-left{background-position:0 100%;}div.tip-yellowsimple div.tip-inner{background-position:-10px -10px;}div.tip-yellowsimple div.tip-arrow{visibility:hidden;position:absolute;overflow:hidden;font:1px/1px sans-serif;}</style></head>
<body>

<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<div class="public-top-layout w">
    <div class="topbar wrapper">
        <div class="user-entry">
            您好，欢迎来到      <a alt="首页" title="首页" href="http://localhost/shopnc/shop">电商测试</a>
            <span>[<a href="http://localhost/shopnc/shop/index.php?act=login&amp;op=index">登录</a>]</span>
            <span>[<a href="http://localhost/shopnc/shop/index.php?act=login&amp;op=register">注册</a>]</span>
            <span class="seller-login"><a title="登录商家管理中心" target="_blank" href="http://localhost/shopnc/shop/index.php?act=seller_login&amp;op=show_login"><i class="icon-signin"></i>商家管理中心</a></span></div>

        <div class="quick-menu">
            <dl>
                <dt><a href="http://localhost/shopnc/shop/index.php?act=member_order">我的订单</a><i></i></dt>
                <dd>
                    <ul>
                        <li><a href="http://localhost/shopnc/shop/index.php?act=member_order&amp;state_type=state_new">待付款订单</a></li>
                        <li><a href="http://localhost/shopnc/shop/index.php?act=member_order&amp;state_type=state_send">待确认收货</a></li>
                        <li><a href="http://localhost/shopnc/shop/index.php?act=member_order&amp;state_type=state_noeval">待评价交易</a></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt><a href="http://localhost/shopnc/shop/index.php?act=member_favorites&amp;op=fglist">我的收藏</a><i></i></dt>
                <dd>
                    <ul>
                        <li><a href="http://localhost/shopnc/shop/index.php?act=member_favorites&amp;op=fglist">商品收藏</a></li>
                        <li><a href="http://localhost/shopnc/shop/index.php?act=member_favorites&amp;op=fslist">店铺收藏</a></li>
                    </ul>
                </dd>
            </dl>
            <dl>
                <dt>客户服务<i></i></dt>
                <dd>
                    <ul>
                        <li><a href="http://localhost/shopnc/shop/index.php?act=article&amp;op=article&amp;ac_id=2">帮助中心</a></li>
                        <li><a href="http://localhost/shopnc/shop/index.php?act=article&amp;op=article&amp;ac_id=5">售后服务</a></li>
                        <li><a href="http://localhost/shopnc/shop/index.php?act=article&amp;op=article&amp;ac_id=6">客服中心</a></li>
                    </ul>
                </dd>
            </dl>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        $(".quick-menu dl").hover(function() {
                    $(this).addClass("hover");
                },
                function() {
                    $(this).removeClass("hover");
                });

    });
</script>
<!-- PublicHeadLayout Begin -->
<p></p>
<div class="header-wrap">
    <header class="public-head-layout wrapper">
        <h1 class="site-logo"><a href="http://localhost/shopnc/shop"><img class="pngFix" src="http://localhost/shopnc/data/upload/shop/common/logo.png"></a></h1>
        <div class="head-search-bar">
            <form class="search-form" method="get" action="http://localhost/shopnc/shop">
                <input type="hidden" value="search" id="search_act" name="act">
                <input type="text" lang="zh-CN" x-webkit-grammar="builtin:search" placeholder="请输入您要搜索的商品关键字" onwebkitspeechchange="foo()" x-webkit-speech="" maxlength="60" value="" class="input-text" id="keyword" name="keyword">
                <input type="submit" class="input-submit" value="搜索" id="button">
            </form>
            <div class="keyword">热门搜索：        <ul>
                <li><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;keyword=%E5%91%A8%E5%A4%A7%E7%A6%8F">周大福</a></li>
                <li><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;keyword=%E5%86%85%E8%A1%A3">内衣</a></li>
                <li><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;keyword=%E9%87%91%E5%8F%B2%E5%AF%86%E6%96%AF">金史密斯</a></li>
                <li><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;keyword=%E6%89%8B%E6%9C%BA">手机</a></li>
            </ul>
            </div>
        </div>
        <div class="head-user-menu">
            <dl class="my-mall">
                <dt><span class="ico"></span>我的商城<i class="arrow"></i></dt>
                <dd>
                    <div class="sub-title">
                        <h4></h4>
                        <a class="arrow" href="http://localhost/shopnc/shop/index.php?act=member_snsindex">我的用户中心<i></i></a></div>
                    <div class="user-centent-menu">
                        <ul>
                            <li><a href="http://localhost/shopnc/shop/index.php?act=home&amp;op=message">站内消息(<span>0</span>)</a></li>
                            <li><a class="arrow" href="http://localhost/shopnc/shop/index.php?act=member_order">我的订单<i></i></a></li>
                            <li><a href="http://localhost/shopnc/shop/index.php?act=member_consult&amp;op=my_consult">咨询回复(<span id="member_consult">0</span>)</a></li>
                            <li><a class="arrow" href="http://localhost/shopnc/shop/index.php?act=member_favorites&amp;op=fglist">我的收藏<i></i></a></li>
                            <li><a href="http://localhost/shopnc/shop/index.php?act=member_voucher">代金券(<span id="member_voucher">0</span>)</a></li>
                            <li><a class="arrow" href="http://localhost/shopnc/shop/index.php?act=member_points">我的积分<i></i></a></li>
                        </ul>
                    </div>
                    <div class="browse-history">
                        <div class="part-title">
                            <h4>最近浏览的商品</h4>
                        </div>
                        <ul>
                            <li class="no-goods"><img src="http://localhost/shopnc/shop/templates/default/images/loading.gif" class="loading"></li>
                        </ul>
                    </div>
                </dd>
            </dl>
            <dl class="my-cart">
                <dt><span class="ico"></span>购物车结算<i class="arrow"></i></dt>
                <dd>
                    <div class="sub-title">
                        <h4>最新加入的商品</h4>
                    </div>
                    <div class="incart-goods-box">
                        <div class="incart-goods"> <img src="http://localhost/shopnc/shop/templates/default/images/loading.gif" class="loading"> </div>
                    </div>
                    <div class="checkout"> <span class="total-price">共<i>0</i>种商品</span><a class="btn-cart" href="http://localhost/shopnc/shop/index.php?act=cart">结算购物车中的商品</a> </div>
                </dd>
            </dl>
        </div>
    </header>
</div>
<!-- PublicHeadLayout End -->

<!-- publicNavLayout Begin -->
<nav class="public-nav-layout">
    <div class="wrapper">
        <div class="all-category">

            <div class="title">
                <h3><a href="http://localhost/shopnc/shop/index.php?act=category&amp;op=index">所有商品分类</a></h3>
                <i class="arrow"></i></div>
            <div class="category">
                <ul class="menu">
                    <li class="odd" cat_id="1">
                        <div class="class">
                            <span class="ico"><img src="http://shopnc.180.haoid.cn/data/upload/shop/common/category-pic-1.jpg"></span>
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1">服饰鞋帽</a></h4>
              <span class="recommend-class">
                                          <a title="T恤" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=12">T恤</a>
                            <a title="衬衫" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=13">衬衫</a>
                            <a title="针织衫" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=14">针织衫</a>
                            <a title="雪纺衫" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=15">雪纺衫</a>
                            <a title="卫衣" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=16">卫衣</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="1" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=4">女装</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=12">T恤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=13">衬衫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=14">针织衫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=15">雪纺衫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=16">卫衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=17">马甲</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=18">连衣裙</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=19">半身裙</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=20">牛仔裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=21">休闲裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=22">打底裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=23">正装裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=24">西服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=25">短外套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=26">风衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=27">大衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=28">皮衣皮草</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=29">棉服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=30">羽绒服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=31">孕妇装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=32">大码装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=33">中老年装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=34">婚纱礼服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1053">女装</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=5">男装</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=35">衬衫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=36">T恤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=37">POLO衫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=38">针织衫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=39">羊绒衫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=40">卫衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=41">马甲／背心</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=42">夹克</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=43">风衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=44">大衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=45">皮衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=46">外套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=47">西服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=48">棉服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=49">羽绒服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=50">牛仔裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=51">休闲裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=52">西裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=53">西服套装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=54">大码装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=55">中老年装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=56">唐装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=57">工装</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=6">内衣</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=58">文胸</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=59">女式内裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=60">男式内裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=61">家居</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=62">睡衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=63">塑身衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=64">睡袍／浴袍</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=65">泳衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=66">背心</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=67">抹胸</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=68">连裤袜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=69">美腿袜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=70">男袜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=71">女袜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=72">情趣内衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=73">保暖内衣</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=7">运动</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=74">休闲鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=75">帆布鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=76">跑步鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=77">篮球鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=78">足球鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=79">训练鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=80">乒羽鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=81">拖鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=82">卫衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=83">夹克</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=84">T恤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=85">棉服／羽绒服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=86">运动裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=87">套装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=88">运动包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=89">运动配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=8">女鞋</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=90">平底鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=91">高跟鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=92">单鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=93">休闲鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=94">凉鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=95">女靴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=96">雪地靴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=97">拖鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=98">裸靴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=99">筒靴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=100">帆布鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=101">雨鞋／雨靴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=102">妈妈鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=103">鞋配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=104">特色鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=105">鱼嘴鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=106">布鞋／绣花鞋</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=9">男鞋</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=107">商务休闲鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=108">正装鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=109">休闲鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=110">凉鞋／沙滩鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=111">男靴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=112">功能鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=113">拖鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=114">传统布鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=115">鞋配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=116">帆布鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=117">豆豆鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=118">驾车鞋</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=10">配饰</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=119">太阳镜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=120">框镜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=121">皮带</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=122">围巾</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=123">手套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=124">帽子</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=125">领带</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=126">袖扣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=127">其他配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=128">丝巾</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=129">披肩</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=130">腰带</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=131">腰链／腰封</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=132">棒球帽</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=133">毛线</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=134">遮阳帽</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=135">防紫外线手套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=136">草帽</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=11">童装</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=137">套装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=138">上衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=139">裤子</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=140">裙子</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=141">内衣／家居服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=142">羽绒服／棉服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=143">亲子装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=144">儿童配饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=145">礼服／演出服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=146">运动鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=147">单鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=148">靴子</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=149">凉鞋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=150">功能鞋</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li class="even" cat_id="2">
                        <div class="class">
                            <span class="ico"><img src="http://shopnc.180.haoid.cn/data/upload/shop/common/category-pic-2.jpg"></span>
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=2">礼品箱包</a></h4>
              <span class="recommend-class">
                                          <a title="钱包/卡包" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=156">钱包/卡包</a>
                            <a title="手拿包" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=157">手拿包</a>
                            <a title="单肩包" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=158">单肩包</a>
                            <a title="双肩包" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=159">双肩包</a>
                            <a title="手提包" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=160">手提包</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="2" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=151">潮流女包</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=156">钱包/卡包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=157">手拿包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=158">单肩包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=159">双肩包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=160">手提包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=161">斜挎包</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=152">时尚男包</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=162">钱包/卡包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=163">男士手包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=164">腰带／礼盒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=165">商务公文包</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=153">功能箱包</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=166">电脑数码包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=167">拉杆箱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=168">旅行包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=169">旅行配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=170">休闲运动包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=171">登山包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=172">妈咪包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=173">书包</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=154">礼品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=174">火机烟具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=175">礼品文具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=176">瑞士军刀</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=177">收藏品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=178">工艺礼品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=179">创意礼品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=180">礼卡礼卷</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=181">鲜花速递</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=182">婚庆用品</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=155">奢侈品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=184">奢侈品箱包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=185">钱包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=186">服饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=187">腰带</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=188">太阳镜眼镜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=189">配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=190">GUCCI</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=191">PRADA</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=192">FENDI</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=193">BURBERRY</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=194">MONTBLANC</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=195">ARMANI</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=196">RIMOWA</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=197">RAY-BAN</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=198">COACH</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=199">更多品牌</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li class="odd" cat_id="3">
                        <div class="class">
                            <span class="ico"><img src="http://shopnc.180.haoid.cn/data/upload/shop/common/category-pic-3.jpg"></span>
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=3">家居家装</a></h4>
              <span class="recommend-class">
                                          <a title="床品件套" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=206">床品件套</a>
                            <a title="被子" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=207">被子</a>
                            <a title="枕芯枕套" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=208">枕芯枕套</a>
                            <a title="床单被罩" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=209">床单被罩</a>
                            <a title="毛巾被/毯" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=210">毛巾被/毯</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="3" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=200">家纺</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=206">床品件套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=207">被子</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=208">枕芯枕套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=209">床单被罩</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=210">毛巾被/毯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=211">床垫/床褥</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=212">蚊帐/凉席</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=213">抱枕坐垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=214">毛巾家纺</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=215">电热毯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=216">窗帘/窗纱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=217">酒店用品</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=201">灯具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=218">台灯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=219">节能灯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=220">装饰灯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=221">落地灯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=222">应急灯/手电</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=223">LED灯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=224">吸顶灯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=225">五金电器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=226">吊灯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=227">氛围照明</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=202">生活日用</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=228">收纳用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=229">雨伞雨具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=230">浴室用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=231">缝纫用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=232">洗晒用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=233">净化除味</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=203">家装软饰</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=234">桌布/罩件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=235">地毯地垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=236">沙发垫套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=237">相框/相片墙</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=238">墙画墙贴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=239">节庆饰品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=240">手工/十字绣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=241">工艺摆件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=242">其他</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=204">清洁日用</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=243">纸品湿巾</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=244">衣物清洁</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=245">清洁工具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=246">驱虫用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=247">居室清洁</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=248">皮具护理</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=205">宠物生活</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=249">宠物主粮</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=250">宠物零食</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=251">营养品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=252">家居日用</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=253">玩具服饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=254">出行装备</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=255">医护美容</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li class="even" cat_id="256">
                        <div class="class">
                            <span class="ico"><img src="http://shopnc.180.haoid.cn/data/upload/shop/common/category-pic-256.jpg"></span>
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=256">数码办公</a></h4>
              <span class="recommend-class">
                                          <a title="手机电池" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=264">手机电池</a>
                            <a title="蓝牙耳机" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=265">蓝牙耳机</a>
                            <a title="充电器/数据线" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=266">充电器/数据线</a>
                            <a title="手机耳机" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=267">手机耳机</a>
                            <a title="手机贴膜" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=268">手机贴膜</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="256" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=258">手机配件</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=264">手机电池</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=265">蓝牙耳机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=266">充电器/数据线</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=267">手机耳机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=268">手机贴膜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=269">手机存储卡</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=270">手机保护套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=271">车载配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=272">iPhone 配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=273">创意配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=274">便携/无线音响</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=275">手机饰品</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=259">摄影摄像</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=276">数码相机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=277">单电/微单相机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=278">单反相机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=279">摄像机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=280">拍立得</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=281">镜头</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=260">数码配件</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=282">存储卡</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=283">读卡器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=284">滤镜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=285">闪光灯/手柄</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=286">相机包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=287">三脚架/云台</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=288">相机清洁</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=289">相机贴膜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=290">机身附件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=291">镜头附件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=292">电池/充电器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=293">移动电源</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=261">时尚影音</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=294">MP3/MP4</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=295">智能设备</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=296">耳机/耳麦</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=297">音箱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=298">高清播放器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=299">电子书</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=300">电子词典</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=301">MP3/MP4配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=302">录音笔</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=303">麦克风</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=304">专业音频</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=305">电子教育</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=306">数码相框</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=307">苹果配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=390">电脑整机</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=398">笔记本</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=399">超极本</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=400">游戏本</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=401">平板电脑</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=402">平板电脑配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=403">台式机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=404">服务器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=405">笔记本配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=391">电脑配件</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=406">CPU</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=407">主板</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=408">显卡</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=409">硬盘</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=410">SSD固态硬盘</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=411">内存</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=412">机箱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=413">电源</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=414">显示器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=415">刻录机/光驱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=416">散热器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=417">声卡/扩展卡</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=418">装机配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=392">外设产品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=419">鼠标</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=420">键盘</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=421">移动硬盘</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=422">U盘</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=423">摄像头</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=424">外置盒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=425">游戏设备</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=426">电视盒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=427">手写板</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=428">鼠标垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=429">插座</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=430">UPS电源</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=431">线缆</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=432">电脑工具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=433">电脑清洁</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=393">网络产品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=434">路由器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=435">网卡</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=436">交换机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=437">网络存储</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=438">3G上网</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=439">网络盒子</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=394">办公打印</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=440">打印机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=441">一体机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=442">投影机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=443">投影配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=444">传真机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=445">复合机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=446">碎纸机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=447">扫描仪</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=448">墨盒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=449">硒鼓</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=450">墨粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=451">色带</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=395">办公文仪</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=452">办公文具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=453">文件管理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=454">笔类</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=455">纸类</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=456">本册/便签</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=457">学生文具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=458">财务用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=459">计算器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=460">激光笔</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=461">白板/封装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=462">考勤机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=463">刻录碟片/附件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=464">点钞机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=465">支付设备/POS机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=466">安防监控</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=467">呼叫/会议设备</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=468">保险柜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=469">办公家具</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1034">手机通讯</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1035">手机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1036">对讲机</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li class="odd" cat_id="308">
                        <div class="class">
                            <span class="ico"><img src="http://shopnc.180.haoid.cn/data/upload/shop/common/category-pic-308.jpg"></span>
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=308">家用电器</a></h4>
              <span class="recommend-class">
                                          <a title="平板电视" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=314">平板电视</a>
                            <a title="空调" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=315">空调</a>
                            <a title="冰箱" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=316">冰箱</a>
                            <a title="洗衣机" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=317">洗衣机</a>
                            <a title="家庭影院" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=318">家庭影院</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="308" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=309">大家电</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=314">平板电视</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=315">空调</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=316">冰箱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=317">洗衣机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=318">家庭影院</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=319">DVD播放机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=320">迷你音响</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=321">烟机/灶具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=322">热水器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=323">消毒柜/洗碗机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=324">酒柜/冰吧/冷柜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=325">家电配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=310">生活电器</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=326">净化器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=327">电风扇</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=328">吸尘器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=329">加湿器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=330">净水设备</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=331">饮水机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=332">冷风扇</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=333">挂烫机/熨斗</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=334">电话机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=335">插座</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=336">收录/音机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=337">除湿/干衣机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=338">清洁机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=339">取暖电器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=340">其它生活电器</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=311">厨房电器</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=341">料理/榨汁机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=342">豆浆机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=343">电饭煲</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=344">电压力锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=345">面包机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=346">咖啡机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=347">微波炉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=348">电烤箱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=349">电磁炉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=350">电饼铛/烧烤盘</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=351">煮蛋器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=352">酸奶机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=353">电炖锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=354">电水壶/热水瓶</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=355">多用途锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=356">果蔬解毒机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=357">其它厨房电器</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=312">个护健康</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=358">剃须刀</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=359">剃/脱毛器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=360">口腔护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=361">电吹风</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=362">美容器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=363">美发器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=364">按摩椅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=365">按摩器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=366">足浴盆</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=367">血压计</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=368">健康秤/厨房秤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=369">血糖仪</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=370">体温计</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=371">计步器/脂肪检测仪</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=372">其它健康电器</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=313">五金家装</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=373">电动工具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=374">手动工具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=375">仪器仪表</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=376">浴霸/排气扇</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=377">灯具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=378">LED灯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=379">洁身器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=380">水槽</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=381">龙头</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=382">淋浴花洒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=383">厨卫五金</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=384">家具五金</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=385">门铃</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=386">电气开关</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=387">插座</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=388">电工电料</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=389">监控安防</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li class="even" cat_id="470">
                        <div class="class">
                            <span class="ico"><img src="http://shopnc.180.haoid.cn/data/upload/shop/common/category-pic-470.jpg"></span>
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=470">个护化妆</a></h4>
              <span class="recommend-class">
                                          <a title="洁面乳" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=478">洁面乳</a>
                            <a title="爽肤水" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=479">爽肤水</a>
                            <a title="精华露" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=480">精华露</a>
                            <a title="乳液面霜" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=481">乳液面霜</a>
                            <a title="面膜面贴" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=482">面膜面贴</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="470" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=471">面部护理</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=478">洁面乳</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=479">爽肤水</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=480">精华露</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=481">乳液面霜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=482">面膜面贴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=483">眼部护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=484">颈部护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=485">T区护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=486">护肤套装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=487">防晒隔离</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=472">身体护理</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=488">洗发护发</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=489">染发/造型</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=490">沐浴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=491">磨砂/浴盐</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=492">身体乳</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=493">手工/香皂</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=494">香薰精油</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=495">纤体瘦身</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=496">脱毛膏</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=497">手足护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=498">洗护套装</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=473">口腔护理</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=499">牙膏/牙粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=500">牙刷/牙线</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=501">漱口水</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=474">女性护理</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=502">卫生巾</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=503">卫生护垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=504">洗液</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=505">美容食品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=506">其他</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=475">男士护理</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=507">脸部护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=508">眼部护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=509">身体护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=510">男士香水</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=511">剃须护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=512">防脱洗护</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=513">男士唇膏</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=476">魅力彩妆</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=514">粉底/遮瑕</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=515">腮红</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=516">眼影/眼线</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=517">眉笔</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=518">睫毛膏</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=519">唇膏唇彩</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=520">彩妆组合</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=521">卸妆</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=522">美甲</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=523">彩妆工具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=524">假发</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=477">香水SPA</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=525">女士香水</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=526">男士香水</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=527">组合套装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=528">迷你香水</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=529">香体走珠</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li class="odd" cat_id="530">
                        <div class="class">
                            <span class="ico"><img src="http://shopnc.180.haoid.cn/data/upload/shop/common/category-pic-530.jpg"></span>
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=530">珠宝手表</a></h4>
              <span class="recommend-class">
                                          <a title="项链" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=541">项链</a>
                            <a title="手链/脚链" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=542">手链/脚链</a>
                            <a title="戒指" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=543">戒指</a>
                            <a title="耳饰" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=544">耳饰</a>
                            <a title="头饰" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=545">头饰</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="530" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=531">时尚饰品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=541">项链</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=542">手链/脚链</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=543">戒指</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=544">耳饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=545">头饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=546">胸针</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=547">婚庆饰品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=548">饰品配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=532">纯金K金饰品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=549">吊坠/项链</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=550">手镯/手链/脚链</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=551">戒指</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=552">耳饰</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=533">金银投资</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=553">工艺金</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=554">工艺银</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=534">银饰</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=555">吊坠/项链</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=556">手镯/手链/脚链</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=557">戒指/耳饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=558">宝宝金银</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=559">千足银</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=535">钻石饰品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=560">裸钻</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=561">戒指</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=563">项链/吊坠</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=564">耳饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=565">手镯/手链</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=536">翡翠玉石</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=566">项链/吊坠</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=567">手镯/手串</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=568">戒指</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=569">耳饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=570">挂件/摆件/把件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=571">高值收藏</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=537">水晶玛瑙</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=572">耳饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=573">手镯/手链/脚链</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=574">戒指</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=575">头饰/胸针</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=576">摆件/挂件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=538">宝石珍珠</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=577">项链/吊坠</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=578">耳饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=579">手镯/手链</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=580">戒指</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=539">婚庆</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=581">婚嫁首饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=582">婚纱摄影</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=583">婚纱礼服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=584">婚庆服务</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=585">婚庆礼品/用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=586">婚宴</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=540">钟表手表</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=587">瑞士品牌</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=588">国产品牌</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=589">日本品牌</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=590">时尚品牌</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=591">闹钟挂钟</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=592">儿童手表</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li class="even" cat_id="593">
                        <div class="class">
                            <span class="ico"><img src="http://shopnc.180.haoid.cn/data/upload/shop/common/category-pic-593.jpg"></span>
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=593">食品饮料</a></h4>
              <span class="recommend-class">
                                          <a title="饼干蛋糕" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=604">饼干蛋糕</a>
                            <a title="糖果巧克力" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=605">糖果巧克力</a>
                            <a title="休闲零食" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=606">休闲零食</a>
                            <a title="冲调饮品" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=607">冲调饮品</a>
                            <a title="粮油调味" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=608">粮油调味</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="593" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=594">进口食品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=604">饼干蛋糕</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=605">糖果巧克力</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=606">休闲零食</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=607">冲调饮品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=608">粮油调味</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=595">地方特产</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=609">华北</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=610">西北</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=611">西南</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=612">东北</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=613">华南</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=614">华东</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=615">华中</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=596">休闲食品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=616">休闲零食</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=617">坚果炒货</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=618">肉干肉松</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=619">蜜饯果脯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=620">糖果/巧克力</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=621">饼干蛋糕</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=597">粮油调味</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=622">米面杂粮</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=623">食用油</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=624">调味品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=625">南北干货</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=626">方便食品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=627">有机食品</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=598">中外名酒</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=628">白酒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=629">洋酒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=630">葡萄酒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=631">啤酒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=632">黄酒</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=599">饮料冲调</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=633">水</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=634">饮料</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=635">牛奶</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=636">茶叶</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=637">咖啡/奶茶</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=638">冲饮谷物</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=600">营养健康</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=639">基础营养</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=640">美体养颜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=641">滋补调养</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=642">骨骼健康</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=643">保健茶饮</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=644">成分保健</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=645">无糖食品</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=601">亚健康调理</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=646">调节三高</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=647">心脑养护</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=648">改善睡眠</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=649">肝肾养护</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=650">免疫调节</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=651">更多调理</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=602">健康礼品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=652">参茸礼品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=653">更多礼品</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=603">生鲜食品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=654">水果</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=655">蔬菜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=656">海鲜水产</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=657">禽蛋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=658">鲜肉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=659">加工类肉食</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=660">冻品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=661">半成品</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li style="display:none;" class="odd" cat_id="662">
                        <div class="class">
                            <span class="ico"><img src="http://shopnc.180.haoid.cn/data/upload/shop/common/category-pic-662.jpg"></span>
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=662">运动健康</a></h4>
              <span class="recommend-class">
                                          <a title="户外服装" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=671">户外服装</a>
                            <a title="户外鞋袜" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=672">户外鞋袜</a>
                            <a title="户外配饰" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=673">户外配饰</a>
                            <a title="帐篷" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=674">帐篷</a>
                            <a title="睡袋" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=675">睡袋</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="662" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=663">户外鞋服</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=671">户外服装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=672">户外鞋袜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=673">户外配饰</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=664">户外装备</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=674">帐篷</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=675">睡袋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=676">登山攀岩</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=677">户外背包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=678">户外照明</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=679">户外垫子</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=680">户外仪表</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=681">户外工具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=682">望远镜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=683">垂钓用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=684">旅游用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=685">便携桌椅床</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=686">烧烤用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=687">野餐炊具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=688">军迷用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=689">游泳用具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=690">泳衣</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=665">运动器械</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=691">健身器械</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=692">运动器材</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=693">极限轮滑</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=694">骑行运动</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=695">运动护具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=696">武术搏击</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=666">纤体瑜伽</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=697">瑜伽垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=698">瑜伽服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=699">瑜伽配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=700">瑜伽套装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=701">舞蹈鞋服</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=667">体育娱乐</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=702">羽毛球</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=703">乒乓球</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=704">篮球</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=705">足球</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=706">网球</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=707">排球</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=708">高尔夫球</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=709">棋牌麻将</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=710">其他</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=668">成人用品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=711">安全避孕</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=712">验孕测孕</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=713">人体润滑</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=714">情爱玩具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=715">情趣内衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=716">组合套装</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=669">保健器械</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=717">养生器械</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=718">保健用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=719">康复辅助</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=720">家庭护理</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=670">急救卫生</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=721">跌打损伤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=722">烫伤止痒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=723">防裂抗冻</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=724">口腔咽部</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=725">眼部保健</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=726">鼻炎健康</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=727">风湿骨痛</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=728">生殖泌尿</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=729">美体塑身</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li style="display:none;" class="even" cat_id="730">
                        <div class="class">
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=730">汽车用品</a></h4>
              <span class="recommend-class">
                                          <a title="便携GPS导航" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=738">便携GPS导航</a>
                            <a title="嵌入式导航" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=739">嵌入式导航</a>
                            <a title="安全预警仪" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=740">安全预警仪</a>
                            <a title="行车记录仪" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=741">行车记录仪</a>
                            <a title="跟踪防盗器" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=742">跟踪防盗器</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="730" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=731">电子电器</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=738">便携GPS导航</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=739">嵌入式导航</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=740">安全预警仪</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=741">行车记录仪</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=742">跟踪防盗器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=743">倒车雷达</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=744">车载电源</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=745">车载蓝牙</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=746">车载影音</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=747">车载净化器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=748">车载冰箱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=749">车载吸尘器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=750">充气泵</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=751">胎压监测</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=752">车载生活电器</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=732">系统养护</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=753">机油</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=754">添加剂</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=755">防冻冷却液</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=756">附属油</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=757">底盘装甲</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=758">空调清洗剂</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=759">金属养护</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=733">改装配件</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=760">雨刷</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=761">车灯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=762">轮胎</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=763">贴膜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=764">装饰贴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=765">后视镜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=766">机油滤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=767">空气滤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=768">空调滤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=769">燃油滤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=770">火花塞</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=771">喇叭</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=772">刹车片</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=773">刹车盘</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=774">减震器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=775">车身装饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=776">尾喉/排气管</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=777">踏板</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=778">蓄电池</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=779">其他配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=734">汽车美容</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=780">漆面美容</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=781">漆面修复</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=782">内饰清洁</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=783">玻璃美容</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=784">补漆笔</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=785">轮胎轮毂清洗</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=786">洗车器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=787">洗车水枪</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=788">洗车配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=789">洗车液</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=790">车掸</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=791">擦车巾/海绵</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=735">座垫脚垫</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=792">凉垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=793">四季垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=794">毛垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=795">专车专用座垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=796">专车专用座套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=797">通用座套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=798">多功能垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=799">专车专用脚垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=800">通用脚垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=801">后备箱垫</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=736">内饰精品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=802">车用香水</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=803">车用炭包</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=804">空气净化</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=805">颈枕/头枕</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=806">抱枕/腰靠</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=807">方向盘套</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=808">挂件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=809">摆件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=810">布艺软饰</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=811">功能用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=812">整理收纳</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=813">CD夹</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=737">安全自驾</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=814">儿童安全座椅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=815">应急救援</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=816">汽修工具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=817">自驾野营</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=818">自驾照明</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=819">保温箱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=820">置物箱</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=821">车衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=822">遮阳挡雪挡</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=823">车锁地锁</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=824">摩托车装备</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1054">整车</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1055">新车</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1056">二手车</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li style="display:none;" class="odd" cat_id="825">
                        <div class="class">
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=825">玩具乐器</a></h4>
              <span class="recommend-class">
                                          <a title="0-6个月" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=838">0-6个月</a>
                            <a title="6-12个月" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=839">6-12个月</a>
                            <a title="1-3岁" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=840">1-3岁</a>
                            <a title="3-6岁" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=841">3-6岁</a>
                            <a title="6-14岁" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=842">6-14岁</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="825" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=826">适用年龄</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=838">0-6个月</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=839">6-12个月</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=840">1-3岁</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=841">3-6岁</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=842">6-14岁</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=843">14岁以上</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=827">遥控/电动</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=844">遥控车</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=845">遥控飞机</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=846">遥控船</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=847">机器人/电动</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=848">轨道/助力</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=828">毛绒布艺</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=849">毛绒/布艺</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=850">靠垫/抱枕</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=829">娃娃玩具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=851">芭比娃娃</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=852">卡通娃娃</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=853">智能娃娃</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=830">模型玩具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=854">仿真模型</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=855">拼插模型</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=856">收藏爱好</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=831">健身玩具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=857">炫舞毯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=858">爬行垫/毯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=859">户外玩具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=860">戏水玩具</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=832">动漫玩具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=861">电影周边</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=862">卡通周边</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=863">网游周边</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=833">益智玩具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=864">摇铃/床铃</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=865">健身架</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=866">早教启智</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=867">拖拉玩具</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=834">积木拼插</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=868">积木</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=869">拼图</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=870">磁力棒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=871">立体拼插</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=835">DIY玩具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=872">手工彩泥</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=873">绘画工具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=874">情景玩具</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=836">创意减压</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=875">减压玩具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=876">创意玩具</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=837">乐器相关</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=877">钢琴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=878">电子琴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=879">手风琴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=880">吉他/贝斯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=881">民族管弦乐器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=882">西洋管弦乐</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=883">口琴/口风琴/竖笛</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=884">西洋打击乐器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=885">各式乐器配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=886">电脑音乐</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=887">工艺礼品乐器</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li style="display:none;" class="even" cat_id="888">
                        <div class="class">
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=888">厨具</a></h4>
              <span class="recommend-class">
                                          <a title="炒锅" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=895">炒锅</a>
                            <a title="煎锅" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=896">煎锅</a>
                            <a title="压力锅" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=897">压力锅</a>
                            <a title="蒸锅" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=898">蒸锅</a>
                            <a title="汤锅" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=899">汤锅</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="888" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=889">烹饪锅具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=895">炒锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=896">煎锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=897">压力锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=898">蒸锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=899">汤锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=900">奶锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=901">套锅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=902">煲类</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=903">水壶</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=904">厨用杂件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=890">刀剪菜板</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=905">单刀</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=906">剪刀</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=907">套刀</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=908">砧板</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=909">刀具配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=891">收纳保鲜</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=910">保鲜盒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=911">保鲜膜/袋</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=912">调料器皿</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=913">饭盒/提锅</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=892">水具酒具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=914">塑料杯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=915">运动水壶</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=916">玻璃杯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=917">陶瓷杯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=918">保温杯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=919">保温壶</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=920">酒杯/套装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=921">酒具配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=893">餐具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=922">餐具套装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=923">碗/碟/盘</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=924">筷勺/刀叉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=925">一次性餐具</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=935">茶具/咖啡具</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=936">整套茶具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=937">茶杯</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=938">茶壶</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=939">茶盘茶托</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=940">茶叶罐</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=941">茶具配件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=942">茶宠摆件</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=943">咖啡具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=944">其他</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li style="display:none;" class="odd" cat_id="959">
                        <div class="class">
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=959">母婴用品</a></h4>
              <span class="recommend-class">
                                          <a title="品牌奶粉" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=968">品牌奶粉</a>
                            <a title="妈妈奶粉" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=969">妈妈奶粉</a>
                            <a title="1段奶粉" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=970">1段奶粉</a>
                            <a title="2段奶粉" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=971">2段奶粉</a>
                            <a title="3段奶粉" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=972">3段奶粉</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="959" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=960">奶粉</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=968">品牌奶粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=969">妈妈奶粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=970">1段奶粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=971">2段奶粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=972">3段奶粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=973">4段奶粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=974">羊奶粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=975">特殊配方</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=976">成人奶粉</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=961">营养辅食</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=977">婴幼营养</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=978">初乳</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=979">米粉/菜粉</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=980">果泥/果汁</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=981">肉松/饼干</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=982">辅食</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=983">孕期营养</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=984">清火/开胃</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=985">面条/粥</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=962">尿裤湿巾</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=986">品牌尿裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=987">新生儿</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=988">S号</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=989">M号</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=990">L号</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=991">XL/XXL号</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=992">裤型尿裤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=993">湿巾</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=994">尿布/尿垫</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=995">成人尿裤</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=963">喂养用品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=996">奶瓶</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=997">奶嘴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=998">吸奶器</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=999">暖奶/消毒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1000">餐具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1001">水具</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1002">牙胶/安抚</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1003">辅助用品</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=964">洗护用品</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1004">宝宝护肤</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1005">洗浴用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1006">洗发沐浴</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1007">清洁用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1008">护理用品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1009">妈妈护肤</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=965">童车童床</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1010">婴儿推车</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1011">餐椅摇椅</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1012">婴儿床</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1013">学步车</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1014">三轮车</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1015">自行车</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1016">电动车</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1017">健身车</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1018">安全座椅</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=966">服饰寝居</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1019">婴儿外出服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1020">婴儿内衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1021">婴儿礼盒</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1022">婴儿鞋帽袜</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1023">安全防护</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1024">家居床品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1025">其他</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=967">妈妈专区</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1026">包/背婴带</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1027">妈妈护理</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1028">产后塑身</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1029">孕妇内衣</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1030">防辐射服</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1031">孕妇装</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1032">孕妇食品</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1033">妈妈美容</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li style="display:none;" class="even" cat_id="1037">
                        <div class="class">
                            <h4><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1037">虚拟充值</a></h4>
              <span class="recommend-class">
                                          <a title="手机充值" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1044">手机充值</a>
                            <a title="游戏点卡" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1045">游戏点卡</a>
                            <a title="QQ充值" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1046">QQ充值</a>
                            <a title="电影票" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1047">电影票</a>
                            <a title="演唱会" href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1048">演唱会</a>
                                          </span><span class="arrow"></span> </div>
                        <div cat_menu_id="1037" class="sub-class">
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1041">充值</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1044">手机充值</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1042">游戏</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1045">游戏点卡</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1046">QQ充值</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                <h3><a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1043">票务</a></h3>
                                </dt>
                                <dd class="goods-class">
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1047">电影票</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1048">演唱会</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1049">话剧/歌剧/音乐剧</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1050">体育赛事</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1051">舞蹈芭蕾</a>
                                    <a href="http://localhost/shopnc/shop/index.php?act=search&amp;op=index&amp;cate_id=1052">戏曲综艺</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                </ul>
            </div>    </div>
        <ul class="site-menu">
            <li><a href="http://localhost/shopnc/shop">首页</a></li>
            <li><a href="http://localhost/shopnc/shop/index.php?act=show_groupbuy&amp;op=index"> 团购</a></li>
            <li><a href="http://localhost/shopnc/shop/index.php?act=brand&amp;op=index"> 品牌</a></li>
            <li><a href="http://localhost/shopnc/shop/index.php?act=pointprod&amp;op=index"> 积分中心</a></li>
            <li><a href="http://127.0.0.1/cms" target="_blank">门户</a></li>
            <li><a href="http://127.0.0.1/circle" target="_blank">圈子</a></li>
            <li><a href="http://127.0.0.1/microshop" target="_blank">微商城</a></li>
        </ul>
    </div>
</nav>
<!-- PublicNavLayout End-->
<div class="nch-breadcrumb-layout">
</div>
<style type="text/css">
    .public-top-layout, .head-app, .head-search-bar, .head-user-menu, .public-nav-layout, .nch-breadcrumb-layout, #faq {
        display: none !important;
    }
    .public-head-layout {
        margin: 10px auto -10px auto;
    }
    .wrapper {
        width: 1000px;
    }
    #footer {
        border-top: none!important;
        padding-top: 30px;
    }
</style>
<div class="nc-login-layout">
    <div class="nc-login">
        <div class="nc-login-title">
            <h3>用户注册</h3>
        </div>
        <div class="nc-login-content">
            <form action="http://localhost/shopnc/shop/index.php?act=login&amp;op=usersave" method="post" id="register_form">
                <input type="hidden" value="1-t6T2rZQqNyKo_t2eocyh3tmf1VseP" name="formhash">        <dl>
                <dt>用户名</dt>
                <dd style="min-height:54px;">
                    <input type="text" title="3-20位字符，可由中文、英文、数字及“_”、“-”组成" class="text tip error" name="user_name" id="user_name">
                    <label style="display: none;"></label>
                    <label for="user_name" class="error">用户名不能为空</label></dd>
            </dl>
                <dl>
                    <dt>设置密码</dt>
                    <dd style="min-height:54px;">
                        <input type="password" title="6-16位字符，可由英文、数字及标点符号组成" class="text tip error" name="password" id="password">
                        <label style="display: none;"></label>
                        <label for="password" class="error">密码不能为空</label></dd>
                </dl>
                <dl>
                    <dt>确认密码</dt>
                    <dd style="min-height:54px;">
                        <input type="password" title="请再次输入您的密码" class="text tip error" name="password_confirm" id="password_confirm">
                        <label style="display: none;"></label>
                        <label for="password_confirm" class="error">请再次输入您的密码</label></dd>
                </dl>
                <dl>
                    <dt>邮箱</dt>
                    <dd style="min-height:54px;">
                        <input type="text" title="请输入常用的邮箱，将用来找回密码、接受订单通知等" class="text tip error" name="email" id="email">
                        <label style="display: none;"></label>
                        <label for="email" class="error">电子邮箱不能为空</label></dd>
                </dl>
                <dl>
                    <dt>验证码</dt>
                    <dd style="min-height:54px;">
                        <input type="text" title="请输入验证码，不区分大小写" size="10" maxlength="4" class="text w50 fl tip error" name="captcha" id="captcha">
                        <img border="0" class="fl ml5" id="codeimage" name="codeimage" title="" src="http://localhost/shopnc/shop/index.php?act=seccode&amp;op=makecode&amp;nchash=b62a356c&amp;t=0.0487262735215821"> <a onclick="javascript:document.getElementById('codeimage').src='index.php?act=seccode&amp;op=makecode&amp;nchash=b62a356c&amp;t=' + Math.random();" class="ml5" href="javascript:void(0)">看不清，换一张</a>
                        <label style="display: none;"></label>
                        <label for="captcha" class="error">请输入验证码</label></dd>
                </dl>
                <dl>
                    <dt>&nbsp;</dt>
                    <dd>
                        <input type="button" title="立即注册" class="submit" value="立即注册" id="Submit">
                        <input type="checkbox" checked="checked" value="1" id="clause" class="vm ml10 valid" name="agree">
                        <span class="ml5" for="clause">阅读并同意<a title="阅读并同意" class="agreement" target="_blank" href="http://localhost/shopnc/shop/index.php?act=document&amp;op=index&amp;code=agreement">服务协议</a></span>
                        <label></label>
                    </dd>
                </dl>
                <input type="hidden" name="ref_url" value="">
                <input type="hidden" value="b62a356c" name="nchash">
            </form>
            <div class="clear"></div>
        </div>
        <div class="nc-login-bottom"></div>
    </div>
    <div class="nc-login-left">
        <h3>注册之后您可以</h3>
        <ol>
            <li class="ico05"><i></i>购买商品支付订单</li>
            <li class="ico01"><i></i>申请开店销售商品</li>
            <li class="ico03"><i></i>空间好友推送分享</li>
            <li class="ico02"><i></i>收藏商品关注店铺</li>
            <li class="ico06"><i></i>商品咨询服务评价</li>
            <li class="ico04"><i></i>安全交易诚信无忧</li>
            <div class="clear"></div>
        </ol>
        <h3 class="mt20">如果您是本站用户</h3>
        <div class="nc-login-now mt10"><span class="ml20">我已经注册过帐号，立即<a class="register" title="" href="index.php?act=login&amp;ref_url=http%3A%2F%2Flocalhost%2Fshopnc%2Fshop%2F">登录</a></span><span>或是<a href="index.php?act=login&amp;op=forget_password" class="forget">找回密码？</a></span></div>
    </div>
</div>
<script charset="utf-8" src="http://localhost/shopnc/data/resource/js/jquery.poshytip.min.js" type="text/javascript"></script>
<script>
    //注册表单提示
    $('.tip').poshytip({
        className: 'tip-yellowsimple',
        showOn: 'focus',
        alignTo: 'target',
        alignX: 'center',
        alignY: 'top',
        offsetX: 0,
        offsetY: 5,
        allowTipHover: false
    });

    //注册表单验证
    $(function(){
        $('#Submit').click(function(){
            if($("#register_form").valid()){
                ajaxpost('register_form', '', '', 'onerror');
            } else{
                document.getElementById('codeimage').src='http://localhost/shopnc/shop/index.php?act=seccode&amp;op=makecode&amp;nchash=b62a356c&amp;t=' + Math.random();
            }
        });
        jQuery.validator.addMethod("lettersonly", function(value, element) {
            return this.optional(element) || /^[^:%,'\*\"\s\&lt;\&gt;\&amp;]+$/i.test(value);
        }, "Letters only please");
        jQuery.validator.addMethod("lettersmin", function(value, element) {
            return this.optional(element) || ($.trim(value.replace(/[^\u0000-\u00ff]/g,"aa")).length&gt;=3);
        }, "Letters min please");
        jQuery.validator.addMethod("lettersmax", function(value, element) {
            return this.optional(element) || ($.trim(value.replace(/[^\u0000-\u00ff]/g,"aa")).length&lt;=15);
        }, "Letters max please");
        $("#register_form").validate({
            errorPlacement: function(error, element){
                var error_td = element.parent('dd');
                error_td.find('label').hide();
                error_td.append(error);
            },
            submitHandler:function(form){
                ajaxpost('register_form', '', '', 'onerror')
            },
            rules : {
                user_name : {
                    required : true,
                    lettersmin : true,
                    lettersmax : true,
                    lettersonly : true,
                    remote   : {
                        url :'index.php?act=login&amp;op=check_member&amp;column=ok',
                        type:'get',
                        data:{
                            user_name : function(){
                                return $('#user_name').val();
                            }
                        }
                    }
                },
                password : {
                    required : true,
                    minlength: 6,
                    maxlength: 20
                },
                password_confirm : {
                    required : true,
                    equalTo  : '#password'
                },
                email : {
                    required : true,
                    email    : true,
                    remote   : {
                        url : 'index.php?act=login&amp;op=check_email',
                        type: 'get',
                        data:{
                            email : function(){
                                return $('#email').val();
                            }
                        }
                    }
                },
                captcha : {
                    required : true,
                    minlength: 4,
                    remote   : {
                        url : 'index.php?act=seccode&amp;op=check&amp;nchash=b62a356c',
                        type: 'get',
                        data:{
                            captcha : function(){
                                return $('#captcha').val();
                            }
                        }
                    }
                },
                agree : {
                    required : true
                }
            },
            messages : {
                user_name : {
                    required : '用户名不能为空',
                    lettersmin : '用户名必须在3-15个字符之间',
                    lettersmax : '用户名必须在3-15个字符之间',
                    lettersonly: '用户名不能包含敏感字符',
                    remote	 : '该用户名已经存在'
                },
                password  : {
                    required : '密码不能为空',
                    minlength: '密码长度应在6-20个字符之间',
                    maxlength: '密码长度应在6-20个字符之间'
                },
                password_confirm : {
                    required : '请再次输入您的密码',
                    equalTo  : '两次输入的密码不一致'
                },
                email : {
                    required : '电子邮箱不能为空',
                    email    : '这不是一个有效的电子邮箱',
                    remote	 : '该电子邮箱已经存在'
                },
                captcha : {
                    required : '请输入验证码',
                    minlength: '验证码不正确',
                    remote	 : '验证码不正确'
                },
                agree : {
                    required : '请阅读并同意该协议'
                }
            }
        });
    });
</script><div class="tip-yellowsimple"><div class="tip-inner tip-bg-image"></div><div class="tip-arrow tip-arrow-top tip-arrow-right tip-arrow-bottom tip-arrow-left"></div></div><div class="tip-yellowsimple"><div class="tip-inner tip-bg-image"></div><div class="tip-arrow tip-arrow-top tip-arrow-right tip-arrow-bottom tip-arrow-left"></div></div><div class="tip-yellowsimple"><div class="tip-inner tip-bg-image"></div><div class="tip-arrow tip-arrow-top tip-arrow-right tip-arrow-bottom tip-arrow-left"></div></div><div class="tip-yellowsimple"><div class="tip-inner tip-bg-image"></div><div class="tip-arrow tip-arrow-top tip-arrow-right tip-arrow-bottom tip-arrow-left"></div></div><div class="tip-yellowsimple"><div class="tip-inner tip-bg-image"></div><div class="tip-arrow tip-arrow-top tip-arrow-right tip-arrow-bottom tip-arrow-left"></div></div><div id="faq">
    <div class="wrapper">
        <ul>
            <li> <dl class="s1">
                <dt>
                    帮助中心      </dt>
                <dd><i></i><a title="我要买" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=9"> 我要买 </a></dd>
                <dd><i></i><a title="如何注册成为会员" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=6"> 如何注册成为会员 </a></dd>
                <dd><i></i><a title="积分细则" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=39"> 积分细则 </a></dd>
                <dd><i></i><a title="忘记密码" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=8"> 忘记密码 </a></dd>
                <dd><i></i><a title="查看已购买商品" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=10"> 查看已购买商品 </a></dd>
            </dl></li>
            <li> <dl class="s2">
                <dt>
                    店主之家      </dt>
                <dd><i></i><a title="如何申请开店" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=15"> 如何申请开店 </a></dd>
                <dd><i></i><a title="查看售出商品" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=12"> 查看售出商品 </a></dd>
                <dd><i></i><a title="商城商品推荐" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=14"> 商城商品推荐 </a></dd>
                <dd><i></i><a title="如何管理店铺" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=11"> 如何管理店铺 </a></dd>
                <dd><i></i><a title="如何发货" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=13"> 如何发货 </a></dd>
            </dl></li>
            <li> <dl class="s3">
                <dt>
                    支付方式      </dt>
                <dd><i></i><a title="公司转账" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=30"> 公司转账 </a></dd>
                <dd><i></i><a title="在线支付" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=17"> 在线支付 </a></dd>
                <dd><i></i><a title="邮局汇款" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=29"> 邮局汇款 </a></dd>
                <dd><i></i><a title="如何注册支付宝" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=16"> 如何注册支付宝 </a></dd>
                <dd><i></i><a title="分期付款" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=28"> 分期付款 </a></dd>
            </dl></li>
            <li> <dl class="s4">
                <dt>
                    售后服务      </dt>
                <dd><i></i><a title="退换货流程" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=32"> 退换货流程 </a></dd>
                <dd><i></i><a title="退款申请" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=34"> 退款申请 </a></dd>
                <dd><i></i><a title="退换货政策" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=31"> 退换货政策 </a></dd>
                <dd><i></i><a title="返修/退换货" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=33"> 返修/退换货 </a></dd>
                <dd><i></i><a title="联系卖家" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=26"> 联系卖家 </a></dd>
            </dl></li>
            <li> <dl class="s5">
                <dt>
                    客服中心      </dt>
                <dd><i></i><a title="商品发布" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=20"> 商品发布 </a></dd>
                <dd><i></i><a title="会员修改个人资料" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=19"> 会员修改个人资料 </a></dd>
                <dd><i></i><a title="修改收货地址" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=21"> 修改收货地址 </a></dd>
                <dd><i></i><a title="会员修改密码" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=18"> 会员修改密码 </a></dd>
            </dl></li>
            <li> <dl class="s6">
                <dt>
                    关于我们      </dt>
                <dd><i></i><a title="联系我们" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=23"> 联系我们 </a></dd>
                <dd><i></i><a title="合作及洽谈" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=25"> 合作及洽谈 </a></dd>
                <dd><i></i><a title="关于ShopNC" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=22"> 关于ShopNC </a></dd>
                <dd><i></i><a title="招聘英才" href="http://localhost/shopnc/shop/index.php?act=article&amp;op=show&amp;article_id=24"> 招聘英才 </a></dd>
            </dl></li>
        </ul>
    </div>
</div>
<div class="wrapper" id="footer">
    <p><a href="http://localhost/shopnc/shop">首页</a>
        | <a href="http://127.0.0.1/shop/index.php?act=article&amp;article_id=24">招聘英才</a>
        | <a href="http://127.0.0.1/shop/index.php?act=article&amp;article_id=25">合作及洽谈</a>
        | <a href="http://127.0.0.1/shop/index.php?act=article&amp;article_id=23">联系我们</a>
        | <a href="http://127.0.0.1/shop/index.php?act=article&amp;article_id=22">关于ShopNC</a>
    </p>
    Copyright 2007-2014 ShopNC Inc.,All rights reserved.<br>
    Powered by <span class="vol"><font class="b">Shop</font><font class="o">NC</font></span> <br>
</div>
<script src="http://localhost/shopnc/data/resource/js/jquery.cookie.js" type="text/javascript"></script>
<script src="http://localhost/shopnc/data/resource/js/perfect-scrollbar.min.js" type="text/javascript"></script>
<script src="http://localhost/shopnc/data/resource/js/jquery.mousewheel.js" type="text/javascript"></script>
<script language="javascript">
    $(function(){
        // Membership card
        $('[nctype="mcard"]').membershipCard({type:'shop'});
    });
</script>
<div style="width:0px;height:0px;position:absolute;top:-999px;left:-999px;"><object width="1px" height="1px" id="erroralert" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"><param value="always" name="AllowScriptAccess"><param value="http://tongji.baidu.com/logstat.swf" name="movie"><embed width="1px" height="1px" align="middle" type="application/x-shockwave-flash" src="http://tongji.baidu.com/logstat.swf" allowscriptaccess="always" name="erroralert"></object></div><div style="width:0px;height:0px;position:absolute;top:-999px;left:-999px;"><object width="1px" height="1px" id="erroralert1" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"><param value="always" name="AllowScriptAccess"><param value="http://tongji.baidu.com/logstat1.swf" name="movie"><embed width="1px" height="1px" align="middle" type="application/x-shockwave-flash" src="http://tongji.baidu.com/logstat1.swf" allowscriptaccess="always" name="erroralert1"></object></div>

</body></html>