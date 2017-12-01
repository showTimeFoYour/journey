<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/1
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>我的订单 - 蚂蜂窝</title>


    <script type="text/javascript">
        window.Env = {"status":0,"WWW_HOST":"www.mafengwo.cn","IMG_HOST":"images.mafengwo.net","P_HOST":"passport.mafengwo.cn","P_HTTP":"https:\/\/passport.mafengwo.cn","PAGELET_HTTP":"http:\/\/pagelet.mafengwo.cn","JS_HOST":"js.mafengwo.net","UID":83699873,"CSTK":"49fa05775216aba622ead246b2220bfa_c14a8ef2eaa7a3270b3914df18f9334d","GOOGLE_MAP_KEY":"AIzaSyD-Su0x_rPy1xehlMBcMyTqWkU49Bk53nQ","TONGJI_HOST":"tongji.mafengwo.cn"};
    </script>

    <link href="http://css.mafengwo.net/css/cv/css+base:css+jquery.suggest:css+plugins:css+plugins+jquery.jgrowl:css+other+popup:css+app+topbar_v2^alw^1498629963.css" rel="stylesheet" type="text/css"/>



    <script language="javascript" src="http://js.mafengwo.net/js/cv/js+jquery-1.8.1.min:js+global+json2:js+M+Module:js+M+M:js+M+Log:js+m.statistics:js+advert+inspector^alw^1511419343.js" type="text/javascript" crossorigin="anonymous"></script>

</head>
<body>

<div class="topBar">
    <div class="topBarC">
        <div class="logo"><a title="蚂蜂窝自由行" href="/">蚂蜂窝自由行</a></div>
        <div class="t_nav">
            <ul id="pnl_nav" data-cs-t="headnav_wo">
                <li data-cs-p="index">
                    <strong class="t"><a href="/">首页</a></strong>
                </li>
                <li data-cs-t="wenda" data-cs-p="wenda">
                    <strong class="t"><a data-cs-p="from_wo_nav" href="/wenda/">问答</a></strong>
                </li>
                <li data-cs-t="things" data-cs-p="things">
                    <strong class="t"><a data-cs-p="from_wo_nav" href="/mall/things.php">蚂蜂窝周边</a></strong>
                </li>
                <li data-cs-p="together">
                    <strong class="t"><a href="/together/">结伴</a></strong>
                </li>
                <li data-cs-p="group">
                    <strong class="t"><a href="/group/">小组</a></strong>
                </li>
                <li data-cs-p="mall">
                    <strong class="t"><a href="/mall/">蜂蜜兑换</a></strong>
                </li>
                <li class="drop" data-cs-p="other">
                    <strong class="t"><a href="/app/hun.php">更多<b></b></a></strong>
                    <div class="c">

                        <a href="/focus/" target="_blank">真人兽</a>

                        <a href="/school/" target="_blank">蚂蜂窝高校</a>
                        <a href="/photo_pk/pk.php" target="_blank">照片PK</a>
                        <a href="/auction/" target="_blank">蚂蜂窝拍卖行</a>
                        <a href="/mall/virtual_goods.php" target="_blank">道具商店</a>
                        <a href="/radio/" target="_blank">旅行电台</a>
                        <a href="/club/" target="_blank">蜂首聚乐部</a>
                        <a href="/home/vip_show.php" target="_blank">VIP</a>
                        <a href="/game/wager.php" target="_blank">分歧终端机</a>
                    </div>
                </li>
            </ul>
        </div>
        <div class="t_search">
            <form method="GET" action="/search/s.php" name="search">
                <input type="text" class="key" value="" name="q" id="word">
                <input type="submit" value="" class="btn">
            </form>
        </div>

        <div class="t_info">
            <div data-pagelet id="pagelet-block-86b0b22a540d48d21c50a3fc4ee4a17d" class="" data-api="apps:user:pagelet:pageViewHeadInfo" data-params="{&quot;type&quot;:2}" data-async="1" data-controller="/js/pageletcommon/pageHeadUserInfoWWWDark"></div>
        </div>
    </div>
</div>

<link href="http://css.mafengwo.net/css/cv/css+global+dialog:css+home_new2015+home_extra:css+home_new2015+avatar:css+home_new2015+home_tags:css+sales+sales-order.v2^YldS^1511418422.css" rel="stylesheet" type="text/css"/>



<div class="container">
    <div class="banner">

        <style>
            .invisible {opacity:0.01; filter: alpha(opacity=1);}
            .invisible .maps-container {opacity:0.01; filter: alpha(opacity=1);}
        </style>

        <div class="banner_img banner_extra" id="_j_banner">
        </div>
        <div class="tags_bar second_tags_bar">
            <div class="center clearfix">
                <div class="MAvatar clearfix">
                    <div class="MAvaImg flt1">
                        <img width="120" height="120" alt="" src="http://b3-q.mafengwo.net/s10/M00/48/B5/wKgBZ1kAeeiAXfnNAABXZKqrvCE90.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90">
                    </div>
                    <div class="MAvaEasyWord flt1">
                        <span class="MAvaName">雾灯天</span>
                        <span class="MAvaLevel">Lv.1</span>
                    </div>
                </div>
                <ul class="flt2">
                    <li><a class="tags_link" href="/u/83699873.html" title="我的窝">我的窝</a></li>
                    <li><a class="tags_link" href="/u/83699873/note.html" title="我的游记">我的游记</a></li>
                    <li><a class="tags_link" href="/wenda/u/83699873/answer.html" title="我的问答">我的问答</a></li>
                    <li id="_j_pathnav"><a class="tags_link" href="/path/83699873.html" title="我的足迹">我的足迹</a></li>
                    <li><a class="tags_link" href="/u/83699873/review.html" title="我的点评">我的点评</a></li>
                    <li><a class="tags_link" href="/u/83699873/together.html" title="我的结伴">我的结伴</a></li>
                    <li class="more ">
                        <span class="tags_link" role="button" title="更多" style="cursor:default">更多<i class="MDownMore"></i></span>
                        <div class="tags_more_list">
                            <ul>
                                <li data-cs-t="go_to_activity"><a href="/indexactivity/index.php" title="我的活动" data-cs-p="activity"><i class="ico_activity"></i><span>我的活动</span></a></li>
                                <li><a href="/home/g/my.php" title="我的小组"><i class="ico_group"></i><span>我的小组</span></a></li>
                                <li><a href="/plan/fav.php" title="我的收藏"><i class="ico_collect"></i><span>我的收藏</span></a></li>
                                <li><a href="/sales/order.php" title="我的订单"><i class="ico_order"></i><span>我的订单</span></a></li>
                                <li><a href="/sales/coupon.php" title="我的优惠券"><i class="ico_ticket"></i><span>我的优惠券</span></a></li>
                                <li><a href="/mall/my_exchange.php" title="我的兑换"><i class="ico_exchange"></i><span>我的兑换</span></a></li>
                                <li><a href="/rent/order/boss?flag=-1" title="我的当地人"><i class="ico_rent"></i><span>我的当地人</span></a></li>
                                <li><a href="/flight/passengers.php" title="常用信息"><i class="ico_information"></i><span>常用信息</span></a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="wrapper">
    <div class="home-extra">
        <div class="s-menu">
            <ul class="clearfix">
                <li><a href="/indexactivity/index.php">我的活动<i></i></a></li>
                <li><a href="/home/g/my.php">我的小组<i></i></a></li>
                <li><a href="/plan/fav.php">我的收藏<i></i></a></li>
                <li class="on"><a>我的订单<i></i></a></li>
                <li><a href="/sales/coupon.php">我的优惠券<i></i></a></li>
                <li><a href="/mall/my_exchange.php">我的兑换<i></i></a></li>
                <li><a href="/plan/route.php">我的路线<i></i></a></li>
                <li><a href="/flight/passengers.php">我的常用信息<i></i></a></li>
            </ul>
        </div>
        <ul class="filter clearfix">


        </ul>
        <div class="order-table">
            <table class="order-hd">
                <tbody>
                <tr>
                    <th class="td-info">订单信息</th>
                    <th class="td-type">类型</th>
                    <th class="td-date">行程日期</th>
                    <th class="td-cost">支付金额</th>
                    <th class="td-status">订单状态</th>
                    <th class="td-operate">操作</th>
                </tr>
                </tbody>
            </table>
            <div class="order-bd">
                <table data-id="2118847201711285287243" data-type="sales" class="order-item">
                    <caption>
                <span class="num">订单号：  ${item.id}
                    </span>
                        </span>
                        <span class="time">下单时间：${item.created}</span>

                        <span class="telphone">联系电话：4006588799转1589</span>
                    </caption>
                    <tbody>
                    <tr>
                        <td class="td-info">
                            <a class="pro-img" href="http://www.mafengwo.cn/item/${item.id}.html" target="_blank">
                                <img
                                        src="${item.images}"
                                >
                            </a>
                            <div class="pro-detail">
                                <p class="title" title="${item.title}"><a href="http://www.mafengwo.cn/item/${item.id}.html" target="_blank">${item.title}</a></p>
                                <p class="sub" title="${item.title}${item.created}">${item.title}${item.created}</p>
                            </div>
                        </td>
                        <td class="td-type">${item.status}</td>
                        <td class="td-date">
                            <p>出行日期：${item.created}</p>
                        </td>
                        <td class="td-cost">
                            <strong>${item.price}</strong>                                    </td>
                        <td class="td-status">
                            <p
                                    class="s4"
                            >
                                ${item.status}
                            </p>
                        </td>
                        <td class="td-operate">
                            <a
                                    class="btn"
                                    href="https://payitf.mafengwo.cn/order/pay_v2/gopay?order_id=51171128003906803&_refer=list" target="_blank">
                                去支付
                            </a>

                            <a
                                    data-japp="client"
                                    data-jappconf="webim"
                                    data-webim-type="2"
                                    data-webim-orderid="2118847201711285287243"

                                    data-track="_refer=list"
                                    href="javascript:void(0);"

                                    class="btn"
                            >
                                联系客服
                            </a>

                            <a
                                    data-japp="order_cancel"
                                    data-jappconf="order"
                                    data-order_id="2118847201711285287243"
                                    data-busi_type="sales"

                                    data-track="_refer=list"
                                    href="javascript:void(0);"

                            >
                                取消订单
                            </a>

                            <a
                                    href="http://www.mafengwo.cn/order_center/index/view_order?order_id=2118847201711285287243&amp;busi_type=sales&_refer=list" target="_blank">
                                查看订单
                            </a>

                        </td>
                    </tr>
                    </tbody>
                </table>

            </div>
            <div data-pagelet id="_j_joinlist_pagination" class="" data-api=":pageletcommon:paginationApi" data-params="{&quot;total&quot;:&quot;3&quot;,&quot;size&quot;:&quot;10&quot;,&quot;currpage&quot;:&quot;1&quot;,&quot;index_num&quot;:10,&quot;tmpl&quot;:&quot;pagination.tpl&quot;,&quot;status&quot;:&quot;0&quot;,&quot;page_item_class&quot;:&quot;_j_pageitem&quot;}" data-controller="/js/pageletcommon/ControllerPagination" data-controller_data="{&quot;page_item_class&quot;:&quot;_j_pageitem&quot;}"></div>
            <div class="notes simsun">
                <p>由于预订时忘记登录蚂蜂窝而没能记录到的订单，您可以在蚂蜂窝合作伙伴的网站查询，入口：</p>
                <p><a href="http://www.booking.com/index.zh-cn.html?aid=391337" target="_blank"><img src="http://images.mafengwo.net/images/hotel/ota/booking_w100h20_2x_2.png" width="100" height="20"></a><a href="http://www.agoda.com/zh-cn?cid=1610250" target="_blank"><img src="http://images.mafengwo.net/images/hotel/ota/agoda_w100h20_2x_2.png" width="100" height="20"></a><a href="http://hotels.ctrip.com/?sid=449929" target="_blank"><img src="http://images.mafengwo.net/images/hotel/ota/ctrip_w100h20_2x_2.png" width="100" height="20"></a><a href="http://www.elong.com/?banid=pcmafengwo&amp;fparam=21" target="_blank"><img src="http://images.mafengwo.net/images/hotel/ota/elong_w100h20_2x.png" width="100" height="20"></a><a href="http://www.youyudf.com" target="_blank"><img src="http://images.mafengwo.net/images/hotel/ota/youyu_w100h20_2x.png" width="100" height="20"></a><a href="http://www.mafengwo.cn/hotel_zx/order/search.php" target="_blank"><img src="http://images.mafengwo.net/images/hotel/ota/mafengwo_w100h20_2x_3.png" width="100" height="20"></a></p>
            </div>
        </div>
    </div>
</div>




<script>
    // 攻略点击报数
    $('.review-guide a').click(function() {
        var $btn = $(this),
            url  = $btn.attr('href');

        mfwPageEvent('sales', 'order_center', {
            click: '点评攻略'
        });

        setTimeout(function() {
            window.open(url);
        }, 0);

        return false;
    });
    // PV
    if (window.Env.status == 4) {
        mfwPageEvent('sales', 'page', {
            pageName: '我的订单-待点评'
        });
    }
</script>



<link href="http://css.mafengwo.net/css/mfw-footer.css?1493174418" rel="stylesheet" type="text/css"/>

<div id="footer">
    <div class="ft-content">
        <div class="ft-info clearfix">
            <dl class="ft-info-col ft-info-intro">
                <dt>中国领先的自由行服务平台</dt>
                <dd>覆盖全球200多个国家和地区</dd>
                <dd><strong>100,000,000</strong> 位旅行者</dd>
                <dd><strong>920,000</strong> 家国际酒店</dd>
                <dd><strong>21,000,000</strong> 条真实点评</dd>
                <dd><strong>382,000,000</strong> 次攻略下载</dd>
                <dd><a class="highlight" href="http://www.mafengwo.cn/activity/sales_report2015/index" target="_blank">中国旅游行业第一部“玩法”</a></dd>
            </dl>
            <dl class="ft-info-col ft-info-about">
                <dt>关于我们</dt>
                <dd><a href="http://www.mafengwo.cn/s/about.html" rel="nofollow">关于蚂蜂窝</a></dd>
                <dd><a href="http://www.mafengwo.cn/s/property.html" rel="nofollow">网络信息侵权通知指引</a></dd>
                <dd><a href="http://www.mafengwo.cn/s/private.html" rel="nofollow">隐私政策</a></dd>
                <dd><a href="http://www.mafengwo.cn/s/agreement.html" rel="nofollow">服务协议</a></dd>
                <dd><a href="http://www.mafengwo.cn/s/contact.html" rel="nofollow">联系我们</a></dd>
                <dd><a class="joinus highlight" title="蚂蜂窝团队招聘" target="_blank" href="http://www.mafengwo.cn/s/hr.html" rel="nofollow">加入蚂蜂窝</a></dd>
            </dl>
            <dl class="ft-info-col ft-info-service">
                <dt>旅行服务</dt>
                <dd>
                    <ul class="clearfix">
                        <li><a target="_blank" href="http://www.mafengwo.cn/gonglve/">旅游攻略</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/hotel/">酒店预订</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/sales/">旅游特价</a></li>
                        <li><a target="_blank" href="http://zuche.mafengwo.cn/">国际租车</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/wenda/">旅游问答</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/insure/">旅游保险</a></li>
                        <li><a target="_blank" href="http://z.mafengwo.cn">旅游指南</a></li>
                        <li><a target="_blank" href="http://huoche.mafengwo.cn">订火车票</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/travel-news/">旅游资讯</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/app/intro/gonglve.php">APP下载</a></li>
                        <li><a target="_blank" href="http://www.mafengwo.cn/sales/alliance.php" class="highlight">全球供应商入驻</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="ft-info-col ft-info-qrcode">
                <dd>
                    <span class="ft-qrcode-tejia"></span>
                    <p>蚂蜂窝良品<br>官方服务号</p>
                </dd>
                <dd>
                    <span class="ft-qrcode-weixin"></span>
                    <p>蚂蜂窝自由行<br>订阅号</p>
                </dd>
            </dl>
            <dl class="ft-info-social">
                <dt>向崇尚自由的加勒比海盗致敬！</dt>
                <dd>
                    <a class="ft-social-weibo" target="_blank" href="http://weibo.com/mafengwovip" rel="nofollow"><i class="ft-social-icon"></i></a>
                    <a class="ft-social-qqt" target="_blank" href="http://t.qq.com/mafengwovip" rel="nofollow" ><i class="ft-social-icon"></i></a>
                    <a class="ft-social-qzone" target="_blank" href="http://1213600479.qzone.qq.com/" rel="nofollow"><i class="ft-social-icon"></i></a>
                </dd>
            </dl>
        </div>

        <div class="ft-copyright">
            <div class="ft-safety">
                <a class="s-a" target="_blank" href="https://search.szfw.org/cert/l/CX20140627008255008321" id="___szfw_logo___"></a>
                <a class="s-b" href="https://ss.knet.cn/verifyseal.dll?sn=e130816110100420286o93000000&ct=df&a=1&pa=787189" target="_blank" rel="nofollow"></a>
                <a class="s-c" href="http://www.itrust.org.cn/Home/Index/itrust_certifi/wm/1669928206.html" target="_blank" rel="nofollow"></a>
            </div>
            <a href="http://www.mafengwo.cn"><i class="ft-mfw-logo"></i></a>
            <p>© 2017 Mafengwo.cn <a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">京ICP备11015476号</a> 京公网安备110105013401号 <a href="http://images.mafengwo.net/images/about/icp.jpg" target="_blank" rel="nofollow">京ICP证110318号</a></p>
            <p><a href="http://images.mafengwo.net/images/about/licence.jpg" target="_blank" rel="nofollow">营业执照</a> 新出网证(京)字242号 全国统一客服电话：<span class="highlight">4006-345-678</span><a target="_blank" href="http://www.mafengwo.cn/s/sitemap.html" class="highlight m_l_10">网站地图</a></p>
        </div>
    </div>
</div>



<script language="javascript" type="text/javascript">
    if (typeof M !== "undefined" && typeof M.loadResource === "function") {
        M.loadResource("http://js.mafengwo.net/js/cv/js+pageletcommon+pageHeadUserInfoWWWDark:js+pageletcommon+ControllerPagination:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+ACnzzGaLog:js+ARecruit^YVNX^1493174421.js");
    }
</script>

</body>
</html>
