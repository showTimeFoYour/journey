<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/2
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>${search_title}- 蚂蜂窝</title>

    <script type="text/javascript">
        window.Env = {
            "hotel_mdd_info": {
                "lat": 37.463819,
                "lng": 121.447926,
                "zoom": 0
            },
            "country_mddid": 0,
            "is_cnmain": false,
            "search_keyword": "w",
            "search_seo_type": null,
            "search_type": null,
            "search_req_k": null,
            "search_stid": null,
            "search_req_f": null,
            "search_req_d": null,
            "search_kt": 1,
            "search_page": 1,
            "search_total": 750,
            "search_seid": null,
            "is_async_site_search": 1,
            "WWW_HOST": "www.mafengwo.cn",
            "IMG_HOST": "images.mafengwo.net",
            "P_HOST": "passport.mafengwo.cn",
            "P_HTTP": "https:\/\/passport.mafengwo.cn",
            "PAGELET_HTTP": "http:\/\/pagelet.mafengwo.cn",
            "JS_HOST": "js.mafengwo.net",
            "UID": 83699873,
            "CSTK": "a759b3de4838859e46a63a76391132ea_309cbd71f0fc6c688645212c31967542",
            "GOOGLE_MAP_KEY": "AIzaSyD-Su0x_rPy1xehlMBcMyTqWkU49Bk53nQ",
            "TONGJI_HOST": "tongji.mafengwo.cn"
        };
    </script>

    <link href="http://css.mafengwo.net/css/cv/css+base:css+jquery.suggest:css+plugins:css+plugins+jquery.jgrowl:css+other+popup^a1Q^1493174418.css"
          rel="stylesheet" type="text/css"/>

    <link href="http://css.mafengwo.net/css/mfw-search/mfw-search.css?1493174418" rel="stylesheet" type="text/css"/>

    <script language="javascript"
            src="http://js.mafengwo.net/js/cv/js+jquery-1.8.1.min:js+global+json2:js+M+Module:js+M+M:js+M+Log:js+m.statistics:js+advert+inspector^alw^1511419343.js"
            type="text/javascript" crossorigin="anonymous"></script>

</head>

<body>
<div class="s-head">
    <div class="wid clearfix">
        <div class="s-head-logo">
            <a href="/"></a>
        </div>
        <div class="searchbar">
            <div class="search-wrapper">
                <div class="search-input"><input name="q" type="text" id="_j_search_input" value="w"
                                                 placeholder="搜目的地/攻略/酒店/自由行商品" autocomplete="off"></div>
            </div>
            <div class="search-button">
                <a role="button" href="javascript:" id="_j_search_button"><i class="icon-search"></i></a>
            </div>
        </div>
        <div data-pagelet id="pagelet-block-d07a26646c62ba3e4d8d4d598d3e0155" class=""
             data-api="apps:user:pagelet:pageViewHeadInfo" data-params="{&quot;type&quot;:1}" data-async="1"
             data-controller="/js/pageletcommon/pageHeadUserInfoWWWNormal"></div>
    </div>
</div>

<div class="mfw-search-main" id="_j_mfw_search_main">
    <div class="s-nav">
        <div class="wid">
            <div class="nav-list clearfix">
                <a href="http://www.mafengwo.cn/search/s.php?q=w&t=&seid=&mxid=&mid=&mname=&kt=1"
                   class="on _j_search_link" data-is-redirect="1" data-search-category="all">全部</a>
                <a href="http://www.mafengwo.cn/search/s.php?q=w&t=mdd&seid=&mxid=&mid=&mname=&kt=1"
                   class=" _j_search_link" data-is-redirect="1" data-search-category="mdd">目的地</a>
                <!--		<a href="http://www.mafengwo.cn/search/s.php?q=w&t=article_gonglve&seid=&mxid=&mid=&mname=&kt=1" class=" _j_search_link" data-is-redirect="1" data-search-category="gonglve">旅游攻略</a>
                --> <a href="http://www.mafengwo.cn/search/s.php?q=w&t=poi&seid=&mxid=&mid=&mname=&kt=1"
                       class=" _j_search_link" data-is-redirect="1" data-search-category="poi">景点</a><!--
						<a href="http://www.mafengwo.cn/search/s.php?q=w&t=cate&seid=&mxid=&mid=&mname=&kt=1" class=" _j_search_link" data-is-redirect="1" data-search-category="cate">美食</a>-->
                <a href="http://www.mafengwo.cn/search/s.php?q=w&t=hotel&seid=&mxid=&mid=&mname=&kt=1"
                   class=" _j_search_link" data-is-redirect="1" data-search-category="hotel">酒店</a><!--
						<a href="http://www.mafengwo.cn/search/s.php?q=w&t=sales&seid=&mxid=&mid=&mname=&kt=1" class=" _j_search_link" data-is-redirect="1" data-search-category="sales">自由行商城</a>-->

                <!--	<a href="http://www.mafengwo.cn/search/s.php?q=w&t=wenda&seid=&mxid=&mid=&mname=&kt=1" class=" _j_search_link" data-is-redirect="1" data-search-category="wenda">问答</a>
                    <a href="http://www.mafengwo.cn/search/s.php?q=w&t=info&seid=&mxid=&mid=&mname=&kt=1" class=" _j_search_link" data-is-redirect="1" data-search-category="info">游记</a>
                    <a href="http://www.mafengwo.cn/search/s.php?q=w&t=user&seid=&mxid=&mid=&mname=&kt=1" class=" _j_search_link" data-is-redirect="1" data-search-category="user">找人</a>
                --><br/></div>
        </div>
    </div>
    <div class="wid clearfix">
        <div class="ser-nums">
            <div class='sr-nums'>
                <p class='ser-result-primary'>
                    以下是为您找到“${search_title}”相关结果${search_tot}条</p>
            </div>
        </div>

        <div class="flt1 ser-lt" id="_j_search_result_left">
            <div class="_j_search_section" data-category="poi">
                <div class="clearfix ser-title">
                    <h2>
                        <a href="http://www.mafengwo.cn/search/s.php?q=w&t=poi&kt=1" class="_j_search_link"
                           data-is-redirect="1">景点</a>
                    </h2>
                    <!--	<a href="http://www.mafengwo.cn/search/s.php?q=w&t=poi&kt=1" class="_j_search_link" data-is-redirect="1">更多景点 &gt;&gt;</a>
                    --></div>
                <div class="att-list">
                    <ul>

                        <c:foreach>
                            <li>
                                <div class="clearfix">
                                    <div class="flt1">
                                        <a href="http://www.mafengwo.cn/poi/6046931.html" target="_blank"
                                           class="_j_search_link"><img src="${search_list_place.images}"
                                                                       style="width:150px;height:90px;"></a>
                                    </div>
                                    <div class="ct-text ">
                                        <h3>
                                            <a href="http://www.mafengwo.cn/poi/6046931.html" target="_blank"
                                               class="_j_search_link">景点 - 宁静岛 W Maldives Retreat & Spa</a>
                                        </h3>
                                        <p class="seg-desc">
                                            ---喜达屋集团旗下赫赫有名的六星级奢华海岛。一流的酒店设施、高私密性的客房及不接受13岁以下儿童入住的规定都意味着这是一座专属于情...</p>
                                        <ul class="seg-info-list clearfix">
                                            <li>
                                                <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/187211.html"
                                                   target="_blank" class="_j_search_link">亚洲-马尔代夫-北阿里</a>
                                            </li>
                                            <li>
                                                <a href="http://www.mafengwo.cn/poi/6046931.html" target="_blank"
                                                   class="_j_search_link">点评(68)</a>
                                            </li>
                                            <li>
                                                <a href="http://www.mafengwo.cn/poi/6046931.html" target="_blank"
                                                   class="_j_search_link">游记(30)</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>

                        </c:foreach>


                    </ul>
                </div>
            </div>

            <div class="heg30"></div>
            <div class="_j_search_section" data-category="hotel">
                <div class="clearfix ser-title">
                    <h2>
                        <a href="http://www.mafengwo.cn/search/s.php?q=w&t=hotel&kt=1" class="_j_search_link"
                           data-is-redirect="1">酒店</a>
                    </h2>
                    <a href="http://www.mafengwo.cn/search/s.php?q=w&t=hotel&kt=1" class="_j_search_link"
                       data-is-redirect="1">更多酒店 &gt;&gt;</a>
                </div>

                <div class="hot-list">
                    <div class="hot-about clearfix _j_hotel" data-id="5531779">
                        <div class="flt1">
                            <a href="http://www.mafengwo.cn/hotel/5531779.html" target="_blank"
                               class="_j_search_link"><img src="${hotel_images}" style="width:150px;height:90px;"></a>
                        </div>
                        <div class="ct-text">
                            <h3>
                                <a href="http://www.mafengwo.cn/hotel/5531779.html" target="_blank"
                                   class="_j_search_link">三亚3<span class="sr-keyword">W</span>海景酒店</a>
                            </h3>
                            <div class="seg-desc">
                                <p>地址:三亚三亚湾路通海二巷23号 </p>
                                <p>评分:9.0 很棒</p>
                            </div>
                            <ul class="seg-info-list clearfix">
                                <li>
                                    <a href="http://www.mafengwo.cn/hotel/175271/" target="_blank"
                                       class="_j_search_link">海南-三亚-天涯区</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/hotel/5531779.html" target="_blank"
                                       class="_j_search_link">点评(175)</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/hotel/5531779.html" target="_blank"
                                       class="_j_search_link">游记(1)</a>
                                </li>
                                <li class="frt _j_hotel_ota"></li>
                            </ul>
                        </div>
                    </div>
                    <!--
                    <div class="hot-about clearfix _j_hotel" data-id="90658">
                        <div class="flt1">
                            <a href="http://www.mafengwo.cn/hotel/90658.html" target="_blank" class="_j_search_link"><img src="http://b3-q.mafengwo.net/s6/M00/05/C4/wKgB4lNnkx2AI3k6AAJC4RvF54863.jpeg?imageMogr2%2Fthumbnail%2F%21300x180r%2Fgravity%2FCenter%2Fcrop%2F%21300x180%2Fquality%2F90" style="width:150px;height:90px;"></a>
                        </div>
                        <div class="ct-text">
                            <h3>
                    <a href="http://www.mafengwo.cn/hotel/90658.html" target="_blank" class="_j_search_link">好莱坞<span class="sr-keyword">W</span>酒店&nbsp;W Hollywood</a>
                </h3>
                            <div class="seg-desc">
                                <p>地址:6250 Hollywood Boulevard 6250 Hollywood Boulevard</p>
                                <p>评分:8.0 很好</p>
                            </div>
                            <ul class="seg-info-list clearfix">
                                <li>
                                    <a href="http://www.mafengwo.cn/hotel/18663/" target="_blank" class="_j_search_link">美国-好莱坞</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/hotel/90658.html" target="_blank" class="_j_search_link">点评(17)</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/hotel/90658.html" target="_blank" class="_j_search_link">游记(2)</a>
                                </li>
                                <li class="frt _j_hotel_ota"></li>
                            </ul>
                        </div>
                    </div>-->

                    <!--<div class="hot-about clearfix _j_hotel" data-id="5441772">
                        <div class="flt1">
                            <a href="http://www.mafengwo.cn/hotel/5441772.html" target="_blank" class="_j_search_link"><img src="http://b2-q.mafengwo.net/s6/M00/D5/48/wKgB4lMDi2SAY9c3AAFVDFdO3E470.jpeg?imageMogr2%2Fthumbnail%2F%21300x180r%2Fgravity%2FCenter%2Fcrop%2F%21300x180%2Fquality%2F90" style="width:150px;height:90px;"></a>
                        </div>
                        <div class="ct-text">
                            <h3>
                    <a href="http://www.mafengwo.cn/hotel/5441772.html" target="_blank" class="_j_search_link">苏梅岛<span class="sr-keyword">W</span>度假酒店&nbsp;W Koh Samui</a>
                </h3>
                            <div class="seg-desc">
                                <p>地址:4/1 Moo1 Tambol Maenam, Koh Samui 4/1 Moo1 Tambol Maenam, Koh Samui</p>
                                <p>评分:8.0 很好</p>
                            </div>
                            <ul class="seg-info-list clearfix">
                                <li>
                                    <a href="http://www.mafengwo.cn/hotel/181475/" target="_blank" class="_j_search_link">泰国-苏梅岛-湄南区</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/hotel/5441772.html" target="_blank" class="_j_search_link">点评(205)</a>
                                </li>
                                <li>
                                    <a href="http://www.mafengwo.cn/hotel/5441772.html" target="_blank" class="_j_search_link">游记(83)</a>
                                </li>
                                <li class="frt _j_hotel_ota"></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>--> </div>
            </div>
                    <!--旅游攻略-->
                    <!--
                                        <div class="heg30"></div>
                                        <div class="_j_search_section" data-category="article_gonglve">
                                            <div class="clearfix ser-title">
                                                <h2>
                                        <a href="http://www.mafengwo.cn/search/s.php?q=w&t=article_gonglve" target="_blank" class="_j_search_link" data-is-redirect="1">旅游攻略</a>
                                    </h2>
                                                <a href="http://www.mafengwo.cn/search/s.php?q=w&t=article_gonglve" target="_blank" class="_j_search_link" data-is-redirect="1">查看更多旅游攻略 &gt;&gt;</a>
                                            </div>
                                            <div class="att-list">
                                                <ul>
                                                    <li>
                                                        <div class="clearfix">
                                                            <div class="flt1">
                                                                <a href="http://www.mafengwo.cn/gonglve/ziyouxing/12948.html" target="_blank" class="_j_search_link"><img src="http://c3-q.mafengwo.net/s10/M00/42/09/wKgBZ1kmlxOARruAAAEOYOFEwMc22.jpeg?imageMogr2%2Fthumbnail%2F%21300x180r%2Fgravity%2FCenter%2Fcrop%2F%21300x180%2Fquality%2F90" style="width:150px;height:90px;"></a>
                                                            </div>
                                                            <div class="ct-text ">
                                                                <h3>
                                                        <a href="http://www.mafengwo.cn/gonglve/ziyouxing/12948.html" target="_blank" class="_j_search_link">马尔代夫选岛 | 人均预算1.5<span class="sr-keyword">W</span>，哪个岛最合适</a>
                                                    </h3>
                                                                <p class="seg-desc">马尔代夫，海岛度假的兰博基尼，无论是景色还是度假酒店，都有着其他海岛无法比拟的特色和地位。根据预算选岛是非常重要的，...</p>
                                                                <ul class="seg-info-list clearfix">
                                                                    <li>
                                                                        <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10101.html" target="_blank" class="_j_search_link">亚洲-马尔代夫</a>
                                                                    </li>
                                                                    <li>
                                                                        浏览(19689)
                                                                    </li>

                                                                    <li>
                                                                        2017-06-01 13:34:47
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="clearfix">
                                                            <div class="flt1">
                                                                <a href="http://www.mafengwo.cn/gonglve/ziyouxing/37741.html" target="_blank" class="_j_search_link"><img src="http://n3-q.mafengwo.net/s10/M00/E9/3C/wKgBZ1oL3Q6AWZhcAADlTLR2eUA19.jpeg?imageMogr2%2Fthumbnail%2F%21300x180r%2Fgravity%2FCenter%2Fcrop%2F%21300x180%2Fquality%2F90" style="width:150px;height:90px;"></a>
                                                            </div>
                                                            <div class="ct-text ">
                                                                <h3>
                                                        <a href="http://www.mafengwo.cn/gonglve/ziyouxing/37741.html" target="_blank" class="_j_search_link">马代<span class="sr-keyword">W</span>宁静岛四宗“最”，国内明星大咖首选！</a>
                                                    </h3>
                                                                <p class="seg-desc"><span class="sr-keyword">W</span>宁静岛与其他马尔代夫世外桃源岛不同的是，<span class="sr-keyword">W</span>宁静岛将都市的光环照进</p>
                                                                <ul class="seg-info-list clearfix">
                                                                    <li>
                                                                        <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10101.html" target="_blank" class="_j_search_link">亚洲-马尔代夫</a>
                                                                    </li>
                                                                    <li>
                                                                        浏览(794)
                                                                    </li>

                                                                    <li>
                                                                        2017-11-15 15:25:33
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="clearfix">
                                                            <div class="flt1">
                                                                <a href="http://www.mafengwo.cn/gonglve/ziyouxing/33114.html" target="_blank" class="_j_search_link"><img src="http://p4-q.mafengwo.net/s10/M00/A0/A2/wKgBZ1nuuqOAaWLAAAHLkV9M2E435.jpeg?imageMogr2%2Fthumbnail%2F%21300x180r%2Fgravity%2FCenter%2Fcrop%2F%21300x180%2Fquality%2F90" style="width:150px;height:90px;"></a>
                                                            </div>
                                                            <div class="ct-text ">
                                                                <h3>
                                                        <a href="http://www.mafengwo.cn/gonglve/ziyouxing/33114.html" target="_blank" class="_j_search_link">马尔代夫<span class="sr-keyword">W</span>宁静岛，屡获全球殊荣的奢华度假酒店代表！</a>
                                                    </h3>
                                                                <p class="seg-desc">马尔代夫“一岛一酒店”的特色，让大多数游客都会认真挑选一座海岛慢慢品味。如何在上百座精致岛屿中挑选一座适合自己的？详...</p>
                                                                <ul class="seg-info-list clearfix">
                                                                    <li>
                                                                        <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/17751.html" target="_blank" class="_j_search_link">马尔代夫-宁静岛</a>
                                                                    </li>
                                                                    <li>
                                                                        浏览(2146)
                                                                    </li>

                                                                    <li>
                                                                        2017-10-25 11:07:46
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                    -->
                    <!--<div class="heg30"></div>
                    <div class="_j_search_section" data-category="info">
                        <div class="clearfix ser-title">
                            <h2>
                    <a href="http://www.mafengwo.cn/search/s.php?q=w&amp;t=info" target="_blank" class="_j_search_link" data-is-redirect="1">游记</a>
                </h2>
                            <a href="http://www.mafengwo.cn/search/s.php?q=w&amp;t=info" target="_blank" class="_j_search_link" data-is-redirect="1">查看更多游记 &gt;&gt;</a>
                        </div>
                        <div class="att-list">
                            <ul>
                                <li>
                                    <div class="clearfix">
                                        <div class="flt1">
                                            <a href="http://www.mafengwo.cn/i/6748808.html" target="_blank" class="_j_search_link"><img src="http://b1-q.mafengwo.net/s9/M00/6D/A8/wKgBs1haMAGAaHlCAAn78RTtxHE49.jpeg?imageMogr2%2Fthumbnail%2F%21300x180r%2Fgravity%2FCenter%2Fcrop%2F%21300x180%2Fquality%2F90" style="width:150px;height:90px;"></a>
                                        </div>
                                        <div class="ct-text ">
                                            <h3>
                                    <a href="http://www.mafengwo.cn/i/6748808.html" target="_blank" class="_j_search_link"><span class="sr-keyword">W</span>&amp;<span class="sr-keyword">W</span> <span class="sr-keyword">W</span>edding @ BALI</a>
                                </h3>
                                            <p class="seg-desc">从一开始就想旅行结婚，摆脱传统婚礼的各种麻烦。 决定好这个后就开始找地方，找婚礼公司.. 地点在马代和 巴厘岛 中间选择， ...</p>
                                            <ul class="seg-info-list clearfix">
                                                <li>
                                                    <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10460.html" target="_blank" class="_j_search_link">印度尼西亚-巴厘岛</a>
                                                </li>
                                                <li>
                                                    浏览(1047)
                                                </li>
                                                <li>
                                                    评论(2)
                                                </li>
                                                <li>
                                                    作者:
                                                    <a href="http://www.mafengwo.cn/u/13133776.html" target="_blank" class="_j_search_link">Yijian</a>
                                                </li>
                                                <li>
                                                    2017年03月12日
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clearfix">
                                        <div class="flt1">
                                            <a href="http://www.mafengwo.cn/i/7645514.html" target="_blank" class="_j_search_link"><img src="http://p2-q.mafengwo.net/s10/M00/53/A3/wKgBZ1nLBOWAJlQbAAjOpttPo8M08.jpeg?imageMogr2%2Fthumbnail%2F%21300x180r%2Fgravity%2FCenter%2Fcrop%2F%21300x180%2Fquality%2F90" style="width:150px;height:90px;"></a>
                                        </div>
                                        <div class="ct-text ">
                                            <h3>
                                    <a href="http://www.mafengwo.cn/i/7645514.html" target="_blank" class="_j_search_link"><span class="sr-keyword">W</span> Hotel</a>
                                </h3>
                                            <p class="seg-desc">2014.02.01 （第251篇） <span class="sr-keyword">W</span>酒店是圣·瑞吉斯、威斯汀、喜来登等豪华酒店的姊妹品牌。 <span class="sr-keyword">W</span> 酒店是喜达屋旗下的全球现代奢华时尚生...</p>
                                            <ul class="seg-info-list clearfix">
                                                <li>
                                                    <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10819.html" target="_blank" class="_j_search_link">台湾-台北</a>
                                                </li>
                                                <li>
                                                    浏览(441)
                                                </li>
                                                <li>
                                                    作者:
                                                    <a href="http://www.mafengwo.cn/u/19337532.html" target="_blank" class="_j_search_link">铁人17号</a>
                                                </li>
                                                <li>
                                                    2017年09月27日
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="clearfix">
                                        <div class="flt1">
                                            <a href="http://www.mafengwo.cn/i/3513350.html" target="_blank" class="_j_search_link"><img src="http://c3-q.mafengwo.net/s8/M00/9C/BD/wKgBpVYKMY2AEUXcAAHbcw9f60U38.jpeg?imageMogr2%2Fthumbnail%2F%21300x180r%2Fgravity%2FCenter%2Fcrop%2F%21300x180%2Fquality%2F90" style="width:150px;height:90px;"></a>
                                        </div>
                                        <div class="ct-text ">
                                            <h3>
                                    <a href="http://www.mafengwo.cn/i/3513350.html" target="_blank" class="_j_search_link">LOVE IN <span class="sr-keyword">W</span></a>
                                </h3>
                                            <p class="seg-desc"> [表情]Love in <span class="sr-keyword">W</span>[表情] 考虑去麻袋已经好几年了，但一直没有时间[表情]。后来想着就借着麻袋去[表情]拍婚纱照吧[表情]，但又...</p>
                                            <ul class="seg-info-list clearfix">
                                                <li>
                                                    <a href="http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10101.html" target="_blank" class="_j_search_link">亚洲-马尔代夫</a>
                                                </li>
                                                <li>
                                                    浏览(707)
                                                </li>
                                                <li>
                                                    评论(5)
                                                </li>
                                                <li>
                                                    作者:
                                                    <a href="http://www.mafengwo.cn/u/68287900.html" target="_blank" class="_j_search_link">65443224</a>
                                                </li>
                                                <li>
                                                    2015年09月29日
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>



                </div>-->
                    <div>&nbsp;</div>
                    <!-- 搜索分页-->
                    <div class="asd" id="_j_search_pagination" style="display:none;">
                    </div>
                </div>


            </div>


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
                            <dd><a class="highlight" href="http://www.mafengwo.cn/activity/sales_report2015/index"
                                   target="_blank">中国旅游行业第一部“玩法”</a></dd>
                        </dl>
                        <dl class="ft-info-col ft-info-about">
                            <dt>关于我们</dt>
                            <dd><a href="http://www.mafengwo.cn/s/about.html" rel="nofollow">关于蚂蜂窝</a></dd>
                            <dd><a href="http://www.mafengwo.cn/s/property.html" rel="nofollow">网络信息侵权通知指引</a></dd>
                            <dd><a href="http://www.mafengwo.cn/s/private.html" rel="nofollow">隐私政策</a></dd>
                            <dd><a href="http://www.mafengwo.cn/s/agreement.html" rel="nofollow">服务协议</a></dd>
                            <dd><a href="http://www.mafengwo.cn/s/contact.html" rel="nofollow">联系我们</a></dd>
                            <dd><a class="joinus highlight" title="蚂蜂窝团队招聘" target="_blank"
                                   href="http://www.mafengwo.cn/s/hr.html" rel="nofollow">加入蚂蜂窝</a></dd>
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
                                    <li><a target="_blank" href="http://www.mafengwo.cn/app/intro/gonglve.php">APP下载</a>
                                    </li>
                                    <li><a target="_blank" href="http://www.mafengwo.cn/sales/alliance.php"
                                           class="highlight">全球供应商入驻</a></li>
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
                                <a class="ft-social-weibo" target="_blank" href="http://weibo.com/mafengwovip"
                                   rel="nofollow"><i class="ft-social-icon"></i></a>
                                <a class="ft-social-qqt" target="_blank" href="http://t.qq.com/mafengwovip"
                                   rel="nofollow"><i class="ft-social-icon"></i></a>
                                <a class="ft-social-qzone" target="_blank" href="http://1213600479.qzone.qq.com/"
                                   rel="nofollow"><i class="ft-social-icon"></i></a>
                            </dd>
                        </dl>
                    </div>

                    <div class="ft-copyright">
                        <div class="ft-safety">
                            <a class="s-a" target="_blank" href="https://search.szfw.org/cert/l/CX20140627008255008321"
                               id="___szfw_logo___"></a>
                            <a class="s-b"
                               href="https://ss.knet.cn/verifyseal.dll?sn=e130816110100420286o93000000&ct=df&a=1&pa=787189"
                               target="_blank" rel="nofollow"></a>
                            <a class="s-c" href="http://www.itrust.org.cn/Home/Index/itrust_certifi/wm/1669928206.html"
                               target="_blank" rel="nofollow"></a>
                        </div>
                        <a href="http://www.mafengwo.cn"><i class="ft-mfw-logo"></i></a>
                        <p>© 2017 Mafengwo.cn <a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">京ICP备11015476号</a>
                            京公网安备110105013401号 <a href="http://images.mafengwo.net/images/about/icp.jpg" target="_blank"
                                                  rel="nofollow">京ICP证110318号</a></p>
                        <p><a href="http://images.mafengwo.net/images/about/licence.jpg" target="_blank" rel="nofollow">营业执照</a>
                            新出网证(京)字242号 全国统一客服电话：<span class="highlight">4006-345-678</span><a target="_blank"
                                                                                                href="http://www.mafengwo.cn/s/sitemap.html"
                                                                                                class="highlight m_l_10">网站地图</a>
                        </p>
                    </div>
                </div>
            </div>

        </div>
            <!-- 意见反馈依托的页面模板 -->
            <script type="text/x-jquery-tmpl" id="_j_tmpl_feedback">
<div class="FeedBackA">
    <div class="FeedTit">意见反馈</div>
    <div class="FeedDesc">我们倾听你的声音</div>
    <div class="FeedForm" id="feedback-form">
        <textarea id="feedback-textarea" placeholder="欢迎提出宝贵的意见和建议。抱歉我们无法逐一回复，但我们会认真阅读，你的支持是对我们最大的鼓励和帮助"></textarea>
    </div>
    <div class="FeedAct" id="feedback-act"><a href="#" class="_j_submitfeedback" data-url="">提 交</a><span id="feedback-errinfo" class="err hide">内容不能为空！</span></div>
</div>


            </script>

            <script language="javascript" type="text/javascript">
                if (typeof M !== "undefined" && typeof M.loadResource === "function") {
                    M.loadResource("http://js.mafengwo.net/js/cv/js+Dropdown:js+pageletcommon+pageHeadUserInfoWWWNormal:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+M+module+MesSearchEvent:js+SiteSearch:js+search+header:js+M+module+Pagination:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+dialog+alert:js+M+module+TopTip:js+hotel+mfwmap+mfwmap-util:js+hotel+mfwmap+mfwmap-event:js+hotel+mfwmap+mfwmap-runtime-google:js+hotel+mfwmap+mfwmap-runtime-amap:js+hotel+mfwmap+mfwmap-runtime-leaflet:js+hotel+mfwmap+mfwmap:js+M+module+Storage:js+xdate:js+hotel+module+ModuleProvider:js+hotel+module+BookingDate:js+letterTip:js+search+index:js+M+module+PageAdmin:js+M+module+Cookie:js+M+module+ResourceKeeper:js+jquery.jgrowl.min:js+AMessage:js+M+module+FrequencyVerifyControl:js+M+module+FrequencySystemVerify:js+ALogin:js+AFeedback:js+ACnzzGaLog:js+ARecruit:js+ALazyLoad^alRQ^1506283324.js");
                }
            </script>

        </div>
    </div>
</div>
</body>

</html>
