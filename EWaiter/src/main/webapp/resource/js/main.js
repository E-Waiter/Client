var RestaurantSign;
var $dish_scroller;
var $dish_detail_scroll;
var $menu_load = false;
var $dish_load = false;
var $shop_load = false;
var $table_load = false;
var $order;
var $table_data_id = null;
var $blazy_control;
var $last_click_time = new Date().getTime();
var $timer_search;
var $person_data_id = null;
var $carteAll = JSON.parse(localStorage.getItem('$carteAll')).data.menu;
var orderList;
var totalPrice;
function loadLazy(targetId, defaultImg) {
	var blazy = new Blazy({
		container: '#' + targetId,
		error: function(ele, msg) {
			ele.src = defaultImg;
		}
	});
	return blazy;
};
function submitOrder() {
	orderList = {
		"foods": []
	};
	for (var j = 0; j < $order.size(); j++) {
		var food = new Object();
		food.foodID = $order.get(j).id;
		food.number = $order.get(j).num;
		food.name = $order.get(j).name;
		food.price = $order.get(j).price;
		food.type = '大';
		food.des = '暂时描述';
		orderList.foods.push(food);
	}
	var sub_DB_Remark = ($("#remark_input").val() == "请输入特殊要求" ? "": $("#remark_input").val());
	var sub_DB_Person_Count = ($("#person_count_input").val() == "请输入用餐人数" ? "": $("#person_count_input").val());
	if ($.trim(sub_DB_Person_Count) == "") {
		showdialog(0, "请输入您的用餐人数", focusOnPersonCount);
		return;
	}
	if (isNaN($.trim(sub_DB_Person_Count))) {
		showdialog(0, "请输入数字,如数字1或数字2", focusOnPersonCount);
		return;
	}
	var sub_DB_Phone = localStorage.getItem('phone');
	orderList.des = sub_DB_Remark;
	orderList.phone = sub_DB_Phone;
	orderList.uID = $carteAll.deskID;
	orderList.dID = 2;
	orderList.merID = $carteAll.merID;
	orderList.number = sub_DB_Person_Count;
	orderList.method = 2;
	orderList.note = '老客户';
	var sub_data = JSON.stringify(orderList);
	function focusOnPhone() {
		$("#phone_input").focus();
	}
	function focusOnPersonCount() {
		$("#person_count_input").focus();
	}
	function localOrder() {
		jAjax({
			type: "POST",
			url: "/EWaiter/order/commitOrder",
			data: "orderInfo=" + sub_data,
			showLoading: true,
			success: function(data) {
				var obj = eval('(' + data + ')');
				if (obj.code == 1) {
					$("#carte_dish").html('');
					$("#dish_list").find('.dish_add').css('display', 'block');
					$("#dish_list").find('.dish_ope').css('display', 'none');
					$("#dish_list").find('.number').html(0);
					$("#dish_category_scroller").find(".num").css('display', 'none').html(0);
					$("#dish_list").find(".dish_item").css('background-color', '#FFF');
					$order = new ArrayList();
					showdialog(1, "下单成功！", toOrderDetailPage(obj));
					$(".dish_list_active").css('border-bottom', '1px solid #f3f4f4').find(".vip").show();
				} else {
					showdialog(1, obj.msg);
				}
			},
			error: function() {
				showdialog(1, "请求失败!");
			}
		});
	};
	localOrder();
}
function addNewOrder() {
	submitOrder();
}
function toCartePage() {
	var dishList = {
		"list": []
	};
	for (var i = 0; i < $order.size(); i++) {
		var dish = $order.get(i);
		dishList.list.push(dish);
	}
	$("#carte_dish").html(tmpl("order-dish-item", eval('(' + JSON.stringify(dishList) + ')')));
	new iScroll("carte_dish_scroller", {
		hScrollbar: false,
		vScrollbar: false,
		lockDirection: true,
		hScroll: false,
		vScroll: true,
		useTransition: true,
		click: true
	});
	bindOrderOpeAction($("#carte_dish"));
}
function toOrderDetailPage(data) {
	orderList.totalPrice = totalPrice;
	orderList.orderID = data.orderID;
	orderList.time = data.time;
	orderList.name = $carteAll.name;
	$("#slider_order").html(tmpl("tmpl-order-info", eval('(' + JSON.stringify(orderList) + ')')));
	$dish_scroller = new iScroll("order_list_scroller", {
		hScrollbar: false,
		vScrollbar: false,
		lockDirection: true,
		hScroll: false,
		vScroll: true,
		useTransition: true,
		click: true,
	});
	document.getElementById("carte_page").style.webkitTransform = "translate3d(100%,0,0)";
	document.getElementById("slider_order").style.webkitTransform = "translate3d(0,0, 0)";
	$('#order-back').bind("click",
	function() {
		refreshCart("dish_info");
		document.getElementById("slider_order").style.webkitTransform = "translate3d(100%,0, 0)";
		document.getElementById("slider_dish").style.webkitTransform = "translate3d(0,0,0)";
	});
}
function refreshCart(targetId) {
	setTimeout(function() {
		var total_number = 0;
		var total_price = 0.0;
		$("#dish_menu").find("li[d-id]").find(".num").html(0).hide();
		var _tmp = [];
		var arry = [];
		for (var i = 0; i < $order.size(); i++) {
			var dishItemTemp = $order.get(i);
			total_number += dishItemTemp.num;
			total_price += dishItemTemp.num * dishItemTemp.price;
			var add_flag = true;
			for (var ii in _tmp) {
				if (_tmp[ii].ctid == dishItemTemp.ctid) {
					_tmp[ii].num += dishItemTemp.num;
					add_flag = false;
					break;
				}
			};
			if (add_flag) {
				_tmp.push({
					ctid: dishItemTemp.ctid,
					num: dishItemTemp.num
				});
			};
			for (var ii in _tmp) {
				$("[d-id='" + _tmp[ii].ctid + "']").find(".num").html(_tmp[ii].num).show();
			};
		};
		totalPrice = total_price;
		$("#" + targetId).html("<span style='font-family: Arial;'>" + total_number + "</span>个菜，&nbsp<span class='price'>￥" + total_price.toFixed(2) + "</span>");
		$("#carte_info").html("<span style='font-family: Arial;'>" + total_number + "</span>个菜，&nbsp<span class='price'>￥" + total_price.toFixed(2) + "</span>");
		if (total_number <= 0) {
			if (!crowdObj.crowd_code) {
				$("#dish_footer,#carte_footer").slideUp(800);
			} else {
				$("#dish_footer .select_ok").text('跳过');
			};
		} else {
			$("#dish_footer,#carte_footer").slideDown(800);
			$("#dish_footer .select_ok").text('选好了');
		};
	},
	100);
}
function addOrder(target) {
	var data_id = $(target).attr('data-id');
	var $list;
	var b_cs_id = false;
	for (var i = 0; i < $order.size(); i++) {
		var dishItemTemp = $order.get(i);
		if (dishItemTemp.id == data_id) {
			b_cs_id = true;
			dishItemTemp.num += 1;
			break;
		}
	}
	if (!b_cs_id) {
		var dishItem = {};
		dishItem.id = data_id;
		dishItem.CP_ID = $(target).attr('cp-id');
		dishItem.name = $(target).attr('data-name');
		dishItem.price = parseFloat($(target).attr('data-price'));
		dishItem.spec = $(target).attr('data-spec');
		dishItem.ref_id = $(target).attr('data-ref-id');
		dishItem.num = 1;
		dishItem.img = $(target).attr('data-img');
		dishItem.ctid = $(target).attr('d-ctid');
		$order.add(dishItem);
	}
	
}
function subOrder(target) {
	var data_id = $(target).attr('data-id');;
	var $list;
	var b_cs_id = false;
	for (var i = 0; i < $order.size(); i++) {
		var dishItemTemp = $order.get(i);
		if (dishItemTemp.id == data_id) {
			b_cs_id = true;
			dishItemTemp.num -= 1;
			if (dishItemTemp.num == 0) {
				$order.remove(i);
			}
			break;
		}
	}
	
}
function bindSearchOpeAction(target) {
	$(target).find('.sub').bind("click",
	function(e) {
		var $click_time = e["timeStamp"];
		if ($click_time - $last_click_time < 200) return;
		$last_click_time = $click_time;
		var num_obj = $(this).next();
		var num_val = parseInt($(num_obj).html()) - 1;
		if (num_val < 0) return;
		$(num_obj).html(num_val);
		$("#" + $(num_obj).parent().attr('data-ref-id')).children('.sub').trigger('click', true);
		if (num_val == 0) {
			$(this).parent().parent().parent().css('background-color', '#FFF');
			$(this).parent().parent().parent().parent().css('border-bottom', '1px solid #f3f4f4').find(".vip").show();
		}
		refreshCart("carte_info");
	});
	$(target).find('.add').bind("click",
	function(e) {
		var $click_time = e["timeStamp"];
		if ($click_time - $last_click_time < 400) return;
		$last_click_time = $click_time;
		var num_obj = $(this).prev();
		$(num_obj).html(parseInt($(num_obj).html()) + 1);
		$("#" + $(num_obj).parent().attr('data-ref-id')).children('.add').trigger('click', true);
		$(this).parent().parent().parent().parent().css('border-bottom', '1px solid #e8383d').find(".vip").hide();;
		refreshCart("carte_info");
	});
}
function bindOrderOpeAction(target) {
	$(target).find('.sub').bind("click",
	function(e) {
		var $click_time = e["timeStamp"];
		if ($click_time - $last_click_time < 400) return;
		$last_click_time = $click_time;
		var num_obj = $(this).next();
		var num_val = parseInt($(num_obj).html()) - 1;
		if (num_val < 0) return;
		$(num_obj).html(num_val);
		$("#" + $(num_obj).parent().attr('data-ref-id')).children('.sub').trigger('click', true);
		subOrder($(num_obj).parent());
	});
	$(target).find('.add').bind("click",
	function(e) {
		var $click_time = e["timeStamp"];
		if ($click_time - $last_click_time < 400) return;
		$last_click_time = $click_time;
		var num_obj = $(this).prev();
		$(num_obj).html(parseInt($(num_obj).html()) + 1);
		$("#" + $(num_obj).parent().attr('data-ref-id')).children('.add').trigger('click', true);
		addOrder($(num_obj).parent());
	});
}
function bindOpeAction(target) {
	$(target).find('.dish_add').bind("click",
	function(e) {
		e.stopPropagation();
		var $click_time = e["timeStamp"];
		if ($click_time - $last_click_time < 400) return;
		$last_click_time = $click_time;
		$(this).css("display", "none").next().css("display", "block").find(".number").html(1).parent().parent().parent().css('border-bottom', '1px solid #e8383d').find(".vip").hide();
		addOrder($(this).next());
		refreshCart("dish_info");
	});
	$(target).find('.sub').bind("click",
	function(e, igore) {
		e.stopPropagation();
		var $click_time = e["timeStamp"];
		if (igore == null && $click_time - $last_click_time < 400) return;
		$last_click_time = $click_time;
		var num_obj = $(this).next();
		var num_val = parseInt($(num_obj).html()) - 1;
		$(num_obj).html(num_val);
		if (num_val == 0) {
			$(this).parent().css("display", "none").prev().css("display", "block");
			$(this).parent().parent().parent().css('border-bottom', '1px solid #f3f4f4').find(".vip").show();
		}
		subOrder($(num_obj).parent());
		refreshCart("dish_info");
	});
	$(target).find('.number').bind("click",
	function(e) {
		e.stopPropagation();
	});
	$(target).find('.add').bind("click",
	function(e, igore) {
		e.stopPropagation();
		var $click_time = e["timeStamp"];
		if (igore == null && $click_time - $last_click_time < 400) return;
		$last_click_time = $click_time;
		var num_obj = $(this).prev();
		var num_val = parseInt($(num_obj).html()) + 1;
		$(num_obj).html(num_val);
		if (num_val > 0) {
			$(this).parent().css("display", "block").prev().css("display", "none");
			$(this).parent().parent().parent().css('border-bottom', '1px solid #e8383d').find(".vip").hide();
		}
		addOrder($(num_obj).parent());
		refreshCart("dish_info");
		e.stopImmediatePropagation();
	});
}
function readDishItemData(target_current) {
	var target = target_current.find('.dish_ope');
	var dish_data = {
		id: target.attr("data-id"),
		img: target.attr('data-img'),
		name: target.attr('data-name'),
		price: target.attr('data-price'),
		vip: target.attr("data-vip-price"),
		num: target.children('.number').html(),
		ctid: target.attr('d-ctid'),
		mark: target.attr('data-remark')
	};
	return dish_data;
}
function bindDetailAction(target) {
	$(target).find('.dish_image').bind("click",
	function(e) {
		var dish_item_obj = $(this);
		var dish_item_obj_current = dish_item_obj.parent();
		var _data = readDishItemData(dish_item_obj_current);
		$("#dish_details").show();
		$("#dish_details").html(tmpl("tmpl_dish_detail_one", _data));
		$("#close_dish").bind("click",
		function() {
			$("#dish_details").hide();
		});
		$("#mask_dish").bind("click",
		function() {
			$("#dish_details").hide();
		});
		if (Number(_data.num) > 0) {
			$("#dish_details .dish_add").hide();
			$("#dish_details .dish_ope").show();
		};
		$("#dish_details .dish_add").bind("click",
		function(e) {
			e.stopPropagation();
			var numObj = $(this).next().find(".number");
			numObj.html(Number(numObj.text()) + 1);
			$(this).hide();
			$(this).next().show();
			var rel_id = $(this).next().attr("data-ref-id");
			$("#" + rel_id).prev().trigger('click', true);
		});
		$("#dish_details .sub").bind("click",
		function(e) {
			e.stopPropagation();
			var _n = Number($(this).next().text());
			var _num = _n - 1;
			$(this).next().text(_num);
			if (_num == 0) {
				$(this).parent().hide();
				$(this).parent().prev().show();
			};
			var rel_id = $(this).parent().attr("data-ref-id");
			$("#" + rel_id).children(".sub").trigger('click', true);
		});
		$("#dish_details .add").bind("click",
		function(e) {
			e.stopPropagation();
			var _n = Number($(this).prev().text());
			$(this).prev().text(_n + 1);
			var rel_id = $(this).parent().attr("data-ref-id");
			$("#" + rel_id).children(".add").trigger('click', true);
		});
		$dish_detail_scroll = new iScroll("dish_detail_scroll", {
			hScrollbar: false,
			vScrollbar: false,
			lockDirection: true,
			hScroll: false,
			vScroll: true,
			useTransition: true,
			click: true
		});
		var test_data = [];
		var _this_objs = $(".dish_list_active .dish_ope");
		_this_objs.each(function() {
			var _this_parent = $(this).parents("li");
			var _this_data_item = readDishItemData(_this_parent);
			test_data.push(_this_data_item);
		});
		var imgscroll = new ImageScroll("image-scroll", test_data,
		function(o) {
			$("#dish_title_name").html(o.name);
			$("#dish_details_price").html("￥" + o.price + "   <span class=\"vip\" style=\"padding-left: 15px;\">VIP " + o.vip + "</span>   ");
			$(".dish_ope_02").attr("data-ref-id", "dish_ope_id_" + o.id);
			$("#dish_details_meark").html(o.mark);
			$("#dish_details_num").text(o.num);
			if (o.num <= 0) {
				$(".dish_add_02").show();
				$(".dish_ope_02").hide();
			} else {
				$(".dish_add_02").hide();
				$(".dish_ope_02").show();
			}
			$dish_detail_scroll.refresh();
		});
		imgscroll._load(_data.id);
	});
}
function loadCarteAll() {
	if ($dish_load == false) {
		var dish_list = $("#dish_list");
		$dish_load = true;
		$carteAll.RestaurantSign = RestaurantSign;
		$(dish_list).html(tmpl("tmpl-dish-list", $carteAll));
		var pullDownEl = document.getElementById('pullDown');
		$dish_scroller = new iScroll("dish_list_scroller", {
			hScrollbar: false,
			vScrollbar: false,
			lockDirection: true,
			hScroll: false,
			vScroll: true,
			useTransition: true,
			click: true,
			onRefresh: function() {
				pullDownEl.className = '';
			},
			onScrollMove: function() {
				if (this.y > 50 && !pullDownEl.className.match('flip')) {
					pullDownEl.className = 'flip';
					this.minScrollY = 0;
				}
			},
			onTouchEnd: function() {
				$blazy_control.validate();
			},
			onScrollEnd: function() {
				if (pullDownEl.className.match('flip')) {
					showSearch();
					$dish_scroller.refresh();
				}
				$blazy_control.validate();
			}
		});
		$blazy_control = loadLazy("dish_list_scroller", "resource/img/carte_default_small.png");
		bindOpeAction(dish_list);
		$("#dish_search").bind("click",
		function() {
			showSearch();
		});
		bindDetailAction(dish_list);
	}
}
function initDishList() {
	if ($menu_load == false) {
		$("#dish_menu").html(tmpl("tmpl-dish-category", $carteAll));
		$dish_scroller = new iScroll("dish_category_scroller", {
			hScrollbar: false,
			vScrollbar: false,
			lockDirection: true,
			hScroll: false,
			vScroll: true,
			useTransition: true,
			click: true
		});
		loadCarteAll();
		bindSearchContent();
		$("#dish_category_scroller li").bind("click",
		function() {
			var ctid = $(this).attr("d-id");
			$(this).siblings().removeClass('active');
			$(this).addClass("active");
			try {
				$dish_scroller.scrollToElement($("[data-ctid='" + ctid + "']")[0], 500);
				setTimeout(function() {
					$blazy_control.validate();
				},
				500);
			} catch(ex) {
				alert(ex);
			}
		});
		$menu_load = true;
		document.getElementById("slider_dish").style.webkitTransform = "translate3d(0,0,0)";
		setTimeout(function() {
			$("#loading_img").removeClass("rotate_animation");
		},
		500);
	} else {
		document.getElementById("slider_dish").style.webkitTransform = "translate3d(0,0,0)";
		setTimeout(function() {
			$("#loading_img").removeClass("rotate_animation");
		},
		500);
	}
}
function bindToSliderMenu() {
	$("#dish_ok").bind("click",
	function() {
		$("#carte_footer").show();
		if ($order.size() > 0) {
			if (crowdObj.crowd_code) {
				$("#carte_mark").hide();
			} else {
				$("#carte_mark").show();
			};
			document.getElementById("carte_page").style.webkitTransform = "translate3d(0,0,0)";
			$("#dish_footer").hide();
			toCartePage();
		} else {
				showdialog(1, "还没有选择菜品");
		}
	});
	$("#cart_back").bind("click",
	function() {
		$("#carte_footer").hide();
		$("#dish_footer").slideDown(800);
		
		document.getElementById("carte_page").style.webkitTransform = "translate3d(100%,0,0)";
	});
	$("#carte_ok").bind("click",
	function() {
		if ($order.size() > 0) {
			addNewOrder();
		} else {
			showdialog(1, "还没有选择菜品");
			return;
		}
		
	});
}
function init_shop() {
	initDishList();
	refreshCart("dish_info");
};
function to_dish() {
	init_dish();
}
function bindHideSearchAction() {
	$("#search_content_finish").bind("click",
	function() {
		$("#search_content_finish").html("取消");
		$("#search_content_finish").unbind("click");
		hideSearch();
	});
	$("#search_result").bind("click",
	function() {
		$("#search_result").unbind("click");
		hideSearch();
	});
}
function hideSearch() {
	$("#searchPage").css("display", "none");
	$("#search_input").val('请输入菜名');
	$("#search_result").css("background-color", "").html('');
}
function showSearch() {
	$("#searchPage").css("display", "block");
	initSearchIndex();
	bindHideSearchAction();
	$("#search_input").focus();
}
function initSearchIndex() {
	$carteAll = eval('(' + localStorage.getItem("$carteAll") + ')').data.menu;
}
function trimSpace(searchContent) {
	var reg = /^\s*(\S+)\s*$/;
	if (reg.test(searchContent)) {
		return RegExp.$1;
	} else {
		return "";
	}
}
function onSearchChange(searchContent) {
	$("#search_content_finish").html("确定");
	clearTimeout($timer_search);
	$timer_search = setTimeout(function() {
		var searchResult = new ArrayList();
		var trimSearchContent = trimSpace(searchContent);
		if (trimSearchContent == "") {
			$("#search_result").css("background-color", "").html('');
			return;
		};
		if ($carteAll == null) {
			initSearchIndex();
		}
		var result = "";
		for (var i = 0; i < $carteAll.foodTypeList.length; i++) {
			var search_obj = $carteAll.foodTypeList[i];
			for (var j = 0; j < search_obj.foodModels.length; j++) {
				var search_obj_carte = search_obj.foodModels[j];
				if (search_obj_carte.name.indexOf(trimSearchContent) != -1) {
					result += search_obj_carte.C_Name;
					search_obj_carte.number = 0;
					for (var k = 0; k < $order.size(); k++) {
						var dishItemTemp = $order.get(k);
						if (dishItemTemp.id == search_obj_carte.id) {
							search_obj_carte.number = dishItemTemp.num;
						}
					}
					searchResult.add(search_obj_carte);
				}
			}
		}
		if (searchResult.size() > 0) {
			var search_json_data = eval('(' + JSON.stringify(searchResult) + ')');
			console.log(search_json_data);
			search_json_data.RestaurantSign = RestaurantSign;
			var search_result = $("#search_result");
			console.log(search_json_data);
			$(search_result).html(tmpl("search-dish-item", search_json_data));
			if (searchResult.size() > 0) {
				$("#search_result").css("background-color", "#FFF");
			}
			var $blazy = loadLazy("search_dish_scroller", "resource/img/carte_default_small.png");
			new iScroll("search_result", {
				hScrollbar: false,
				vScrollbar: false,
				lockDirection: true,
				hScroll: false,
				vScroll: true,
				useTransition: true,
				click: true,
				onTouchEnd: function() {
					$blazy.validate();
				},
				onScrollEnd: function() {
					$blazy.validate();
				}
			});
			bindSearchOpeAction(search_result);
		} else {
			$("#search_result").html(tmpl("search-dish-noitem"));
		};
		$("#search_dish_noresult").bind("click",
		function(e) {
			e.stopPropagation();
		});
		$("#search_dish_scroller").bind("click",
		function(e) {
			e.stopPropagation();
		});
	},
	200);
}
function finishSearch() {
	$carteAll = null;
}
function bindSearchContent() {
	$("#search_input").unbind("input").bind("input",
	function() {
		onSearchChange($(this).val());
	});
}
function stophand(e) {
	e.preventDefault();
};


function orient() {
	if (window.orientation == 90 || window.orientation == -90) {
		$("#dish_footer #carte_footer").css({
			heigh: "10%"
		});
		return false;
	} else if (window.orientation == 0 || window.orientation == 180) {
		$("#dish_footer #carte_footer").css({
			heigh: "10%"
		});
		return false;
	}
}
var t_height = 0;

//程序入口
$(document).ready(function() {
	init_shop();
	$("document:not(#menu_font)").click(function() {
		$('#menu_font').addClass('hidden');
	});
	$(document).bind("click",
	function(e) {
		if ($(e.target).attr('class') == 'iconfont') {} else {
			$('#menu_font').addClass('hidden');
		}
	});
	
	//绑定横竖屏事件
	$(window).bind('orientationchange',
	function(e) {
		orient();
	});
	
	$table_data_id = getQueryStringValue("t");
	document.addEventListener('touchmove', stophand, false);
	bindToSliderMenu();
	$order = new ArrayList();
	t_height = $("body").height();
	$('.animation').css("height", t_height);
	$("#lotteryBack").click(function() {
		document.getElementById("lottery").style.webkitTransform = "translate3d(0, 1000px, 0)";
		document.addEventListener('touchmove', stophand, false);
		document.body.scrollTop = 0;
	});
})