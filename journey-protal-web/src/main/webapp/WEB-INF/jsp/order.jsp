
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>确认提交订单</title>

    <meta http-equiv="Pragma" content="no-cache" />
    <link href="http://css.mafengwo.net/css/cv/css+base:css+jquery.suggest:css+plugins:css+plugins+jquery.jgrowl:css+other+popup:css+mfw-header.2015^YlVS^1493708283.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="http://js.mafengwo.net/js/cv/js+jquery-1.8.1.min:js+global+json2:js+M+Module:js+M+M:js+M+Log:js+m.statistics:js+advert+inspector^alw^1511419343.js" type="text/javascript" crossorigin="anonymous"></script>
    <script language="javascript" src="http://js.mafengwo.net/js/cv/js+common+jquery.plugins:js+common+widgets:js+mfw.storage^ZlI^1493174421.js" type="text/javascript" crossorigin="anonymous"></script>
    <link href="http://css.mafengwo.net/css/cv/css+sales+order-outer:css+plugins+jquery.datetimepicker:css+jquery-ui-1.11.0.min:css+mfweditor+mfweditor^YlVX^1511347550.css" rel="stylesheet" type="text/css" />
    <script language="javascript" src="http://js.mafengwo.net/js/cv/js+plugins+jquery.datetimepicker:js+yiwofeng+userinfo:js+sales+booking_v2:js+idcard:js+localdeals+rest:js+jquery-ui-1.11.0.min:js+localdeals+hotelAutoComplete:js+jquery.mailAutoComplete-3.1:js+connect_share:js+yiwofeng+common:js+sales+page_event_statistics^YVBV^1504602818.js" type="text/javascript" crossorigin="anonymous"></script>

</head>

<body>

<div id="header" xmlns="http://www.w3.org/1999/html">
    <div class="mfw-header">
        <div class="header-wrap clearfix">
            <ul class="head-nav" data-cs-t="headnav" id="j_head_nav1">

                <li class="head-nav-place" >
                    <a href="#" title="订单信息">订单信息页</a>
                </li>
            </ul>

            <ul class="head-nav"  id="u1">
                <li class="head-nav-index" data-cs-p="index">
                    <a href="${pageContext.request.contextPath}/">首页</a>
                </li>
                <li class="head-nav-place" >
                    <a href="#" title="目的地">目的地</a>
                </li>
                <li class="head-nav-gonglve" >
                    <a href="#" title="旅游攻略">旅游攻略</a>
                </li>
                <li class="head-nav-sales head-nav-dropdown _j_sales_nav_show" id="_j_nav_sales" data-cs-p="sales">
                    <a class="drop-toggle" href="#" style="cursor: pointer;display: block;border-bottom:0 none;" data-sales-nav="自由行商城">
                        <span>自由行商城<i class="icon-caret-down"></i></span>
                    </a>

                </li>
                <li class="head-nav-hotel" data-cs-p="hotel">
                    <a href="#" title="酒店">酒店</a>
                </li>
                </li>
                <li class="head-nav-app" data-cs-p="app">
                    <a href="http://www.mafengwo.cn/app/intro/gonglve.php" title="APP">APP</a>
                </li>
            </ul>
            <div class="head-search" data-online="1">
                <div class="head-search-wrapper">
                    <div class="head-searchform">
                        <input name="q" type="text" id="_j_head_search_input" autocomplete="off">
                        <a role="button" href="javascript:" class="icon-search" id="_j_head_search_link"></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="shadow"></div>
    </div>

</div>
<!-- 新自由行菜单 end -->
<script>
    //判断是否显示 下拉bar
    ;
    (function() {
        window.showBarFlag = true;
        var realPathName = location.pathname,
            $nav = $('#Js_middleNav');
        var regExp = /localdeals|sales|flight|insurance|activity/gi;
        var pathArr = realPathName.match(regExp);
        if(window.Env.middleNavHide) {
            $('.dropdown-bar').hide();
            return;
        }
        if(realPathName == '/sales/0-0-0-5-0-0-0-0.html' || window.Env.salesType == 5) {
            $nav.children('[data-type="cruise"]').addClass('on');
            window.showBarFlag = false;
            $('.dropdown-bar').show();
        } else if(realPathName == '/localdeals/0-0-0-21-0-0-0-0.html' || window.Env.salesType == 21) {
            $nav.children('[data-type="wifi"]').addClass('on');
            window.showBarFlag = false;
            $('.dropdown-bar').show();
        } else if(window.Env.sales_title_tag == 'visa' || window.Env.salesType == 4) {
            $nav.children('[data-type="visa"]').addClass('on');
            window.showBarFlag = false;
            $('.dropdown-bar').show();
        } else if(window.Env.sales_title_tag == 'semi_self_service' || realPathName == '/sales/0-0-0-6-0-0-0-0.html?group=4' || window.Env.salesType == 30 || window.Env.salesType == 6) {
            $nav.children('[data-type="freewalker"]').addClass('on');
            window.showBarFlag = false;
            $('.dropdown-bar').show();
        } else if(window.Env.salesType) {
            switch(window.Env.salesType | 0) {
                case 1:
                case 3:
                    $nav.children('[data-type="sales"]').addClass('on');
                    break;
                case 2:
                    $nav.children('[data-type="localdeals"]').addClass('on');
                    break;
                case 30:
                case 6:
                    $nav.children('[data-type="freewalker"]').addClass('on');
                    break;
                default:
                    $nav.children('[data-type="localdeals"]').addClass('on');
                    break;
            }
            window.showBarFlag = false;
            $('.dropdown-bar').show();
        } else {
            if(pathArr) {
                if(pathArr.length == 1 && pathArr[0] != 'activity') {
                    switch(pathArr[0]) {
                        case 'localdeals':
                            $nav.children('[data-type="localdeals"]').addClass('on');
                            break;
                        case 'insurance':
                            $nav.children('[data-type="insurance"]').addClass('on');
                            break;
                        case 'sales':
                            $nav.children('[data-type="sales"]').addClass('on');
                            break;
                        case 'flight':
                            $nav.children('[data-type="flight"]').addClass('on');
                            break;
                        default:
                            break;
                    }
                    window.showBarFlag = false;
                    $('.dropdown-bar').show();
                } else {
                    if('activity'.indexOf(pathArr) != -1) {
                        window.showBarFlag = true;
                        $('.dropdown-bar').hide();
                    }
                }
            }
        }
        // 点击时触发
        $('.ul-dropdown-bar > li').on('click', function() {
            $(this).addClass('on').siblings().removeClass('on');
        });
    })();
</script>

</div>
<style>



    input[type=date]::-webkit-inner-spin-button { visibility: hidden; }
    ::-webkit-datetime-edit { padding: 1px; background: url(../selection.gif); }
    ::-webkit-datetime-edit-fields-wrapper { background-color: #eee; }
    ::-webkit-datetime-edit-text { color: #4D90FE; padding: 0 .3em; }
    ::-webkit-datetime-edit-year-field { color: purple; }
    ::-webkit-datetime-edit-month-field { color: blue; }
    ::-webkit-datetime-edit-day-field { color: green; }
    ::-webkit-inner-spin-button { visibility: hidden; }
    ::-webkit-calendar-picker-indicator {
        border: 1px solid #ccc;
        border-radius: 2px;
        box-shadow: inset 0 1px #fff, 0 1px #eee;
        background-color: #eee;
        background-image: -webkit-linear-gradient(top, #f0f0f0, #e6e6e6);
        color: #666;

</style>

<form  id="order" method="post"  action="${pageContext.request.contextPath}/item/add" onsubmit="return  checkForm();">
<div class="wrapper">
    <div class="order-cont clearfix">
        <div class="order-lt">
            <div class="trav-inf">
                <h2><i class="_j_step_num">1</i>主要出行人信息（<span>用于安排出行人行程</span>）</h2>
                <div class="template-form">

                    <div class="user-int clearfix">
                        <div class="form-sec flt1"><label for="name1">姓名</label>
                            <input type="text" name="name" class="template-field" placeholder="拼音姓名"  data-helper="确认姓名正确" id="name1" data-key="name_en" data-parentid="19" value="" data-rule="12">
                            <span id="msg1"></span>
                        </div>

                    </div>
                </div>
                <div class="user-int clearfix">
                    <div class="form-sec flt1"><label for="phone">电话</label>
                        <input type="text" name="phone" class="template-field" placeholder="电话" data-title="电话信息" data-helper="确认电话正确" id="phone"  data-parentid="19" value="" data-rule="12">
                        <span id="msg2"></span>
                    </div>
                </div>
            </div>
            <div class="res-inf" id="baseInfoForm">
                <h2><i class="_j_step_num">2</i>订单信息（<span>具体订单信息</span>）</h2>
                <div class="user-int clearfix">
                    <div class="form-sec flt1" style="clear: both">
                        <label for="title">订单标题</label>
                        <input id="title" name ="title" id="title" type="text" class="bord-red"  value="" data-required="1" data-title="订单标题">
                        <span id="msg3"></span>
                    </div>
                    <div class="form-sec flt1" style="clear: both">
                        <label for="num">人数</label>
                        <div class="parentCls">
                            <input data-E  name="num" id="num" type="text" class="bord-red" placeholder="请填写人数" value="" data-required="1" data-title="人数">
                            <span id="msg4"></span>
                        </div>

                    </div>
                    <div class="ver-code clearfix">
                        <p class="form-sec flt1">
                            <label for="price">价格</label>
                            <input  name="price" id="price" type="text" placeholder="价格" value="" data-required="1" data-title="价格">
                            <span id="msg5"></span>
                        </p>
                    </div>
                   <div class="ver-code clearfix">
                        <p class="form-sec flt1">
                            <label for="start">出发日期</label>
                            <input id="start" name="start" type="date" placeholder="" value="" data-required="1" data-title="出发日期" >
                            <span id="msg6"></span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sub-order">

<input class="btn-order" id="submit" type="submit"></div>
</div>
<div style="height: 200px;"></div>
</div>
</form>

<script>
function  checkForm() {
      var test= confirm("确认提交?")
      if(test)
      {
          var name = $("#name1").val();
          if(name == '' || name == null)
          {
              $("#msg1").html("主要联系人不能为空");
              return false;
          }
          else
          {
              $("#msg1").html("");
          }
          var phone = $("#phone").val();
          if(phone == '' && phone == null)
          {
              $("#msg2").html("电话不能为空");
              return false;
          }
          else
          {
                var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
                if (!myreg.test(phone)) {
                   console.log(myreg.test(phone)) ;
                  $("#msg2").html("电话格式不正确");
                   return false;
                } else {
                  $("#msg2").html("");
                  return true;
                }

          }
          var title = $("#title").val();
          if(title == '' && title == null)
          {
              $("#msg3").html("标题不能为空");
              return false;
          }
          else
          {
              $("#msg3").html("");
          }

          var num = $("#num").val();
          if(num == '' && num == null)
          {
              $("#msg4").html("人数不能为空");
              return false;
          }
          else
          {
              $("#msg4").html("");
          }

          var price = $("#price").val();
          if(price == '' && price == null)
          {
              $("#msg5").html("价格不能为空");
              return false;
          }
          else
          {
              $("#msg5").html("");
          }

          return true;
      }
      else
      {
          return false;
      }
}


</script>
<script>
    $(function() {
        //  收起展开
        var bOpen = true;
        $('.main-trav h3 span.collect').click(function() {
            if(bOpen) {
                $(this).parent().next().slideUp();
                $(this).addClass('act').html('展开<i></i>');
                bOpen = false;
            } else {
                $(this).parent().next().slideDown();
                $(this).removeClass('act').html('收起<i></i>');
                bOpen = true;
            }
        });
        //  input框选中效果
        $('.form-sec').each(function() {
            var $this = $(this).on('focusin', function() {
                $(this).addClass('form-sec-active');
            }).on('focusout change', function() {
                $(this).removeClass('form-sec-active');
            }).on('change focusout', function() {
                if($this.find('input,select,textarea').val().length > 0) {
                    $(this).addClass('form-sec-focus');
                } else {
                    $(this).removeClass('form-sec-focus');
                }
            });
        });
        $('input[data-helper],textarea[data-helper]').focus(function() {
            var holder = $(this).attr('placeholder');
            $(this).data('_placeholder', holder);
            $(this).attr('placeholder', $(this).data('helper'));
        }).blur(function() {
            $(this).attr('placeholder', $(this).data('_placeholder'));
        });

    })
</script>
<link href="http://css.mafengwo.net/css/mfw-footer.css?1493174418" rel="stylesheet" type="text/css" />
<link href="http://css.mafengwo.net/css/mfw-toolbar.css?1493174418" rel="stylesheet" type="text/css" />

</body>

</html>