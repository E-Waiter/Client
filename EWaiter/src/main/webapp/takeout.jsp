<!DOCTYPE html>
<%@page import="com.EWaiter.model.food.SortGroupsModel"%>
<%@page import="com.EWaiter.model.food.FoodSortModel"%>
<%@page import="com.EWaiter.util.commonUtil"%>
<%@page import="com.EWaiter.model.food.FoodModel"%>
<%@page import="com.EWaiter.model.food.FoodTypeModel"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<html>
<head>

<%
	List<FoodTypeModel> foodTypes  =(List<FoodTypeModel>) request.getAttribute("foodTypes");
	Long dID = (Long)request.getAttribute("deskID");
	Long merID =(Long)request.getAttribute("merID");
	String merName = (String)request.getAttribute("merName");

%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=merName %></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link type="text/css"
	href="../resource/css/custom-theme/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
<link type="text/css" href="../resource/css/table_style.css" rel="stylesheet" />
<script src="../resource/js/analytics.js"></script>
<script src="../resource/js/jquery-1.8.3.min.js"></script>
<script src="../resource/js/jquery-ui-1.10.0.custom.min.js"></script>
<script src="../resource/js/bootstrap.min.js"></script>
<script src="../resource/js/jquery-ui-1.10.0.custom.min.js"></script>
<script type="text/javascript">
	$(function() {
		// Dialog message
		$("#showDetail").dialog({
			autoOpen : false,
			modal : true,
			resizeable : false,
			//width : 400,
			buttons : {
				"提交" : function() {
					var json = $('#foodJson').attr('data');
					$.ajax({
						type : "POST",
						data : "order=" +"{'uID':'2','dID':'2','merID':'1','number':'5','method':'2','note':'老客户','phone':'13922151165','foods':[{'foodID':'1','number':'2','type':'大','des':'....'},{'foodID':'2','number':'1','type':'中','des':'不放糖'},{'foodID':'3','number':'1','type':'大','des':'....'}]}",
						url : "/HuhuWeb/order/commitOrder",
						success : function(data) {
							alert(data);
							$(this).dialog("close");
						}
					});
				},
				"取消" : function() {
					$(this).dialog("close");
				}
			}
		});

		// Modal Link
		$('#detail').click(function() {
			var contact = $('#showDetail tbody').text();
			if (contact == "") {
				$('#showDetail').empty();
				$('#showDetail').append('暂无订单');
			}
			$('#showDetail').dialog('open');
			$('.ui-dialog').css({
				"overflow" : "auto",
				"max-height":"80%",
				"width" : "70%",
				"left" : "15%"
			});
			return false;
		});
	});

	var MT_WM = window.MT_WM || {};
	MT_WM.TimeTracker = {
		rt : 1410965629683,
		st : Date.now()
	};
	MT_WM.logFirstScreenTime = function() {
		MT_WM.TimeTracker.fst = Date.now();
	};
	window.addEventListener('load', function() {
		//保存性能时间
		MT_WM.TimeTracker.lt = Date.now();
	});
	MT_WM.STATIC_ROOT = '#';
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
	ga('create', 'UA-45741865-3', '#');
	ga('send', 'pageview');
</script>
<link rel="stylesheet"
	href="../resource/css/global.css">

<link
	href="../resource/css/foods.css"
	rel="stylesheet">

</head>
<body>
	<div id="menuwrap" class="menuwrap"
		style="top: 0px; position: absolute; bottom: 0px; height: auto;">
		<div id="asidewrap" class="asidewrap">
			<div class="taglist"
				style="transition: 0ms cubic-bezier(0.1, 0.57, 0.1, 1); -webkit-transition: 0ms cubic-bezier(0.1, 0.57, 0.1, 1); transform: translate(0px, 0px) translateZ(0px);">
				
			<%for(FoodTypeModel foodTypeModel : foodTypes)
					{
					String tag = "\""+"tag" + foodTypeModel.getId()+"\"";
					String dataKey = "\""+foodTypeModel.getId()+"\"";
					%>
					<button id=<%=tag %>class="j-tag tag" data-key=<%=dataKey %>>
					<%=foodTypeModel.getName()%></button>		
					
				<%} %>	
				<div class="datail-link-placeholder"></div>
				<div class="cart-placeholder"></div>
			</div>
		</div>

		<div id="mainwrap" class="mainwrap">
			<div class="foodlistwrap"
				style="transition: 0ms cubic-bezier(0.1, 0.57, 0.1, 1); -webkit-transition: 0ms cubic-bezier(0.1, 0.57, 0.1, 1); transform: translate(0px, 0px) translateZ(0px);">
				
				<%for(FoodTypeModel foodTypeModel : foodTypes)
					{
					String id = "\""+"foodlist" + foodTypeModel.getId()+"\"";
					Set<FoodModel> foods = foodTypeModel.getFoodModels();
					%>
					
					<ul id=<%=id %> class="j-foodlist foodlist"
					style="display: none">
					<%
						for(FoodModel food :foods)
						{
							String name = food.getName();
							double price =food.getPrice();
							long fid = food.getId();
							
							SortGroupsModel sortGroupsModel = food.getSortGroupsModel();
							Set<FoodSortModel> foodSortModels = null;
							if(sortGroupsModel != null)
							{
								foodSortModels = sortGroupsModel.getFoodSortModels();
							}
							
							String foodID = commonUtil.addDoubleQuotation("food" + fid);
							
					%>
					
					<li id=<%=foodID%> class="fooditem" data-price=<%=commonUtil.addDoubleQuotation(price) %>>
						<div class="food-content1 clearfix">
							<div class="j-foodname foodname"><%=name %></div>
							<!-- <div class="food-content1-sub">
								<span>月售&nbsp;0</span>
							</div> -->
						<select class="food-type" data-native-menu='false'>
							<% 
							if(foodSortModels != null)
								
							{
							for(FoodSortModel sort :foodSortModels)
							{
							%>
							<option><%=sort.getName() %></option>
							
							<%} }%>
						</select>
						
							
						</div>
						
						<div class="food-content2">
							<div class="j-item-console foodop clearfix" data-price=<%=commonUtil.addDoubleQuotation(price) %>
								data-serial=<%=commonUtil.addDoubleQuotation(fid) %>>
								<a class="j-add-item add-food" href="javascript:;"><i
									class="icon-plus"></i></a> <span class="j-item-num foodop-num"
									style="display: none">0</span> <a
									class="j-remove-item remove-food" style="display: none"
									href="javascript:;"><i class="icon-minus"></i></a>
							</div>
							
							<div class="food-price"><%=price %></div>
							
							
							
				
						</div>
					</li>
					<%} %>	
					</ul>
					
				<%} %>	
				<div class="cart-placeholder"></div>
			</div>
		</div>
	</div>
	<div id="cart" class="cart">
		<div class="cart-tip">
			<div class="cart-icon">
				<span class="j-cart-price cart-price" style="font-size: 27px">￥0</span>
				<i class="icon-cart"></i>
				<div class="j-cart-num cart-num" style="display: none;">0</div>
			</div>

		</div>
	
		<div class="cart-btns" >
			<a id="detail" class="j-cart-btn-confirm cart-btn-confirm" 
				href="#">点好了</a> 
		</div>
	</div>

	<!--  <a id="details" class="detail-link" href="#"><span
		class="i-circle detail-link-inner"><i class="icon-shop"></i></span></a>-->

	<div id="showDetail" title='我的菜单'>
		<div data="" id='foodJson'></div>
		<table id="hor-minimalist-a" summary="Employee Pay Sheet">
			<thead>
				<tr>
					<th scope="col">菜名</th>
					<th scope="col">数量</th>
					<th scope="col">价格</th>
				</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
	</div>

	<script src="../resource//js/wm_lib_5264fc88.js"></script>

	<script src="../resource//js/foods.js"></script>
	<script>
		require([ 'page/restaurant/foods' ], function(foodsPage) {
			foodsPage.init({
				minPrice : '30',
				poi : '33429'
			});
		});
	</script>




</body>
</html>ml>