<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/1
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>${sessionUser.username}的窝 - 蚂蜂窝</title>


    <script type="text/javascript">
        window.Env = {"profileSetting":{"banner_cover":"","banner_cover_url":"","banner_map_type":0,"bg_type":0,"cover_pic":0},"profileConfig":{"page_bg_type_config":[{"bodyClass":"bg0"},{"bodyClass":"bg2"},{"bodyClass":"bg3"},{"bodyClass":"bg4"},{"bodyClass":"bg1"}],"banner_map_type_config":[{"name":"\u7ecf\u5178","thumbnail":"\/images\/home_new2015\/m1.gif","className":"maps-theme-default","regionFill":[{"fill":"#cccccc","fill-opacity":"0.1"},{"fill":"#ffe5a6","fill-opacity":"0.9"},{"fill":"#ffd267","fill-opacity":"0.9"},{"fill":"#ffba14","fill-opacity":"0.9"},{"fill":"#ff9000","fill-opacity":"0.9"}]},{"name":"\u8dc3\u5165\u84dd\u8272\u661f\u7403","thumbnail":"\/images\/home_new2015\/m2.gif","className":"maps-theme-blue","regionFill":[{"fill":"#ffffff","fill-opacity":"0.8"},{"fill":"#4ea3d2","fill-opacity":"0.8"},{"fill":"#509ed3","fill-opacity":"0.8"},{"fill":"#3589cf","fill-opacity":"0.8"},{"fill":"#0066cc","fill-opacity":"0.8"}]},{"name":"\u65c5\u884c\u8ba9\u4e16\u754c\u6709\u5149","thumbnail":"\/images\/home_new2015\/m3.gif","className":"maps-theme-black","regionFill":[{"fill":"#2d2e32","fill-opacity":"1"},{"fill":"#ffcf59","fill-opacity":"1"},{"fill":"#ffbd21","fill-opacity":"1"},{"fill":"#ff9c00","fill-opacity":"1"},{"fill":"#fd703a","fill-opacity":"1"}]},{"name":"\u5927\u822a\u6d77\u65f6\u4ee3","thumbnail":"\/images\/home_new2015\/m4.gif","className":"maps-theme-green","regionFill":[{"fill":"#a3dde0","fill-opacity":"0.8"},{"fill":"#77d9dc","fill-opacity":"0.8"},{"fill":"#35c9cb","fill-opacity":"0.8"},{"fill":"#0eb0b2","fill-opacity":"0.8"},{"fill":"#039ba4","fill-opacity":"0.8"}]},{"name":"PINK PUNK","thumbnail":"\/images\/home_new2015\/m5.gif","className":"maps-theme-red","regionFill":[{"fill":"#ffffff","fill-opacity":"0.8"},{"fill":"#f7ae9c","fill-opacity":"0.8"},{"fill":"#f7ae9c","fill-opacity":"0.8"},{"fill":"#e46547","fill-opacity":"0.8"},{"fill":"#db4c2b","fill-opacity":"0.8"}]}]},"china_mdd_lng_lat":[],"world_mdd_lng_lat":[],"target_uid":68417719,"WWW_HOST":"www.mafengwo.cn","IMG_HOST":"images.mafengwo.net","P_HOST":"passport.mafengwo.cn","P_HTTP":"https:\/\/passport.mafengwo.cn","PAGELET_HTTP":"http:\/\/pagelet.mafengwo.cn","JS_HOST":"js.mafengwo.net","UID":0,"CSTK":"1fb14defe5a64346f07835b2b784388b_b508eab4e94f8bfbbeabd2d099ce321b","GOOGLE_MAP_KEY":"AIzaSyD-Su0x_rPy1xehlMBcMyTqWkU49Bk53nQ","TONGJI_HOST":"tongji.mafengwo.cn"};
    </script>

    <link href="css/css+app+topbar_v2^alw^1498629963.css" rel="stylesheet" type="text/css"/>


    <link href="css/css+path+jvectormap-2.0.1^ali^1509971336.css" rel="stylesheet" type="text/css"/>

    <script language="javascript" src="js/js+advert+inspector^alw^1511419343.js" type="text/javascript" crossorigin="anonymous"></script>

</head>
<body>

<div class="topBar">
    <div class="topBarC">
        <div class="logo"><a title="蚂蜂窝自由行" href="http://localhost:8081/journey/">蚂蜂窝自由行</a></div>
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
        <%--搜索 功能 待定 --%>
        <div class="t_search">
            <form method="GET" action="/search/s.php" name="search">
                <input type="text" class="key" value="" name="q" id="word">
                <input type="submit" value="" class="btn">
            </form>
        </div>

        <div class="t_info">
            <div data-pagelet id="pagelet-block-8a9062b59ecf6ab8329ae9811f3cb9c6" class="" data-api="apps:user:pagelet:pageViewHeadInfo" data-params="{&quot;type&quot;:2}" data-async="1" data-controller="/js/pageletcommon/pageHeadUserInfoWWWDark"></div>
        </div>
    </div>
</div>


<style>

    ._j_coverpic_wrap{display:none}
    .cover_with_pic ._j_coverpic_wrap{display:block}
    .cover_with_pic .maps-container{display:none}
    .MUsersBehavior {margin-top:0}
    .map_default_start .btn-addPath {position:static}
    .hold_cat {
        user-select:none;
        -webkit-user-select:none;
        -moz-user-select:none;
        -ms-user-select: none;
        -khtml-user-select: none;
    }

</style>
<div class="main">
    <div class="banner">

        <style>
            .invisible {opacity:0.01; filter: alpha(opacity=1);}
            .invisible .maps-container {opacity:0.01; filter: alpha(opacity=1);}
        </style>

        <div class="index_banner" id="_j_banner">
            <input type="hidden" id="_j_worldmapdata" data-map="[]" />
            <input type="hidden" id="_j_chinamapdata" data-map="[]" />
            <input type="hidden" id="_j_districtdata" data-district="{&quot;17344&quot;:{&quot;name&quot;:&quot;\u5317\u7f8e\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17359&quot;:{&quot;name&quot;:&quot;\u5b89\u63d0\u74dc\u548c\u5df4\u5e03\u8fbe&quot;,&quot;ename&quot;:&quot;Antigua and Barbuda&quot;,&quot;pinyin&quot;:&quot;antiguahebabuda&quot;},&quot;19764&quot;:{&quot;name&quot;:&quot;\u963f\u9c81\u5df4&quot;,&quot;ename&quot;:&quot;Aruba&quot;,&quot;pinyin&quot;:&quot;aluba&quot;},&quot;17369&quot;:{&quot;name&quot;:&quot;\u5df4\u5df4\u591a\u65af&quot;,&quot;ename&quot;:&quot;Barbados&quot;,&quot;pinyin&quot;:&quot;babaduosi&quot;},&quot;17374&quot;:{&quot;name&quot;:&quot;\u767e\u6155\u5927&quot;,&quot;ename&quot;:&quot;Bermuda&quot;,&quot;pinyin&quot;:&quot;baimuda&quot;},&quot;27550&quot;:{&quot;name&quot;:&quot;\u8377\u5170\u52a0\u52d2\u6bd4\u533a&quot;,&quot;ename&quot;:&quot;&quot;,&quot;pinyin&quot;:&quot;helanjialebiqu&quot;},&quot;17366&quot;:{&quot;name&quot;:&quot;\u5df4\u54c8\u9a6c&quot;,&quot;ename&quot;:&quot;Bahamas&quot;,&quot;pinyin&quot;:&quot;bahama&quot;},&quot;17371&quot;:{&quot;name&quot;:&quot;\u4f2f\u5229\u5179&quot;,&quot;ename&quot;:&quot;Belize&quot;,&quot;pinyin&quot;:&quot;bolizi&quot;},&quot;17386&quot;:{&quot;name&quot;:&quot;\u52a0\u62ff\u5927&quot;,&quot;ename&quot;:&quot;Canada&quot;,&quot;pinyin&quot;:&quot;jianada&quot;},&quot;17396&quot;:{&quot;name&quot;:&quot;\u54e5\u65af\u8fbe\u9ece\u52a0&quot;,&quot;ename&quot;:&quot;Costa Rica&quot;,&quot;pinyin&quot;:&quot;gesidalijia&quot;},&quot;17398&quot;:{&quot;name&quot;:&quot;\u53e4\u5df4&quot;,&quot;ename&quot;:&quot;Cuba&quot;,&quot;pinyin&quot;:&quot;guba&quot;},&quot;19765&quot;:{&quot;name&quot;:&quot;\u5e93\u62c9\u7d22&quot;,&quot;ename&quot;:&quot;Cura\u00e7ao&quot;,&quot;pinyin&quot;:&quot;kulasuo&quot;},&quot;17570&quot;:{&quot;name&quot;:&quot;\u591a\u7c73\u5c3c\u514b&quot;,&quot;ename&quot;:&quot;Dominica&quot;,&quot;pinyin&quot;:&quot;duominike&quot;},&quot;17405&quot;:{&quot;name&quot;:&quot;\u591a\u7c73\u5c3c\u52a0&quot;,&quot;ename&quot;:&quot;Dominican Republic&quot;,&quot;pinyin&quot;:&quot;duominijia&quot;},&quot;17426&quot;:{&quot;name&quot;:&quot;\u683c\u6797\u7eb3\u8fbe&quot;,&quot;ename&quot;:&quot;Grenada&quot;,&quot;pinyin&quot;:&quot;gelinnada&quot;},&quot;17428&quot;:{&quot;name&quot;:&quot;\u5371\u5730\u9a6c\u62c9&quot;,&quot;ename&quot;:&quot;Guatemala&quot;,&quot;pinyin&quot;:&quot;weidimala&quot;},&quot;17434&quot;:{&quot;name&quot;:&quot;\u6d2a\u90fd\u62c9\u65af&quot;,&quot;ename&quot;:&quot;Honduras&quot;,&quot;pinyin&quot;:&quot;hongdulasi&quot;},&quot;17433&quot;:{&quot;name&quot;:&quot;\u6d77\u5730&quot;,&quot;ename&quot;:&quot;Haiti&quot;,&quot;pinyin&quot;:&quot;haidi&quot;},&quot;17444&quot;:{&quot;name&quot;:&quot;\u7259\u4e70\u52a0&quot;,&quot;ename&quot;:&quot;Jamaica&quot;,&quot;pinyin&quot;:&quot;yamaijia&quot;},&quot;17572&quot;:{&quot;name&quot;:&quot;\u5723\u57fa\u8328\u548c\u5c3c\u7ef4\u65af&quot;,&quot;ename&quot;:&quot;Saint Kitts and Nevis&quot;,&quot;pinyin&quot;:&quot;shengjiciheniweisi&quot;},&quot;17467&quot;:{&quot;name&quot;:&quot;\u5723\u5362\u897f\u4e9a&quot;,&quot;ename&quot;:&quot;Saint Lucia&quot;,&quot;pinyin&quot;:&quot;shengluxiya&quot;},&quot;19410&quot;:{&quot;name&quot;:&quot;\u6cd5\u5c5e\u5723\u9a6c\u4e01&quot;,&quot;ename&quot;:&quot;Saint Martin (French part)&quot;,&quot;pinyin&quot;:&quot;fashushengmading&quot;},&quot;17481&quot;:{&quot;name&quot;:&quot;\u8499\u7279\u585e\u62c9\u7279&quot;,&quot;ename&quot;:&quot;Montserrat&quot;,&quot;pinyin&quot;:&quot;mengtesailate&quot;},&quot;17477&quot;:{&quot;name&quot;:&quot;\u58a8\u897f\u54e5&quot;,&quot;ename&quot;:&quot;Mexico&quot;,&quot;pinyin&quot;:&quot;moxige&quot;},&quot;17492&quot;:{&quot;name&quot;:&quot;\u5c3c\u52a0\u62c9\u74dc&quot;,&quot;ename&quot;:&quot;Nicaragua&quot;,&quot;pinyin&quot;:&quot;nijialagua&quot;},&quot;17502&quot;:{&quot;name&quot;:&quot;\u5df4\u62ff\u9a6c&quot;,&quot;ename&quot;:&quot;Panama&quot;,&quot;pinyin&quot;:&quot;banama&quot;},&quot;17898&quot;:{&quot;name&quot;:&quot;\u6ce2\u591a\u9ece\u5404&quot;,&quot;ename&quot;:&quot;Puerto Rico&quot;,&quot;pinyin&quot;:&quot;boduolige&quot;},&quot;17515&quot;:{&quot;name&quot;:&quot;\u8428\u5c14\u74e6\u591a&quot;,&quot;ename&quot;:&quot;El Salvador&quot;,&quot;pinyin&quot;:&quot;saerwaduo&quot;},&quot;19766&quot;:{&quot;name&quot;:&quot;\u8377\u5c5e\u5723\u9a6c\u4e01&quot;,&quot;ename&quot;:&quot;Sint Maarten (Dutch part)&quot;,&quot;pinyin&quot;:&quot;heshushengmading&quot;},&quot;17539&quot;:{&quot;name&quot;:&quot;\u7279\u7acb\u5c3c\u8fbe\u548c\u591a\u5df4\u54e5&quot;,&quot;ename&quot;:&quot;Trinidad and Tobago&quot;,&quot;pinyin&quot;:&quot;telinidaheduobage&quot;},&quot;27551&quot;:{&quot;name&quot;:&quot;\u7f8e\u56fd\u672c\u571f\u5916\u5c0f\u5c9b\u5c7f&quot;,&quot;ename&quot;:&quot;United States Minor Outlying Islands&quot;,&quot;pinyin&quot;:&quot;meiguobentuwaixiaodaoyu&quot;},&quot;17549&quot;:{&quot;name&quot;:&quot;\u7f8e\u56fd&quot;,&quot;ename&quot;:&quot;United States of America&quot;,&quot;pinyin&quot;:&quot;meiguo&quot;},&quot;17571&quot;:{&quot;name&quot;:&quot;\u5723\u6587\u68ee\u7279\u548c\u683c\u6797\u7eb3\u4e01\u65af&quot;,&quot;ename&quot;:&quot;Saint Vincent and the Grenadines&quot;,&quot;pinyin&quot;:&quot;shengwensentehegelinnadingsi&quot;},&quot;17555&quot;:{&quot;name&quot;:&quot;\u82f1\u5c5e\u7ef4\u4eac\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Virgin Islands(British)&quot;,&quot;pinyin&quot;:&quot;yingshuweijingqundao&quot;},&quot;17899&quot;:{&quot;name&quot;:&quot;\u7f8e\u5c5e\u7ef4\u5c14\u4eac\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;United States Virgin Islands&quot;,&quot;pinyin&quot;:&quot;meishuweierjingqundao&quot;}},&quot;pinyin&quot;:&quot;beimeizhou&quot;},&quot;17346&quot;:{&quot;name&quot;:&quot;\u5927\u6d0b\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17895&quot;:{&quot;name&quot;:&quot;\u7f8e\u5c5e\u8428\u6469\u4e9a&quot;,&quot;ename&quot;:&quot;American Samoa&quot;,&quot;pinyin&quot;:&quot;meishusamoya&quot;},&quot;17362&quot;:{&quot;name&quot;:&quot;\u6fb3\u5927\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Australia&quot;,&quot;pinyin&quot;:&quot;aodaliya&quot;},&quot;20322&quot;:{&quot;name&quot;:&quot;\u79d1\u79d1\u65af\uff08\u57fa\u6797\uff09\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Cocos (Keeling) Islands&quot;,&quot;pinyin&quot;:&quot;kekesi\uff08jilin\uff09qundao&quot;},&quot;17395&quot;:{&quot;name&quot;:&quot;\u5e93\u514b\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Cook Islands&quot;,&quot;pinyin&quot;:&quot;kukequndao&quot;},&quot;17391&quot;:{&quot;name&quot;:&quot;\u5723\u8bde\u5c9b&quot;,&quot;ename&quot;:&quot;Christmas Island&quot;,&quot;pinyin&quot;:&quot;shengdandao&quot;},&quot;17413&quot;:{&quot;name&quot;:&quot;\u6590\u6d4e&quot;,&quot;ename&quot;:&quot;Fiji&quot;,&quot;pinyin&quot;:&quot;feiji&quot;},&quot;17416&quot;:{&quot;name&quot;:&quot;\u5bc6\u514b\u7f57\u5c3c\u897f\u4e9a\u8054\u90a6&quot;,&quot;ename&quot;:&quot;Micronesia&quot;,&quot;pinyin&quot;:&quot;mikeluonixiyalianbang&quot;},&quot;17896&quot;:{&quot;name&quot;:&quot;\u5173\u5c9b&quot;,&quot;ename&quot;:&quot;Guam&quot;,&quot;pinyin&quot;:&quot;guandao&quot;},&quot;20321&quot;:{&quot;name&quot;:&quot;\u8d6b\u5fb7\u5c9b\u548c\u9ea6\u514b\u5510\u7eb3\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Heard Island and McDonald Islands&quot;,&quot;pinyin&quot;:&quot;hededaohemaiketangnaqundao&quot;},&quot;17449&quot;:{&quot;name&quot;:&quot;\u57fa\u91cc\u5df4\u65af&quot;,&quot;ename&quot;:&quot;Kiribati&quot;,&quot;pinyin&quot;:&quot;jilibasi&quot;},&quot;17474&quot;:{&quot;name&quot;:&quot;\u9a6c\u7ecd\u5c14\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Marshall Islands&quot;,&quot;pinyin&quot;:&quot;mashaoerqundao&quot;},&quot;17897&quot;:{&quot;name&quot;:&quot;\u5317\u9a6c\u91cc\u4e9a\u7eb3\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Northern Mariana Islands&quot;,&quot;pinyin&quot;:&quot;beimaliyanaqundao&quot;},&quot;17490&quot;:{&quot;name&quot;:&quot;\u65b0\u5580\u91cc\u591a\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;New Caledonia&quot;,&quot;pinyin&quot;:&quot;xinkaliduoniya&quot;},&quot;17496&quot;:{&quot;name&quot;:&quot;\u8bfa\u798f\u514b\u5c9b&quot;,&quot;ename&quot;:&quot;Norfolk Island&quot;,&quot;pinyin&quot;:&quot;nuofukedao&quot;},&quot;17487&quot;:{&quot;name&quot;:&quot;\u7459\u9c81&quot;,&quot;ename&quot;:&quot;Nauru&quot;,&quot;pinyin&quot;:&quot;naolu&quot;},&quot;17495&quot;:{&quot;name&quot;:&quot;\u7ebd\u57c3&quot;,&quot;ename&quot;:&quot;Niue&quot;,&quot;pinyin&quot;:&quot;niuai&quot;},&quot;21229&quot;:{&quot;name&quot;:&quot;\u65b0\u897f\u5170&quot;,&quot;ename&quot;:&quot;New Zealand&quot;,&quot;pinyin&quot;:&quot;xinxilan&quot;},&quot;17500&quot;:{&quot;name&quot;:&quot;\u6cd5\u5c5e\u6ce2\u5229\u5c3c\u897f\u4e9a&quot;,&quot;ename&quot;:&quot;French Polynesia&quot;,&quot;pinyin&quot;:&quot;fashubolinixiya&quot;},&quot;17503&quot;:{&quot;name&quot;:&quot;\u5df4\u5e03\u4e9a\u65b0\u51e0\u5185\u4e9a&quot;,&quot;ename&quot;:&quot;Papua New Guinea&quot;,&quot;pinyin&quot;:&quot;babuyaxinjineiya&quot;},&quot;17501&quot;:{&quot;name&quot;:&quot;\u5e15\u52b3&quot;,&quot;ename&quot;:&quot;Palau&quot;,&quot;pinyin&quot;:&quot;palao&quot;},&quot;17525&quot;:{&quot;name&quot;:&quot;\u6240\u7f57\u95e8\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Solomon Islands&quot;,&quot;pinyin&quot;:&quot;suoluomenqundao&quot;},&quot;17537&quot;:{&quot;name&quot;:&quot;\u6258\u514b\u52b3&quot;,&quot;ename&quot;:&quot;Tokelau&quot;,&quot;pinyin&quot;:&quot;tuokelao&quot;},&quot;17538&quot;:{&quot;name&quot;:&quot;\u6c64\u52a0&quot;,&quot;ename&quot;:&quot;Tonga&quot;,&quot;pinyin&quot;:&quot;tangjia&quot;},&quot;17545&quot;:{&quot;name&quot;:&quot;\u56fe\u74e6\u5362&quot;,&quot;ename&quot;:&quot;Tuvalu&quot;,&quot;pinyin&quot;:&quot;tuwalu&quot;},&quot;17575&quot;:{&quot;name&quot;:&quot;\u74e6\u52aa\u963f\u56fe&quot;,&quot;ename&quot;:&quot;Vanuatu&quot;,&quot;pinyin&quot;:&quot;wanuatu&quot;},&quot;17556&quot;:{&quot;name&quot;:&quot;\u8428\u6469\u4e9a&quot;,&quot;ename&quot;:&quot;Samoa&quot;,&quot;pinyin&quot;:&quot;samoya&quot;}},&quot;pinyin&quot;:&quot;dayangzhou&quot;},&quot;17343&quot;:{&quot;name&quot;:&quot;\u975e\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17357&quot;:{&quot;name&quot;:&quot;\u5b89\u54e5\u62c9&quot;,&quot;ename&quot;:&quot;Angola&quot;,&quot;pinyin&quot;:&quot;angela&quot;},&quot;17383&quot;:{&quot;name&quot;:&quot;\u5e03\u57fa\u7eb3\u6cd5\u7d22&quot;,&quot;ename&quot;:&quot;Burkina Faso&quot;,&quot;pinyin&quot;:&quot;bujinafasuo&quot;},&quot;17384&quot;:{&quot;name&quot;:&quot;\u5e03\u9686\u8fea&quot;,&quot;ename&quot;:&quot;Burundi&quot;,&quot;pinyin&quot;:&quot;bulongdi&quot;},&quot;17373&quot;:{&quot;name&quot;:&quot;\u8d1d\u5b81&quot;,&quot;ename&quot;:&quot;Benin&quot;,&quot;pinyin&quot;:&quot;beining&quot;},&quot;17378&quot;:{&quot;name&quot;:&quot;\u535a\u8328\u74e6\u7eb3&quot;,&quot;ename&quot;:&quot;Botswana&quot;,&quot;pinyin&quot;:&quot;bociwana&quot;},&quot;17574&quot;:{&quot;name&quot;:&quot;\u521a\u679c\u6c11\u4e3b\u5171\u548c\u56fd&quot;,&quot;ename&quot;:&quot;Democratic Republic of the Congo&quot;,&quot;pinyin&quot;:&quot;gangguominzhugongheguo&quot;},&quot;17388&quot;:{&quot;name&quot;:&quot;\u4e2d\u975e\u5171\u548c\u56fd&quot;,&quot;ename&quot;:&quot;The Central African Republic&quot;,&quot;pinyin&quot;:&quot;zhongfeigongheguo&quot;},&quot;17394&quot;:{&quot;name&quot;:&quot;\u521a\u679c\u5171\u548c\u56fd&quot;,&quot;ename&quot;:&quot;The Republic of Congo&quot;,&quot;pinyin&quot;:&quot;gangguogongheguo&quot;},&quot;17397&quot;:{&quot;name&quot;:&quot;\u79d1\u7279\u8fea\u74e6&quot;,&quot;ename&quot;:&quot;C\u00f4te d'Ivoire&quot;,&quot;pinyin&quot;:&quot;ketediwa&quot;},&quot;17385&quot;:{&quot;name&quot;:&quot;\u5580\u9ea6\u9686&quot;,&quot;ename&quot;:&quot;Cameroon&quot;,&quot;pinyin&quot;:&quot;kamailong&quot;},&quot;17387&quot;:{&quot;name&quot;:&quot;\u4f5b\u5f97\u89d2&quot;,&quot;ename&quot;:&quot;Cape Verde&quot;,&quot;pinyin&quot;:&quot;fodejiao&quot;},&quot;17402&quot;:{&quot;name&quot;:&quot;\u5409\u5e03\u63d0&quot;,&quot;ename&quot;:&quot;Djibouti&quot;,&quot;pinyin&quot;:&quot;jibuti&quot;},&quot;17406&quot;:{&quot;name&quot;:&quot;\u963f\u5c14\u53ca\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Algeria&quot;,&quot;pinyin&quot;:&quot;aerjiliya&quot;},&quot;17408&quot;:{&quot;name&quot;:&quot;\u57c3\u53ca&quot;,&quot;ename&quot;:&quot;Egypt&quot;,&quot;pinyin&quot;:&quot;aiji&quot;},&quot;17409&quot;:{&quot;name&quot;:&quot;\u897f\u6492\u54c8\u62c9&quot;,&quot;ename&quot;:&quot;Western Sahara&quot;,&quot;pinyin&quot;:&quot;xisahala&quot;},&quot;17573&quot;:{&quot;name&quot;:&quot;\u5384\u7acb\u7279\u91cc\u4e9a&quot;,&quot;ename&quot;:&quot;Eritrea&quot;,&quot;pinyin&quot;:&quot;eliteliya&quot;},&quot;17412&quot;:{&quot;name&quot;:&quot;\u57c3\u585e\u4fc4\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Ethiopia&quot;,&quot;pinyin&quot;:&quot;aisaiebiya&quot;},&quot;17417&quot;:{&quot;name&quot;:&quot;\u52a0\u84ec&quot;,&quot;ename&quot;:&quot;Gabon&quot;,&quot;pinyin&quot;:&quot;jiapeng&quot;},&quot;17422&quot;:{&quot;name&quot;:&quot;\u52a0\u7eb3&quot;,&quot;ename&quot;:&quot;Ghana&quot;,&quot;pinyin&quot;:&quot;jiana&quot;},&quot;17420&quot;:{&quot;name&quot;:&quot;\u5188\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Gambia&quot;,&quot;pinyin&quot;:&quot;gangbiya&quot;},&quot;17429&quot;:{&quot;name&quot;:&quot;\u51e0\u5185\u4e9a&quot;,&quot;ename&quot;:&quot;Guinea&quot;,&quot;pinyin&quot;:&quot;jineiya&quot;},&quot;17418&quot;:{&quot;name&quot;:&quot;\u8d64\u9053\u51e0\u5185\u4e9a&quot;,&quot;ename&quot;:&quot;Equatorial Guinea&quot;,&quot;pinyin&quot;:&quot;chidaojineiya&quot;},&quot;17430&quot;:{&quot;name&quot;:&quot;\u51e0\u5185\u4e9a\u6bd4\u7ecd&quot;,&quot;ename&quot;:&quot;Guinea-Bissau&quot;,&quot;pinyin&quot;:&quot;jineiyabishao&quot;},&quot;17448&quot;:{&quot;name&quot;:&quot;\u80af\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Kenya&quot;,&quot;pinyin&quot;:&quot;kenniya&quot;},&quot;17453&quot;:{&quot;name&quot;:&quot;\u79d1\u6469\u7f57&quot;,&quot;ename&quot;:&quot;Comoros&quot;,&quot;pinyin&quot;:&quot;kemoluo&quot;},&quot;17462&quot;:{&quot;name&quot;:&quot;\u5229\u6bd4\u91cc\u4e9a&quot;,&quot;ename&quot;:&quot;Liberia&quot;,&quot;pinyin&quot;:&quot;libiliya&quot;},&quot;17461&quot;:{&quot;name&quot;:&quot;\u83b1\u7d22\u6258&quot;,&quot;ename&quot;:&quot;Lesotho&quot;,&quot;pinyin&quot;:&quot;laisuotuo&quot;},&quot;17463&quot;:{&quot;name&quot;:&quot;\u5229\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Libya&quot;,&quot;pinyin&quot;:&quot;libiya&quot;},&quot;17482&quot;:{&quot;name&quot;:&quot;\u6469\u6d1b\u54e5&quot;,&quot;ename&quot;:&quot;Morocco&quot;,&quot;pinyin&quot;:&quot;moluoge&quot;},&quot;17468&quot;:{&quot;name&quot;:&quot;\u9a6c\u8fbe\u52a0\u65af\u52a0&quot;,&quot;ename&quot;:&quot;Madagascar&quot;,&quot;pinyin&quot;:&quot;madajiasijia&quot;},&quot;17472&quot;:{&quot;name&quot;:&quot;\u9a6c\u91cc&quot;,&quot;ename&quot;:&quot;Mali&quot;,&quot;pinyin&quot;:&quot;mali&quot;},&quot;17475&quot;:{&quot;name&quot;:&quot;\u6bdb\u91cc\u5854\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Mauritania&quot;,&quot;pinyin&quot;:&quot;maolitaniya&quot;},&quot;17476&quot;:{&quot;name&quot;:&quot;\u6bdb\u91cc\u6c42\u65af&quot;,&quot;ename&quot;:&quot;Mauritius&quot;,&quot;pinyin&quot;:&quot;maoliqiusi&quot;},&quot;17469&quot;:{&quot;name&quot;:&quot;\u9a6c\u62c9\u7ef4&quot;,&quot;ename&quot;:&quot;Malawi&quot;,&quot;pinyin&quot;:&quot;malawei&quot;},&quot;17483&quot;:{&quot;name&quot;:&quot;\u83ab\u6851\u6bd4\u514b&quot;,&quot;ename&quot;:&quot;Mozambique&quot;,&quot;pinyin&quot;:&quot;mosangbike&quot;},&quot;17486&quot;:{&quot;name&quot;:&quot;\u7eb3\u7c73\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Namibia&quot;,&quot;pinyin&quot;:&quot;namibiya&quot;},&quot;17493&quot;:{&quot;name&quot;:&quot;\u5c3c\u65e5\u5c14&quot;,&quot;ename&quot;:&quot;Niger&quot;,&quot;pinyin&quot;:&quot;nirier&quot;},&quot;17494&quot;:{&quot;name&quot;:&quot;\u5c3c\u65e5\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Nigeria&quot;,&quot;pinyin&quot;:&quot;niriliya&quot;},&quot;17514&quot;:{&quot;name&quot;:&quot;\u5362\u65fa\u8fbe&quot;,&quot;ename&quot;:&quot;Rwanda&quot;,&quot;pinyin&quot;:&quot;luwangda&quot;},&quot;17520&quot;:{&quot;name&quot;:&quot;\u585e\u820c\u5c14&quot;,&quot;ename&quot;:&quot;Seychelles&quot;,&quot;pinyin&quot;:&quot;saisheer&quot;},&quot;17527&quot;:{&quot;name&quot;:&quot;\u82cf\u4e39&quot;,&quot;ename&quot;:&quot;Sudan&quot;,&quot;pinyin&quot;:&quot;sudan&quot;},&quot;17521&quot;:{&quot;name&quot;:&quot;\u585e\u62c9\u5229\u6602&quot;,&quot;ename&quot;:&quot;Sierra leone&quot;,&quot;pinyin&quot;:&quot;sailaliang&quot;},&quot;17519&quot;:{&quot;name&quot;:&quot;\u585e\u5185\u52a0\u5c14&quot;,&quot;ename&quot;:&quot;Senegal&quot;,&quot;pinyin&quot;:&quot;saineijiaer&quot;},&quot;17526&quot;:{&quot;name&quot;:&quot;\u7d22\u9a6c\u91cc&quot;,&quot;ename&quot;:&quot;Somalia&quot;,&quot;pinyin&quot;:&quot;suomali&quot;},&quot;17564&quot;:{&quot;name&quot;:&quot;\u5357\u82cf\u4e39&quot;,&quot;ename&quot;:&quot;South Sudan&quot;,&quot;pinyin&quot;:&quot;nansudan&quot;},&quot;17517&quot;:{&quot;name&quot;:&quot;\u5723\u591a\u7f8e\u548c\u666e\u6797\u897f\u6bd4&quot;,&quot;ename&quot;:&quot;Sao Tome and Principe&quot;,&quot;pinyin&quot;:&quot;shengduomeihepulinxibi&quot;},&quot;17529&quot;:{&quot;name&quot;:&quot;\u65af\u5a01\u58eb\u5170&quot;,&quot;ename&quot;:&quot;Swaziland&quot;,&quot;pinyin&quot;:&quot;siweishilan&quot;},&quot;17532&quot;:{&quot;name&quot;:&quot;\u4e4d\u5f97&quot;,&quot;ename&quot;:&quot;Chad&quot;,&quot;pinyin&quot;:&quot;zhade&quot;},&quot;17536&quot;:{&quot;name&quot;:&quot;\u591a\u54e5&quot;,&quot;ename&quot;:&quot;Togo&quot;,&quot;pinyin&quot;:&quot;duoge&quot;},&quot;17540&quot;:{&quot;name&quot;:&quot;\u7a81\u5c3c\u65af&quot;,&quot;ename&quot;:&quot;Tunisia&quot;,&quot;pinyin&quot;:&quot;tunisi&quot;},&quot;17534&quot;:{&quot;name&quot;:&quot;\u5766\u6851\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Tanzania&quot;,&quot;pinyin&quot;:&quot;tansangniya&quot;},&quot;17546&quot;:{&quot;name&quot;:&quot;\u4e4c\u5e72\u8fbe&quot;,&quot;ename&quot;:&quot;Uganda&quot;,&quot;pinyin&quot;:&quot;wuganda&quot;},&quot;17558&quot;:{&quot;name&quot;:&quot;\u5357\u975e&quot;,&quot;ename&quot;:&quot;South Africa&quot;,&quot;pinyin&quot;:&quot;nanfei&quot;},&quot;17560&quot;:{&quot;name&quot;:&quot;\u8d5e\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Zambia&quot;,&quot;pinyin&quot;:&quot;zanbiya&quot;},&quot;17561&quot;:{&quot;name&quot;:&quot;\u6d25\u5df4\u5e03\u97e6&quot;,&quot;ename&quot;:&quot;Zimbabwe&quot;,&quot;pinyin&quot;:&quot;jinbabuwei&quot;}},&quot;pinyin&quot;:&quot;feizhou&quot;},&quot;17345&quot;:{&quot;name&quot;:&quot;\u5357\u7f8e\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17360&quot;:{&quot;name&quot;:&quot;\u963f\u6839\u5ef7&quot;,&quot;ename&quot;:&quot;Argentina&quot;,&quot;pinyin&quot;:&quot;agenting&quot;},&quot;17376&quot;:{&quot;name&quot;:&quot;\u73bb\u5229\u7ef4\u4e9a&quot;,&quot;ename&quot;:&quot;Bolivia&quot;,&quot;pinyin&quot;:&quot;boliweiya&quot;},&quot;17380&quot;:{&quot;name&quot;:&quot;\u5df4\u897f&quot;,&quot;ename&quot;:&quot;Brazil&quot;,&quot;pinyin&quot;:&quot;baxi&quot;},&quot;17389&quot;:{&quot;name&quot;:&quot;\u667a\u5229&quot;,&quot;ename&quot;:&quot;Chile&quot;,&quot;pinyin&quot;:&quot;zhili&quot;},&quot;17392&quot;:{&quot;name&quot;:&quot;\u54e5\u4f26\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Colombia&quot;,&quot;pinyin&quot;:&quot;gelunbiya&quot;},&quot;17407&quot;:{&quot;name&quot;:&quot;\u5384\u74dc\u591a\u5c14&quot;,&quot;ename&quot;:&quot;Ecuador&quot;,&quot;pinyin&quot;:&quot;eguaduoer&quot;},&quot;19405&quot;:{&quot;name&quot;:&quot;\u6cd5\u5c5e\u572d\u4e9a\u90a3&quot;,&quot;ename&quot;:&quot;French Guiana&quot;,&quot;pinyin&quot;:&quot;fashuguiyana&quot;},&quot;17431&quot;:{&quot;name&quot;:&quot;\u572d\u4e9a\u90a3&quot;,&quot;ename&quot;:&quot;Guyana&quot;,&quot;pinyin&quot;:&quot;guiyana&quot;},&quot;17505&quot;:{&quot;name&quot;:&quot;\u79d8\u9c81&quot;,&quot;ename&quot;:&quot;Peru&quot;,&quot;pinyin&quot;:&quot;milu&quot;},&quot;17504&quot;:{&quot;name&quot;:&quot;\u5df4\u62c9\u572d&quot;,&quot;ename&quot;:&quot;Paraguay&quot;,&quot;pinyin&quot;:&quot;balagui&quot;},&quot;17528&quot;:{&quot;name&quot;:&quot;\u82cf\u91cc\u5357&quot;,&quot;ename&quot;:&quot;Surinam&quot;,&quot;pinyin&quot;:&quot;sulinan&quot;},&quot;17550&quot;:{&quot;name&quot;:&quot;\u4e4c\u62c9\u572d&quot;,&quot;ename&quot;:&quot;Uruguay&quot;,&quot;pinyin&quot;:&quot;wulagui&quot;},&quot;17553&quot;:{&quot;name&quot;:&quot;\u59d4\u5185\u745e\u62c9&quot;,&quot;ename&quot;:&quot;Venezuela&quot;,&quot;pinyin&quot;:&quot;weineiruila&quot;}},&quot;pinyin&quot;:&quot;nanmeizhou&quot;},&quot;17342&quot;:{&quot;name&quot;:&quot;\u6b27\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17352&quot;:{&quot;name&quot;:&quot;\u5b89\u9053\u5c14&quot;,&quot;ename&quot;:&quot;Andorra&quot;,&quot;pinyin&quot;:&quot;andaoer&quot;},&quot;20315&quot;:{&quot;name&quot;:&quot;\u5b89\u572d\u62c9&quot;,&quot;ename&quot;:&quot;Anguilla&quot;,&quot;pinyin&quot;:&quot;anguila&quot;},&quot;17355&quot;:{&quot;name&quot;:&quot;\u963f\u5c14\u5df4\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Albania&quot;,&quot;pinyin&quot;:&quot;aerbaniya&quot;},&quot;17363&quot;:{&quot;name&quot;:&quot;\u5965\u5730\u5229&quot;,&quot;ename&quot;:&quot;Austria&quot;,&quot;pinyin&quot;:&quot;aodili&quot;},&quot;19380&quot;:{&quot;name&quot;:&quot;\u5965\u5170\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;\u00c5aland Islands&quot;,&quot;pinyin&quot;:&quot;aolanqundao&quot;},&quot;17377&quot;:{&quot;name&quot;:&quot;\u6ce2\u9ed1&quot;,&quot;ename&quot;:&quot;Bosnia and Herzegovina&quot;,&quot;pinyin&quot;:&quot;bohei&quot;},&quot;17372&quot;:{&quot;name&quot;:&quot;\u6bd4\u5229\u65f6&quot;,&quot;ename&quot;:&quot;Belgium&quot;,&quot;pinyin&quot;:&quot;bilishi&quot;},&quot;17382&quot;:{&quot;name&quot;:&quot;\u4fdd\u52a0\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Bulgaria&quot;,&quot;pinyin&quot;:&quot;baojialiya&quot;},&quot;19411&quot;:{&quot;name&quot;:&quot;\u5723\u5df4\u6cf0\u52d2\u7c73\u5c9b&quot;,&quot;ename&quot;:&quot;Saint Barth\u00e9lemy&quot;,&quot;pinyin&quot;:&quot;shengbatailemidao&quot;},&quot;17379&quot;:{&quot;name&quot;:&quot;\u5e03\u97e6\u5c9b&quot;,&quot;ename&quot;:&quot;Bouvet Island&quot;,&quot;pinyin&quot;:&quot;buweidao&quot;},&quot;17370&quot;:{&quot;name&quot;:&quot;\u767d\u4fc4\u7f57\u65af&quot;,&quot;ename&quot;:&quot;Belarus&quot;,&quot;pinyin&quot;:&quot;baieluosi&quot;},&quot;17393&quot;:{&quot;name&quot;:&quot;\u745e\u58eb&quot;,&quot;ename&quot;:&quot;Switzerland&quot;,&quot;pinyin&quot;:&quot;ruishi&quot;},&quot;17399&quot;:{&quot;name&quot;:&quot;\u585e\u6d66\u8def\u65af&quot;,&quot;ename&quot;:&quot;Cyprus&quot;,&quot;pinyin&quot;:&quot;saipulusi&quot;},&quot;17400&quot;:{&quot;name&quot;:&quot;\u6377\u514b&quot;,&quot;ename&quot;:&quot;Czech&quot;,&quot;pinyin&quot;:&quot;jieke&quot;},&quot;17404&quot;:{&quot;name&quot;:&quot;\u5fb7\u56fd&quot;,&quot;ename&quot;:&quot;Germany&quot;,&quot;pinyin&quot;:&quot;deguo&quot;},&quot;17401&quot;:{&quot;name&quot;:&quot;\u4e39\u9ea6&quot;,&quot;ename&quot;:&quot;Denmark&quot;,&quot;pinyin&quot;:&quot;danmai&quot;},&quot;17411&quot;:{&quot;name&quot;:&quot;\u7231\u6c99\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Estonia&quot;,&quot;pinyin&quot;:&quot;aishaniya&quot;},&quot;17410&quot;:{&quot;name&quot;:&quot;\u897f\u73ed\u7259&quot;,&quot;ename&quot;:&quot;Spain&quot;,&quot;pinyin&quot;:&quot;xibanya&quot;},&quot;17414&quot;:{&quot;name&quot;:&quot;\u82ac\u5170&quot;,&quot;ename&quot;:&quot;Finland&quot;,&quot;pinyin&quot;:&quot;fenlan&quot;},&quot;20317&quot;:{&quot;name&quot;:&quot;\u798f\u514b\u5170\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Falkland Islands (Malvinas)&quot;,&quot;pinyin&quot;:&quot;fukelanqundao&quot;},&quot;19313&quot;:{&quot;name&quot;:&quot;\u6cd5\u7f57\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Faroe Islands&quot;,&quot;pinyin&quot;:&quot;faluoqundao&quot;},&quot;17415&quot;:{&quot;name&quot;:&quot;\u6cd5\u56fd&quot;,&quot;ename&quot;:&quot;France&quot;,&quot;pinyin&quot;:&quot;faguo&quot;},&quot;17548&quot;:{&quot;name&quot;:&quot;\u82f1\u56fd&quot;,&quot;ename&quot;:&quot;United Kingdom&quot;,&quot;pinyin&quot;:&quot;yingguo&quot;},&quot;21238&quot;:{&quot;name&quot;:&quot;\u6839\u897f\u5c9b&quot;,&quot;ename&quot;:&quot;Guernsey&quot;,&quot;pinyin&quot;:&quot;genxidao&quot;},&quot;17423&quot;:{&quot;name&quot;:&quot;\u76f4\u5e03\u7f57\u9640&quot;,&quot;ename&quot;:&quot;Gibraltar&quot;,&quot;pinyin&quot;:&quot;zhibuluotuo&quot;},&quot;17425&quot;:{&quot;name&quot;:&quot;\u683c\u9675\u5170&quot;,&quot;ename&quot;:&quot;Greenland&quot;,&quot;pinyin&quot;:&quot;gelinglan&quot;},&quot;19403&quot;:{&quot;name&quot;:&quot;\u74dc\u5fb7\u7f57\u666e&quot;,&quot;ename&quot;:&quot;Guadeloupe&quot;,&quot;pinyin&quot;:&quot;guadeluopu&quot;},&quot;17424&quot;:{&quot;name&quot;:&quot;\u5e0c\u814a&quot;,&quot;ename&quot;:&quot;Greece&quot;,&quot;pinyin&quot;:&quot;xila&quot;},&quot;20318&quot;:{&quot;name&quot;:&quot;\u5357\u4e54\u6cbb\u4e9a\u5c9b\u548c\u5357\u6851\u5a01\u5947\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;South Georgia and the South Sandwich Islands&quot;,&quot;pinyin&quot;:&quot;nanqiaozhiyadaohenansangweiqi&quot;},&quot;17432&quot;:{&quot;name&quot;:&quot;\u514b\u7f57\u5730\u4e9a&quot;,&quot;ename&quot;:&quot;Croatia&quot;,&quot;pinyin&quot;:&quot;keluodiya&quot;},&quot;17435&quot;:{&quot;name&quot;:&quot;\u5308\u7259\u5229&quot;,&quot;ename&quot;:&quot;Hungary&quot;,&quot;pinyin&quot;:&quot;xiongyali&quot;},&quot;17441&quot;:{&quot;name&quot;:&quot;\u7231\u5c14\u5170&quot;,&quot;ename&quot;:&quot;Ireland&quot;,&quot;pinyin&quot;:&quot;aierlan&quot;},&quot;21240&quot;:{&quot;name&quot;:&quot;\u9a6c\u6069\u5c9b&quot;,&quot;ename&quot;:&quot;Isle of Man&quot;,&quot;pinyin&quot;:&quot;maendao&quot;},&quot;17436&quot;:{&quot;name&quot;:&quot;\u51b0\u5c9b&quot;,&quot;ename&quot;:&quot;Iceland&quot;,&quot;pinyin&quot;:&quot;bingdao&quot;},&quot;17443&quot;:{&quot;name&quot;:&quot;\u610f\u5927\u5229&quot;,&quot;ename&quot;:&quot;Italy&quot;,&quot;pinyin&quot;:&quot;yidali&quot;},&quot;21239&quot;:{&quot;name&quot;:&quot;\u6cfd\u897f\u5c9b&quot;,&quot;ename&quot;:&quot;Jersey&quot;,&quot;pinyin&quot;:&quot;zexidao&quot;},&quot;17456&quot;:{&quot;name&quot;:&quot;\u5f00\u66fc\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Cayman Islands&quot;,&quot;pinyin&quot;:&quot;kaimanqundao&quot;},&quot;17464&quot;:{&quot;name&quot;:&quot;\u5217\u652f\u6566\u58eb\u767b&quot;,&quot;ename&quot;:&quot;Liechtenstein&quot;,&quot;pinyin&quot;:&quot;liezhidunshideng&quot;},&quot;17465&quot;:{&quot;name&quot;:&quot;\u7acb\u9676\u5b9b&quot;,&quot;ename&quot;:&quot;Lithuania&quot;,&quot;pinyin&quot;:&quot;litaowan&quot;},&quot;17466&quot;:{&quot;name&quot;:&quot;\u5362\u68ee\u5821&quot;,&quot;ename&quot;:&quot;Luxembourg&quot;,&quot;pinyin&quot;:&quot;lusenbao&quot;},&quot;17459&quot;:{&quot;name&quot;:&quot;\u62c9\u8131\u7ef4\u4e9a&quot;,&quot;ename&quot;:&quot;Latvia&quot;,&quot;pinyin&quot;:&quot;latuoweiya&quot;},&quot;17479&quot;:{&quot;name&quot;:&quot;\u6469\u7eb3\u54e5&quot;,&quot;ename&quot;:&quot;Monaco&quot;,&quot;pinyin&quot;:&quot;monage&quot;},&quot;17478&quot;:{&quot;name&quot;:&quot;\u6469\u5c14\u591a\u74e6&quot;,&quot;ename&quot;:&quot;Moldova&quot;,&quot;pinyin&quot;:&quot;moerduowa&quot;},&quot;17569&quot;:{&quot;name&quot;:&quot;\u9ed1\u5c71&quot;,&quot;ename&quot;:&quot;Montenegro&quot;,&quot;pinyin&quot;:&quot;heishan&quot;},&quot;17567&quot;:{&quot;name&quot;:&quot;\u9a6c\u5176\u987f&quot;,&quot;ename&quot;:&quot;Macedonia&quot;,&quot;pinyin&quot;:&quot;maqidun&quot;},&quot;19404&quot;:{&quot;name&quot;:&quot;\u9a6c\u63d0\u5c3c\u514b&quot;,&quot;ename&quot;:&quot;Martinique&quot;,&quot;pinyin&quot;:&quot;matinike&quot;},&quot;17473&quot;:{&quot;name&quot;:&quot;\u9a6c\u8033\u4ed6&quot;,&quot;ename&quot;:&quot;Malta&quot;,&quot;pinyin&quot;:&quot;maerta&quot;},&quot;21228&quot;:{&quot;name&quot;:&quot;\u8377\u5170&quot;,&quot;ename&quot;:&quot;Netherlands&quot;,&quot;pinyin&quot;:&quot;helan&quot;},&quot;17497&quot;:{&quot;name&quot;:&quot;\u632a\u5a01&quot;,&quot;ename&quot;:&quot;Norway&quot;,&quot;pinyin&quot;:&quot;nuowei&quot;},&quot;17508&quot;:{&quot;name&quot;:&quot;\u6ce2\u5170&quot;,&quot;ename&quot;:&quot;Poland&quot;,&quot;pinyin&quot;:&quot;bolan&quot;},&quot;19408&quot;:{&quot;name&quot;:&quot;\u5723\u76ae\u57c3\u5c14\u548c\u5bc6\u514b\u9686\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Saint Pierre and Miquelon&quot;,&quot;pinyin&quot;:&quot;shengpiaierhemikelongqundao&quot;},&quot;17507&quot;:{&quot;name&quot;:&quot;\u76ae\u7279\u5f00\u6069\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Pitcairn Islands&quot;,&quot;pinyin&quot;:&quot;pitekaienqundao&quot;},&quot;17509&quot;:{&quot;name&quot;:&quot;\u8461\u8404\u7259&quot;,&quot;ename&quot;:&quot;Portugal&quot;,&quot;pinyin&quot;:&quot;putaoya&quot;},&quot;19406&quot;:{&quot;name&quot;:&quot;\u7559\u5c3c\u6c6a&quot;,&quot;ename&quot;:&quot;R\u00e9union&quot;,&quot;pinyin&quot;:&quot;liuniwang&quot;},&quot;17512&quot;:{&quot;name&quot;:&quot;\u7f57\u9a6c\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Romania&quot;,&quot;pinyin&quot;:&quot;luomaniya&quot;},&quot;17566&quot;:{&quot;name&quot;:&quot;\u585e\u5c14\u7ef4\u4e9a&quot;,&quot;ename&quot;:&quot;Serbia&quot;,&quot;pinyin&quot;:&quot;saierweiya&quot;},&quot;17513&quot;:{&quot;name&quot;:&quot;\u4fc4\u7f57\u65af&quot;,&quot;ename&quot;:&quot;Russia&quot;,&quot;pinyin&quot;:&quot;eluosi&quot;},&quot;17530&quot;:{&quot;name&quot;:&quot;\u745e\u5178&quot;,&quot;ename&quot;:&quot;Sweden&quot;,&quot;pinyin&quot;:&quot;ruidian&quot;},&quot;17562&quot;:{&quot;name&quot;:&quot;\u5723\u8d6b\u52d2\u90a3&quot;,&quot;ename&quot;:&quot;St.Helena&quot;,&quot;pinyin&quot;:&quot;shenghelena&quot;},&quot;17524&quot;:{&quot;name&quot;:&quot;\u65af\u6d1b\u6587\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Slovenia&quot;,&quot;pinyin&quot;:&quot;siluowenniya&quot;},&quot;27552&quot;:{&quot;name&quot;:&quot;\u65af\u74e6\u5c14\u5df4\u7fa4\u5c9b\u548c\u626c\u9a6c\u5ef6\u5c9b&quot;,&quot;ename&quot;:&quot;Svalbard and Jan Mayen&quot;,&quot;pinyin&quot;:&quot;siwaerbaqundaoheyangmayan&quot;},&quot;17523&quot;:{&quot;name&quot;:&quot;\u65af\u6d1b\u4f10\u514b&quot;,&quot;ename&quot;:&quot;Slovakia&quot;,&quot;pinyin&quot;:&quot;siluofake&quot;},&quot;17516&quot;:{&quot;name&quot;:&quot;\u5723\u9a6c\u529b\u8bfa&quot;,&quot;ename&quot;:&quot;San Marino&quot;,&quot;pinyin&quot;:&quot;shengmalinuo&quot;},&quot;17544&quot;:{&quot;name&quot;:&quot;\u7279\u514b\u65af\u548c\u51ef\u79d1\u65af\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Turks and Caicos Islands&quot;,&quot;pinyin&quot;:&quot;tekesihekaikesiqundao&quot;},&quot;17541&quot;:{&quot;name&quot;:&quot;\u571f\u8033\u5176&quot;,&quot;ename&quot;:&quot;Turkey&quot;,&quot;pinyin&quot;:&quot;tuerqi&quot;},&quot;17547&quot;:{&quot;name&quot;:&quot;\u4e4c\u514b\u5170&quot;,&quot;ename&quot;:&quot;Ukraine&quot;,&quot;pinyin&quot;:&quot;wukelan&quot;},&quot;17552&quot;:{&quot;name&quot;:&quot;\u68b5\u8482\u5188&quot;,&quot;ename&quot;:&quot;Vatican&quot;,&quot;pinyin&quot;:&quot;fandigang&quot;},&quot;19409&quot;:{&quot;name&quot;:&quot;\u74e6\u5229\u65af\u548c\u5bcc\u56fe\u7eb3\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Wallis and Futuna&quot;,&quot;pinyin&quot;:&quot;walisihefutunaqundao&quot;},&quot;19407&quot;:{&quot;name&quot;:&quot;\u9a6c\u7ea6\u7279&quot;,&quot;ename&quot;:&quot;Mayotte&quot;,&quot;pinyin&quot;:&quot;mayuete&quot;},&quot;17568&quot;:{&quot;name&quot;:&quot;\u79d1\u7d22\u6c83&quot;,&quot;ename&quot;:&quot;The Republic of Kosovo&quot;,&quot;pinyin&quot;:&quot;kesuowo&quot;}},&quot;pinyin&quot;:&quot;ouzhou&quot;},&quot;17341&quot;:{&quot;name&quot;:&quot;\u4e9a\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17353&quot;:{&quot;name&quot;:&quot;\u963f\u62c9\u4f2f\u8054\u5408\u914b\u957f\u56fd&quot;,&quot;ename&quot;:&quot;United Arab Emirates&quot;,&quot;pinyin&quot;:&quot;alabolianheqiuchangguo&quot;},&quot;17354&quot;:{&quot;name&quot;:&quot;\u963f\u5bcc\u6c57&quot;,&quot;ename&quot;:&quot;Afghanistan&quot;,&quot;pinyin&quot;:&quot;afuhan&quot;},&quot;17361&quot;:{&quot;name&quot;:&quot;\u4e9a\u7f8e\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Armenia&quot;,&quot;pinyin&quot;:&quot;yameiniya&quot;},&quot;17364&quot;:{&quot;name&quot;:&quot;\u963f\u585e\u62dc\u7586&quot;,&quot;ename&quot;:&quot;Azerbaijan&quot;,&quot;pinyin&quot;:&quot;asaibaijiang&quot;},&quot;17368&quot;:{&quot;name&quot;:&quot;\u5b5f\u52a0\u62c9\u56fd&quot;,&quot;ename&quot;:&quot;Bangladesh&quot;,&quot;pinyin&quot;:&quot;mengjialaguo&quot;},&quot;17367&quot;:{&quot;name&quot;:&quot;\u5df4\u6797&quot;,&quot;ename&quot;:&quot;Bahrain&quot;,&quot;pinyin&quot;:&quot;balin&quot;},&quot;17381&quot;:{&quot;name&quot;:&quot;\u6587\u83b1&quot;,&quot;ename&quot;:&quot;Brunei Darussalam&quot;,&quot;pinyin&quot;:&quot;wenlai&quot;},&quot;17375&quot;:{&quot;name&quot;:&quot;\u4e0d\u4e39&quot;,&quot;ename&quot;:&quot;Bhutan&quot;,&quot;pinyin&quot;:&quot;budan&quot;},&quot;17348&quot;:{&quot;name&quot;:&quot;\u4e2d\u56fd&quot;,&quot;ename&quot;:&quot;China&quot;,&quot;pinyin&quot;:&quot;zhongguo&quot;,&quot;province_mdds&quot;:{&quot;16998&quot;:{&quot;name&quot;:&quot;\u8fbd\u5b81&quot;,&quot;pinyin&quot;:&quot;liaoning&quot;},&quot;16896&quot;:{&quot;name&quot;:&quot;\u6d59\u6c5f&quot;,&quot;pinyin&quot;:&quot;zhejiang&quot;},&quot;16879&quot;:{&quot;name&quot;:&quot;\u5929\u6d25&quot;,&quot;pinyin&quot;:&quot;tianjin&quot;},&quot;16758&quot;:{&quot;name&quot;:&quot;\u6c5f\u82cf&quot;,&quot;pinyin&quot;:&quot;jiangsu&quot;},&quot;16663&quot;:{&quot;name&quot;:&quot;\u798f\u5efa&quot;,&quot;pinyin&quot;:&quot;fujian&quot;},&quot;16646&quot;:{&quot;name&quot;:&quot;\u5317\u4eac&quot;,&quot;pinyin&quot;:&quot;beijing&quot;},&quot;16522&quot;:{&quot;name&quot;:&quot;\u5b89\u5fbd&quot;,&quot;pinyin&quot;:&quot;anhui&quot;},&quot;16364&quot;:{&quot;name&quot;:&quot;\u5c71\u4e1c&quot;,&quot;pinyin&quot;:&quot;shandong&quot;},&quot;16345&quot;:{&quot;name&quot;:&quot;\u9999\u6e2f&quot;,&quot;pinyin&quot;:&quot;xianggang&quot;},&quot;16233&quot;:{&quot;name&quot;:&quot;\u6c5f\u897f&quot;,&quot;pinyin&quot;:&quot;jiangxi&quot;},&quot;16228&quot;:{&quot;name&quot;:&quot;\u6fb3\u95e8&quot;,&quot;pinyin&quot;:&quot;aomen&quot;},&quot;16043&quot;:{&quot;name&quot;:&quot;\u6cb3\u5317&quot;,&quot;pinyin&quot;:&quot;hebei&quot;},&quot;15868&quot;:{&quot;name&quot;:&quot;\u6cb3\u5357&quot;,&quot;pinyin&quot;:&quot;henan&quot;},&quot;15738&quot;:{&quot;name&quot;:&quot;\u5c71\u897f&quot;,&quot;pinyin&quot;:&quot;shanxi&quot;},&quot;15591&quot;:{&quot;name&quot;:&quot;\u5e7f\u4e1c&quot;,&quot;pinyin&quot;:&quot;guangdong&quot;},&quot;15454&quot;:{&quot;name&quot;:&quot;\u6e56\u5357&quot;,&quot;pinyin&quot;:&quot;hunan&quot;},&quot;15426&quot;:{&quot;name&quot;:&quot;\u6d77\u5357&quot;,&quot;pinyin&quot;:&quot;hainan&quot;},&quot;15309&quot;:{&quot;name&quot;:&quot;\u6e56\u5317&quot;,&quot;pinyin&quot;:&quot;hubei&quot;},&quot;15191&quot;:{&quot;name&quot;:&quot;\u9655\u897f&quot;,&quot;pinyin&quot;:&quot;shanxi&quot;},&quot;15150&quot;:{&quot;name&quot;:&quot;\u91cd\u5e86&quot;,&quot;pinyin&quot;:&quot;chongqing&quot;},&quot;15025&quot;:{&quot;name&quot;:&quot;\u5e7f\u897f&quot;,&quot;pinyin&quot;:&quot;guangxi&quot;},&quot;14997&quot;:{&quot;name&quot;:&quot;\u5b81\u590f&quot;,&quot;pinyin&quot;:&quot;ningxia&quot;},&quot;14898&quot;:{&quot;name&quot;:&quot;\u8d35\u5dde&quot;,&quot;pinyin&quot;:&quot;guizhou&quot;},&quot;14752&quot;:{&quot;name&quot;:&quot;\u4e91\u5357&quot;,&quot;pinyin&quot;:&quot;yunnan&quot;},&quot;14549&quot;:{&quot;name&quot;:&quot;\u56db\u5ddd&quot;,&quot;pinyin&quot;:&quot;sichuan&quot;},&quot;14435&quot;:{&quot;name&quot;:&quot;\u5185\u8499\u53e4&quot;,&quot;pinyin&quot;:&quot;neimenggu&quot;},&quot;14333&quot;:{&quot;name&quot;:&quot;\u7518\u8083&quot;,&quot;pinyin&quot;:&quot;gansu&quot;},&quot;14280&quot;:{&quot;name&quot;:&quot;\u9752\u6d77&quot;,&quot;pinyin&quot;:&quot;qinghai&quot;},&quot;14199&quot;:{&quot;name&quot;:&quot;\u897f\u85cf&quot;,&quot;pinyin&quot;:&quot;xicang&quot;},&quot;14085&quot;:{&quot;name&quot;:&quot;\u65b0\u7586&quot;,&quot;pinyin&quot;:&quot;xinjiang&quot;},&quot;17114&quot;:{&quot;name&quot;:&quot;\u4e0a\u6d77&quot;,&quot;pinyin&quot;:&quot;shanghai&quot;},&quot;17133&quot;:{&quot;name&quot;:&quot;\u9ed1\u9f99\u6c5f&quot;,&quot;pinyin&quot;:&quot;heilongjiang&quot;},&quot;17265&quot;:{&quot;name&quot;:&quot;\u5409\u6797&quot;,&quot;pinyin&quot;:&quot;jilin&quot;},&quot;21250&quot;:{&quot;name&quot;:&quot;\u53f0\u6e7e&quot;,&quot;pinyin&quot;:&quot;taiwan&quot;}}},&quot;17421&quot;:{&quot;name&quot;:&quot;\u683c\u9c81\u5409\u4e9a&quot;,&quot;ename&quot;:&quot;Georgia&quot;,&quot;pinyin&quot;:&quot;gelujiya&quot;},&quot;17438&quot;:{&quot;name&quot;:&quot;\u5370\u5ea6\u5c3c\u897f\u4e9a&quot;,&quot;ename&quot;:&quot;Indonesia&quot;,&quot;pinyin&quot;:&quot;yindunixiya&quot;},&quot;17442&quot;:{&quot;name&quot;:&quot;\u4ee5\u8272\u5217&quot;,&quot;ename&quot;:&quot;Israel&quot;,&quot;pinyin&quot;:&quot;yiselie&quot;},&quot;17437&quot;:{&quot;name&quot;:&quot;\u5370\u5ea6&quot;,&quot;ename&quot;:&quot;India&quot;,&quot;pinyin&quot;:&quot;yindu&quot;},&quot;20316&quot;:{&quot;name&quot;:&quot;\u82f1\u5c5e\u5370\u5ea6\u6d0b\u9886\u5730&quot;,&quot;ename&quot;:&quot;British Indian Ocean Territory&quot;,&quot;pinyin&quot;:&quot;yingshuyinduyanglingdi&quot;},&quot;17440&quot;:{&quot;name&quot;:&quot;\u4f0a\u62c9\u514b&quot;,&quot;ename&quot;:&quot;Iraq&quot;,&quot;pinyin&quot;:&quot;yilake&quot;},&quot;17439&quot;:{&quot;name&quot;:&quot;\u4f0a\u6717&quot;,&quot;ename&quot;:&quot;Iran&quot;,&quot;pinyin&quot;:&quot;yilang&quot;},&quot;17446&quot;:{&quot;name&quot;:&quot;\u7ea6\u65e6&quot;,&quot;ename&quot;:&quot;Jordan&quot;,&quot;pinyin&quot;:&quot;yuedan&quot;},&quot;17445&quot;:{&quot;name&quot;:&quot;\u65e5\u672c&quot;,&quot;ename&quot;:&quot;Japan&quot;,&quot;pinyin&quot;:&quot;riben&quot;},&quot;17455&quot;:{&quot;name&quot;:&quot;\u5409\u5c14\u5409\u65af\u65af\u5766&quot;,&quot;ename&quot;:&quot;Kyrgyzstan&quot;,&quot;pinyin&quot;:&quot;jierjisisitan&quot;},&quot;17452&quot;:{&quot;name&quot;:&quot;\u67ec\u57d4\u5be8&quot;,&quot;ename&quot;:&quot;Cambodia&quot;,&quot;pinyin&quot;:&quot;jianpuzhai&quot;},&quot;17450&quot;:{&quot;name&quot;:&quot;\u671d\u9c9c&quot;,&quot;ename&quot;:&quot;North Korea&quot;,&quot;pinyin&quot;:&quot;zhaoxian&quot;},&quot;17451&quot;:{&quot;name&quot;:&quot;\u97e9\u56fd&quot;,&quot;ename&quot;:&quot;Korea&quot;,&quot;pinyin&quot;:&quot;hanguo&quot;},&quot;17454&quot;:{&quot;name&quot;:&quot;\u79d1\u5a01\u7279&quot;,&quot;ename&quot;:&quot;Kuwait&quot;,&quot;pinyin&quot;:&quot;keweite&quot;},&quot;17447&quot;:{&quot;name&quot;:&quot;\u54c8\u8428\u514b\u65af\u5766&quot;,&quot;ename&quot;:&quot;Kazakhstan&quot;,&quot;pinyin&quot;:&quot;hasakesitan&quot;},&quot;17457&quot;:{&quot;name&quot;:&quot;\u8001\u631d&quot;,&quot;ename&quot;:&quot;Laos&quot;,&quot;pinyin&quot;:&quot;laozhua&quot;},&quot;17460&quot;:{&quot;name&quot;:&quot;\u9ece\u5df4\u5ae9&quot;,&quot;ename&quot;:&quot;Lebanon&quot;,&quot;pinyin&quot;:&quot;libanen&quot;},&quot;17458&quot;:{&quot;name&quot;:&quot;\u65af\u91cc\u5170\u5361&quot;,&quot;ename&quot;:&quot;Sri Lanka&quot;,&quot;pinyin&quot;:&quot;sililanqia&quot;},&quot;17484&quot;:{&quot;name&quot;:&quot;\u7f05\u7538&quot;,&quot;ename&quot;:&quot;Myanmar&quot;,&quot;pinyin&quot;:&quot;miandian&quot;},&quot;17480&quot;:{&quot;name&quot;:&quot;\u8499\u53e4&quot;,&quot;ename&quot;:&quot;Mongolia&quot;,&quot;pinyin&quot;:&quot;menggu&quot;},&quot;17471&quot;:{&quot;name&quot;:&quot;\u9a6c\u5c14\u4ee3\u592b&quot;,&quot;ename&quot;:&quot;Maldives&quot;,&quot;pinyin&quot;:&quot;maerdaifu&quot;},&quot;17470&quot;:{&quot;name&quot;:&quot;\u9a6c\u6765\u897f\u4e9a&quot;,&quot;ename&quot;:&quot;Malaysia&quot;,&quot;pinyin&quot;:&quot;malaixiya&quot;},&quot;17488&quot;:{&quot;name&quot;:&quot;\u5c3c\u6cca\u5c14&quot;,&quot;ename&quot;:&quot;Nepal&quot;,&quot;pinyin&quot;:&quot;niboer&quot;},&quot;17498&quot;:{&quot;name&quot;:&quot;\u963f\u66fc&quot;,&quot;ename&quot;:&quot;Oman&quot;,&quot;pinyin&quot;:&quot;aman&quot;},&quot;17506&quot;:{&quot;name&quot;:&quot;\u83f2\u5f8b\u5bbe&quot;,&quot;ename&quot;:&quot;Philippines&quot;,&quot;pinyin&quot;:&quot;feilvbin&quot;},&quot;17499&quot;:{&quot;name&quot;:&quot;\u5df4\u57fa\u65af\u5766&quot;,&quot;ename&quot;:&quot;Pakistan&quot;,&quot;pinyin&quot;:&quot;bajisitan&quot;},&quot;17565&quot;:{&quot;name&quot;:&quot;\u5df4\u52d2\u65af\u5766&quot;,&quot;ename&quot;:&quot;Palestine&quot;,&quot;pinyin&quot;:&quot;balesitan&quot;},&quot;17511&quot;:{&quot;name&quot;:&quot;\u5361\u5854\u5c14&quot;,&quot;ename&quot;:&quot;Qatar&quot;,&quot;pinyin&quot;:&quot;qiataer&quot;},&quot;17518&quot;:{&quot;name&quot;:&quot;\u6c99\u7279\u963f\u62c9\u4f2f&quot;,&quot;ename&quot;:&quot;Saudi Arabia&quot;,&quot;pinyin&quot;:&quot;shatealabo&quot;},&quot;17522&quot;:{&quot;name&quot;:&quot;\u65b0\u52a0\u5761&quot;,&quot;ename&quot;:&quot;Singapore&quot;,&quot;pinyin&quot;:&quot;xinjiapo&quot;},&quot;17531&quot;:{&quot;name&quot;:&quot;\u53d9\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Syria&quot;,&quot;pinyin&quot;:&quot;xuliya&quot;},&quot;17535&quot;:{&quot;name&quot;:&quot;\u6cf0\u56fd&quot;,&quot;ename&quot;:&quot;Thailand&quot;,&quot;pinyin&quot;:&quot;taiguo&quot;},&quot;17533&quot;:{&quot;name&quot;:&quot;\u5854\u5409\u514b\u65af\u5766&quot;,&quot;ename&quot;:&quot;Tajikistan&quot;,&quot;pinyin&quot;:&quot;tajikesitan&quot;},&quot;17542&quot;:{&quot;name&quot;:&quot;\u4e1c\u5e1d\u6c76&quot;,&quot;ename&quot;:&quot;East Timor&quot;,&quot;pinyin&quot;:&quot;dongdiwen&quot;},&quot;17543&quot;:{&quot;name&quot;:&quot;\u571f\u5e93\u66fc\u65af\u5766&quot;,&quot;ename&quot;:&quot;Turkmenistan&quot;,&quot;pinyin&quot;:&quot;tukumansitan&quot;},&quot;17551&quot;:{&quot;name&quot;:&quot;\u4e4c\u5179\u522b\u514b\u65af\u5766&quot;,&quot;ename&quot;:&quot;Uzbekistan&quot;,&quot;pinyin&quot;:&quot;wuzibiekesitan&quot;},&quot;17554&quot;:{&quot;name&quot;:&quot;\u8d8a\u5357&quot;,&quot;ename&quot;:&quot;Vietnam&quot;,&quot;pinyin&quot;:&quot;yuenan&quot;},&quot;17557&quot;:{&quot;name&quot;:&quot;\u4e5f\u95e8&quot;,&quot;ename&quot;:&quot;Yemen&quot;,&quot;pinyin&quot;:&quot;yemen&quot;}},&quot;pinyin&quot;:&quot;yazhou&quot;}}" />
            <input type="hidden" id="_j_wantgocountry" data-wantgo="[]" />
            <input type="hidden" id="_j_wantgoprovince" data-wantgo="[]" />
            <div class="_j_map_cnt">


                <div class="maps-container">
                    <div class="path-maps _j_map_area maps-theme-default" id="_j_mapwrap">

                        <div class="pin-topright">
                            <div class="nums" id="_j_path_number"><b>0</b>国家<i clas="icon-dot"></i><b>0</b>足迹<i clas="icon-dot"></i><b>0</b>点评
                            </div>
                        </div>

                    </div>
                </div>
                <div class="_j_mapcardwrap"></div>

            </div>
            <div class="home_bg _j_pic_cnt home_default_bg hide">
                <div class="bg_switch bg_upload _j_toppic_default">
                </div>
                <div class="bg_switch bg_show _j_toppic hide">
                    <i class="my_bg" id="_j_bgimg" style="background-image: url(); background-size:cover"></i>
                    <div class="center">

                    </div>
                    <div class="switch_btn">
                    </div>
                </div>
            </div>

        </div>
        <div class="tags_bar">
            <div class="center clearfix">
                <div data-pagelet id="pagelet-block-308697b8843d91fa388c81714144566c" class="" data-api=":home:pagelet:unSafeApi" data-params="{&quot;uid&quot;:&quot;68417719&quot;}" data-async="1" data-controller=""></div>
                <ul class="flt2">
                    <li class="on"><a class="tags_link" href="/u/68417719.html" title="我的窝">我的窝</a></li>
                    <li><a class="tags_link" href="/u/68417719/note.html" title="我的游记">我的游记</a></li>
                    <li><a class="tags_link" href="item/user-order" title="我的订单" >我的订单</a></li>
                    <li id="_j_pathnav"><a class="tags_link" href="/path/68417719.html" title="我的足迹">我的足迹</a></li>
                    <li><a class="tags_link" href="/u/68417719/review.html" title="我的点评">我的点评</a></li>
                    <li><a class="tags_link" href="/u/68417719/together.html" title="我的结伴">我的结伴</a></li>
                </ul>
            </div>
        </div>

    </div>

    <!-- 先导入jquery的包 -->
    <script src="js/jquery-easyui-1.5/jquery.min.js"></script>
    <!-- jquery easyui -->
    <script src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>



    <style>
        .flow_path_maps{
            overflow:hidden;
            position:absolute;
            top:75px;
            width:100%;
            bottom:0;
        }
        .flow_path_maps ._j_mapsizi {
            height:100%;
        }
        .flow_path_maps .flowsmall{
            width: 140px;
            height: 68px;
            position: absolute;
            right: 5%;
            bottom: 100px;
            z-index:10;
        }
        .flow_path_maps .flowsmall ._j_bg {
            width:140px;
            height:68px;
            background:#000;
            opacity:0.3;
            filter:alpha(opacity=30);
            position:absolute;
            top:0;
            left:0;
            z-index:-1;
        }
        .flow_path_maps .flowsmall .jvectormap-marker {
            display: none;
        }
        .maps-content { width:100%; height:100% }
        .flow_path_maps .jvectormap-zoomin, .flow_path_maps .jvectormap-zoomout {display:none}
    </style>
    <script type="text/x-jquery-tmpl" id="_j_addmddpanel">
<div class="path-maps-full hide">
    <div class="maps-bar">
        <div class="bg"></div>
        <div class="bar-inner">
            <div class="bar-search">
                <div class="inp-txt"><i class="icon-search _j_searchbtn"></i><input class="_j_searchmddinput _j_searchtopinput" type="text" placeholder="搜索目的地城市或国家"></div>
            </div>
            <div class="pull-right _j_topaction hide">
                <span class="path-nums">你已添加了 <em class="_j_addedcountrynum">0</em> 个国家 <em class="_j_addedmddnum">0</em> 个城市</span>
                <a class="btn btn-cancel _j_cancel" role="button">取消</a>
                <a class="btn btn-submit _j_submit" role="button">确定</a>
            </div>
        </div>
    </div>
    <div class="maps-content">
        <div class="list-bar">
            <i class="icon-mark"></i>
            <div class="panel">
                <div class="empty _j_emptyselectedcontent"><strong>添加足迹<i class="txt-lighten"></i>城市</strong><br>选择你去过的城市</div>
                <div class="_j_selectedcontent hide">
                    <div class="path-nums">你已添加了 <em class="_j_addedcountrynum">0</em> 个国家 <em class="_j_addedmddnum">0</em> 个城市</div>
                    <div class="list-viewport" style=""><div class="overflow _j_suitemdd"></div></div>
                </div>
            </div>
        </div>
        <div class="pop-addPath hide _j_paneldialog">
            <a class="close-btn _j_close" id="popup_close"><i></i></a>
            <div class="padding">
                <h3 class="title">添加足迹</h3>
                <div class="pa-search"><i class="icon-search _j_searchbtn"></i><input class="inp-txt _j_searchmddinput _j_searchinput" type="text" placeholder="搜索目的地城市或国家"></div>
                <div class="tabs">
                    <ul class="_j_pantab">
                        <li class="_j_districtselecter _j_districttabitem _j_hotdistrict hot"><a role="button">热门</a></li>
                        <li class="_j_districtselecter _j_districttabitem china" data-selectkey="17341-17348-0" data-name="国内"><a role="button">国内</a></li>
                        <li class="_j_districtselecter _j_districttabitem world" data-selectkey="0-0-0" data-name="国际"><a role="button" data-selectkey="0-0-0">国际</a></li>
                    </ul>
                    <span class="location _j_crumbwrap"></span>
                </div>
                <div style="height:180px">
                <div class="place-panel _j_placepanel">
                    <div class="list _j_placecontent" style="max-height:180px">
                        <div class="no-result _j_pannocontent" style="display:none;"></div>
                        <div class="_j_pancontent">
                            <h3 class="_j_pancontenttitle"></h3>
                            <ul class="clearfix _j_pancontentlist"></ul>
                        </div>
                    </div>
                </div>
                </div>
                <div class="action">
                    <a class="btn btn-submit _j_complete _j_close" role="button">完成</a>
                </div>
            </div>
        </div>
        <div class="flow_path_maps" style="" id="_j_flowmapwrap">
            <div class="_j_mapsizi _j_worldmapholder flowsmall" id="flowworldmap" style="margin:0 auto;overflow:visible"><div class="_j_bg"></div></div>
            <div class="_j_mapsizi _j_chinamapholder" id="flowchinamap" style="margin:0 auto;overflow:visible"><div class="_j_bg"></div></div>
        </div>
    </div>
</div>
</script>
    <script type="text/x-jquery-tmpl" id="_j_mddsuitelist">
{{each(countrymddid, info) list}}
<dl class="item-country">
    <dt><h2>${info.name}</h2><i class="icon-arrow _j_togglefolder"></i></dt>
    <dd>
        {{each(i, item) info.mddlist}}
        <a class="tag" id="_j_suitemdditem_${item.mddid}" role="button"><span>${item.name}</span><i class="icon-remove _j_removefromsuite" data-mddid="${item.mddid}"></i></a>
        {{/each}}
    </dd>
</dl>
{{/each}}
</script>
    <script type="text/x-jquery-tmpl" id="_j_hotemddlist">



    </script>




    <div class="center clearfix">
        <div class="side_bar flt1">
            <style>
                .MProfile pre {
                    white-space: pre-wrap;
                    word-break: break-word;
                    word-wrap: break-word;
                }
            </style>

            <div class="MAvatar">
                <div class="MAvaImg hasAva">
                    <img src="picture/wkgbz1kaeeiaxfnnaabxzkqrvce90.jpeg" height="120" width="120" alt="天空的青菜"></i>
                </div>
                <div class="MAvaName">天空的青菜

                    <i class="MGenderMale"></i>
                </div>

                <div class="its_tags">
                    <a href="/home/vip_show.php" target="_blank" title="VIP"><i class="vip"></i></a>
                    <a href="/rudder/info.php" target="_blank" title="分舵"><i class="duo"></i>
                        <a href="/qa/expert_apply.php?type=1" target="_blank" title="指路人"><i class="zhiluren"></i></a>
                </div>
                <div class="MAvaInfo clearfix">
                    <span class="MAvaLevel flt1">等级：<a title="Lv.1" target="_blank">Lv.1</a></span>
                    <span class="MAvaPlace flt1" title="${city}">现居：${city}</span>        <span class="MAvaSet"><a title="设置" href="/setting/" target="_blank"></a></span>
                </div>
                <div class="MAvaAction">
                    <a role="button" data-japp="following" data-uid="68417719" data-follow_class="MAvaAttentioned" class="MAvaBtn MAvaAttention">
                        <span class="MAing">关注</span>
                        <span class="MAed">已关注</span>
                        <span class="MAcancel">取消关注</span>
                    </a>
                    <a role="button" data-japp="send_message" data-to_uid="68417719" data-to_uname="天空的青菜" class="MAvaBtn MAvaEmail" title="私信">私信</a>
                </div>
                <div id="_j_profilearea" class="MAvaProfile">
                </div>
                <div class="MAvaMore clearfix">
                    <div class="MAvaNums">
                        <strong><a href="/friend/index/follow?uid=68417719" target="_blank">4</a></strong>
                        <p>关注</p>
                    </div>
                    <div class="MAvaNums">
                        <strong><a href="/friend/index/follow?uid=68417719&flag=1" target="_blank">0</a></strong>
                        <p>粉丝</p>
                    </div>
                    <div class="MAvaNums last">
                        <strong><a href="/mall/" target="_blank">0</a></strong>
                        <p>蜂蜜</p>
                    </div>
                </div>
            </div>


            <div class="MHonor">
                <div class="MHonTitle">TA获得的特权</div>
                <div class="MHonDetail" id="_j_privicnt">
                    <div class="MHonList">
                        <ul class="clearfix" id="_j_privi_listcnt">
                            <li>
                                <a href="/user/lv.php" target="_blank"><i class="_j_priviitem i2" data-description="Lv1.特权：好友上限"></a></i>
                                <a href="/user/lv.php" target="_blank"><i class="_j_priviitem i1" data-description="Lv1.特权：攻略下载"></a></i>
                            </li>
                        </ul>
                    </div>
                    <span class="MHonDescription" id="_j_privi_tip" style="display: none;"></span>
                    <div class="MHonBtn"><span class="MPrev2 _j_prev"></span><span class="MNext2 _j_next"></span></div>
                </div>
            </div>



            <div class="MUsers">
                <div class="MUsersTitle">我的关注</div>
                <div class="MUsersDetail" id="_j_followcnt">
                    <div class="MUsersAtom">
                        <ul class="clearfix _j_followlist">
                            <li>
                                <a href="/u/10024.html" target="_blank">
                                    <img src="picture/wkgbs1hpczkaoerpaacjnb21xda451.png" height="48" width="48" alt="小蜂" title="小蜂">
                                </a>
                                <p><a href="/u/10024.html" target="_blank" title="小蜂">小蜂</a></p>
                            </li>
                            <li>
                                <a href="/u/114259.html" target="_blank">
                                    <img src="picture/wkgbs1hpb8waeruuaagxkcgfy4u06.jpeg" height="48" width="48" alt="蜂窝机器人" title="蜂窝机器人">
                                </a>
                                <p><a href="/u/114259.html" target="_blank" title="蜂窝机器人">蜂窝机器人</a></p>
                            </li>
                            <li>
                                <a href="/u/461006.html" target="_blank">
                                    <img src="picture/wkgbs1hpcymautmhaaijqufguwy00.jpeg" height="48" width="48" alt="小蚂" title="小蚂">
                                </a>
                                <p><a href="/u/461006.html" target="_blank" title="小蚂">小蚂</a></p>
                            </li>
                            <li>
                                <a href="/u/90102427.html" target="_blank">
                                    <img src="picture/wkgbz1izk2sagbksaame0twzche45.jpeg" height="48" width="48" alt="蚂小蜂" title="蚂小蜂">
                                </a>
                                <p><a href="/u/90102427.html" target="_blank" title="蚂小蜂">蚂小蜂</a></p>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>



            <div class="MGroup">
                <div class="MGroupTitle">我的小组</div>
                <div class="MGroupDetail">
                    <ul>
                        <li>
                            <a href="/g/10196.html" target="_blank"><img src="picture/wkgbyu_hohi0lt7paabtd65jbdw78.jpeg" height="80" width="80" alt=""></a>
                            <a href="/g/10196.html" target="_blank" class="name" title="蜂窝广场">蜂窝广场</a>
                            <!--<p>3243贴子</p>-->
                        </li>
                        <li>
                            <a href="/g/13356.html" target="_blank"><img src="picture/wkgb4lk5t-yab6rdaadha-lmtsm225.png" height="80" width="80" alt=""></a>
                            <a href="/g/13356.html" target="_blank" class="name" title="MFW问答">MFW问答</a>
                            <!--<p>3243贴子</p>-->
                        </li>
                        <li>
                            <a href="/g/13692.html" target="_blank"><img src="picture/wkgb6lqsctuak74laac9ibkcmzq63.jpeg" height="80" width="80" alt=""></a>
                            <a href="/g/13692.html" target="_blank" class="name" title="蜂蜜商城">蜂蜜商城</a>
                            <!--<p>3243贴子</p>-->
                        </li>
                    </ul>
                </div>
            </div>


            <div class="MGuestbook" id="_j_msgboard_wrap">
                <div class="MGuestTitle">留言板
                </div>
                <div class="MGuestInput">
                    <textarea class="_j_msgboard_area" placeholder="给楼主留个脚印，说点什么..."></textarea>
                    <a role="button" class="MGuestBtn" title="留言" id="_j_msgboard_submit">留言</a>
                </div>
                <div class="MGuestList">
                    <ul class="_j_msgboard_list">

                    </ul>
                </div>
            </div>



            <div class="placehold76" id="_j_music_placeholder">
                <div class="music_block clearfix music_fixed" id="_j_musiccnt">
                    <div class="music_bar"><span class="process _j_progress" style="width:0"></span></div>
                    <div class="music_botton" id="music">
                        <div class="hd_audio"></div>
                        <a role="button" class="pause _j_m_control">
                            <i></i>
                            <i></i>
                            <i></i>
                            <i></i>
                            <i></i>
                            <img src="picture/music.gif">
                        </a>
                        <span class="ico_slide prev _j_prev"></span>
                        <span class="ico_slide next _j_next"></span>
                    </div>
                    <div class="music_info">
                        <span class="name"></span>
                        <span>来自</span>
                        <a href="javascript:void(0);">暂无</a>
                    </div>
                </div>

            </div>

        </div>
        <div class="content flt2">
            <div class="common_block main_links">
                <ul class="clearfix">
                    <li><a href="/note/create_index.php" target="_blank"><i class="write_note"></i><span>写游记</span></a></li>
                    <li><a href="/wenda/" target="_blank"><i class="ask_expert"></i><span>问达人</span></a></li>
                    <li><a href="/path/" target="_blank"><i class="add_footprint"></i><span>添加足迹</span></a></li>
                    <li class="last"><a href="/together/" target="_blank"><i class="invite_friends"></i><span>发布结伴</span></a></li>
                </ul>
            </div>


            <div class="common_block my_notes">


                <div class="common_title clearfix">
                    <h2>我的游记</h2>

                </div>
                <div class="notes_default_v2">
                    <div class="notes_dcon">
                    </div>
                    <a href="/note/create_index.php" title="写游记" class="btn_write"><i></i>写游记</a>
                </div>



                <div class="more_notes">
                </div>

            </div>

            <script>
                M.closure(function() {
                    M.Event.on('note cover setted', function(args) {
                        $.get('/note/ajax.php?act=getNoteCover&iid='+args.iid, function(res) {
                            if(res && res.data) {
                                $('#_j_coverlink_'+args.iid).children('img').attr('src', res.data.url);
                            }
                        }, 'json');
                    });
                });
            </script>




            <div class="common_block my_notes">
                <div class="common_title clearfix">
                    <h2>我的点评</h2>
                </div>
                <div class="notes_default dp_default">
                    <i class="ico_notes"></i>
                    <div class="notes_default_detail">
                        <p>点评，不仅是旅途记忆，<br>更是帮助他人的宝贵财富。</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<link href="css/mfw-footer.css" rel="stylesheet" type="text/css"/>

<div id="footer">
    <div class="ft-content">
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


<link href="css/mfw-toolbar.css" rel="stylesheet" type="text/css"/>

<div class="mfw-toolbar" id="_j_mfwtoolbar">
    <div class="toolbar-item-top">
        <a role="button" class="btn _j_gotop">
            <i class="icon_top"></i>
            <em>返回顶部</em>
        </a>
    </div>
    <div class="toolbar-item-feedback">
        <a role="button" data-japp="feedback" class="btn">
            <i class="icon_feedback"></i>
            <em>意见反馈</em>
        </a>
    </div>
    <div class="toolbar-item-code">
        <a role="button" class="btn">
            <i class="icon_code"></i>
        </a>
        <a role="button" class="mfw-code _j_code">


            <img src="picture/wkgbs1gjdcmakfxuaaerzrj4yus61.jpeg" width="300" height="192" >
        </a>
        <!--<div class="wx-official-pop"><img src="picture/qrcode-weixin.gif"><i class="_j_closeqrcode"></i></div>-->
    </div>
    <div class="toolbar-item-down">
        <a role="button" class="btn _j_gobottom">
            <i class="icon_down"></i>
            <em>页面底部</em>
        </a>
    </div>
</div>



<script language="javascript" type="text/javascript">
    if (typeof M !== "undefined" && typeof M.loadResource === "function") {
        M.loadResource("http://js.mafengwo.net/js/cv/js+pageletcommon+pageHeadUserInfoWWWDark:js+home+AIndexTopCover:js+jquery-jvectormap-2.0.1.min:js+jvector-china:js+jvector-world:js+new_mdd_lnglat_map:js+jvmap:js+path+jvmap:js+path+ChinaWorldMap:js+home+ATopMap:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+jquery.mousewheel.min:js+M+module+ScrollBar:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+dialog+confirm:js+path+AAddCityPanel:js+M+module+Slider:js+home+APrivilege:js+M+module+dialog+alert:js+M+module+FrequencyVerifyControl:js+M+module+FrequencyAppVerify:js+home+AMsgBoard:js+jquery.jplayer:js+home+AMusicPlayer:js+M+module+PageAdmin:js+M+module+Storage:js+M+module+Cookie:js+M+module+ResourceKeeper:js+jquery.jgrowl.min:js+AMessage:js+M+module+FrequencySystemVerify:js+ALogin:js+M+module+ScrollObserver:js+M+module+QRCode:js+AToolbar:js+ACnzzGaLog:js+ARecruit:js+ALazyLoad^alFU^1500358831.js");
    }
</script>

</body>
</html>

