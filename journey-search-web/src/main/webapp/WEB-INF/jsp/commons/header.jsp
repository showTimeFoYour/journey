<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!--shortcut start-->
<jsp:include page="shortcut.jsp"/>
<!--shortcut end-->
<div id="header">
    <div class="header_inner">
        <div class="logo">

            <div class="index_topad" id="playLogo" style="">
                <a href="#" target="_blank">
                    <img src="images/html/a.jpg">
                </a>
            </div>
            <a name="sfbest_hp_hp_head_logo" href="http://www.ttshop.com" class="trackref logoleft">
            </a>

        </div>
        <div class="index_promo"></div>
        <div class="search">
            <form action="${pageContext.request.contextPath}/search" id="searchForm" name="query" method="GET">
                <input type="text" class="text keyword ac_input" name="keyword" id="keyword" value=""
                       style="color: rgb(153, 153, 153);"
                       onkeydown="javascript:if(event.keyCode==13) search_keys('searchForm');" autocomplete="off">
                <input type="button" value="" class="submit" onclick="search_keys('searchForm')">
            </form>

        </div>
        <div class="shopingcar" id="topCart">
            <s class="setCart"></s><a href="http://localhost:8089/cart/cart.html" class="t" rel="nofollow">我的购物车</a><b
                id="cartNum">0</b>
            <span class="outline"></span>
            <span class="blank"></span>
            <div id="cart_lists">
                <!--cartContent-->
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function search_keys(formName) {
        console.log(formName)
        debugger;
        $('#' + formName).submit();
    }
</script>