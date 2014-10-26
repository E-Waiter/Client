<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>美团外卖</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link href="//p0.meituan.net" rel="dns-prefetch">
<link href="//p1.meituan.net" rel="dns-prefetch">
<link href="//mc.meituan.net" rel="dns-prefetch">
<link rel="shortcut icon" type="image/vnd.microsoft.icon"
	href="/static/img/favicon.png">
<link rel="icon" href="/static/img/favicon.png" size="16x16 32x32">
<script src="//www.google-analytics.com/analytics.js" async=""></script>
<script>
	var MT_WM = window.MT_WM || {};
	MT_WM.TimeTracker = {
		rt : 1410359555769,
		st : Date.now()
	};
	MT_WM.logFirstScreenTime = function() {
		MT_WM.TimeTracker.fst = Date.now();
	};
	window.addEventListener('load', function() {
		//保存性能时间
		MT_WM.TimeTracker.lt = Date.now();
	});
	MT_WM.STATIC_ROOT = 'http://xs01.meituan.net/waimai_i/54101c7f';
	function delayGo(u, t) {
		setTimeout(function() {
			if (typeof u == 'string')
				location = u;
			else if (typeof u == 'function')
				u();
		}, (t == null ? 300 : t));
	}
</script>
<script type="text/javascript">
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');
	ga('create', 'UA-45741865-3', 'i.waimai.meituan.com');
	ga('send', 'pageview');
</script>
<link rel="stylesheet" href="global.css">
<link href="foods.css" rel="stylesheet">

</head>
<body>

	<header id="header" class="banner page-banner">
		<a class="back-wrap" href="/"
			onclick="if(document.referrer){delayGo(function(){history.go(-1)});return false;}">
			<i class="icon i-back"></i> <span class="goback">返回</span>
		</a>
		<h1 class="page-name">湘鄂情（国贸）</h1>
	</header>
	<div id="top-wrap" class="top-wrap"></div>

	<div id="menuwrap" class="menuwrap"
		style="position: absolute; top: 44px; bottom: 0px; height: auto;">
		<div id="asidewrap" class="asidewrap">
			<div
				style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);"
				class="taglist">
				<button id="tag9915106" class="j-tag tag" data-key="9915106">
					家乡美食</button>
				
				<div class="datail-link-placeholder"></div>
				<div class="cart-placeholder"></div>
			</div>
		</div>

		<div id="mainwrap" class="mainwrap">
			<div
				style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);"
				class="foodlistwrap">
				<ul style="display: none;" id="foodlist9915106"
					class="j-foodlist foodlist">
					
					
					<li id="food2353079" class="fooditem" data-price="78">
						<div class="food-content1 clearfix">
							<div class="j-foodname foodname">干锅湘之驴</div>
							<div class="food-content1-sub">
								<span>月售&nbsp;0</span>
							</div>
						</div>
						<div class="food-content2">
							<div class="j-item-console foodop clearfix" data-price="78"
								data-serial="2353079">
								<a class="j-add-item add-food" href="javascript:;"><i
									class="icon-plus"></i></a> <span class="j-item-num foodop-num"
									style="display: none">0</span> <a
									class="j-remove-item remove-food" style="display: none"
									href="javascript:;"><i class="icon-minus"></i></a>
							</div>
							<div class="food-price">78 元/例</div>
						</div>
					</li>
				
				</ul>
				
				<div class="cart-placeholder"></div>
			</div>
		</div>
	</div>
	<div id="cart" class="cart">
		<div class="cart-tip">
			<div class="cart-icon">
				<i class="icon-cart"></i>
				<div class="j-cart-num cart-num" style="display: none"></div>
			</div>
			<span class="j-cart-price cart-price">￥0</span>
		</div>
		<div class="cart-btns" style="">
			<a class="cart-btn-unavail" href="javascript:;">休息中</a>
		</div>
		<div class="cart-btns" style="display: none">
			<a class="j-cart-btn-confirm cart-btn-confirm" style="display: none"
				href="javascript:;">点好了</a> <a
				class="j-cart-btn-unavail cart-btn-unavail">差30元起送</a>
		</div>
	</div>

	<a id="detail-link" class="detail-link" href="/restaurantDetail/33429"><span
		class="i-circle detail-link-inner"><i class="icon-shop"></i></span></a>

	<script>
		if (MT_WM.logFirstScreenTime)
			MT_WM.logFirstScreenTime();
	</script>
	<script
		src="wm_lib_5264fc88.js"></script>









	<script>
		require.config({
			baseUrl : "http://xs01.meituan.net/waimai_i/54101c7f/js"
		});
	</script>
	<script>
		Raven.config('http://10f3bc81812043618cb5a7c3279d4237@sentry.sankuai.com/74').install();
	</script>
	<script src="foods.js"></script>
	<script>
		require([ 'page/restaurant/foods' ], function(foodsPage) {
			foodsPage.init({
				minPrice : '30',
				poi : '33429'
			});
		});
	</script>

</body>
</html>