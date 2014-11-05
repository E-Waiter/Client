var NameLogo;
var gdata;
try {
	gdata = JSON.parse(localStorage.getItem('gdata'));
} catch(ex) {
	gdata = null;
};
if (gdata == null) {
	gdata = {};
};
// 用户信息
if (gdata.userinfo == undefined) {
	gdata.userinfo = {};
};
if (gdata.takeinfo == undefined) {
	gdata.takeinfo = {};
};
if (gdata.addresslist == undefined) {
	gdata.addresslist = [];
};
localStorage.setItem('gdata', JSON.stringify(gdata));

var chatFlag = ""; // 微信对话标记【外卖】 (1,姓名 2,电话 3,地址)
var dineType = 0;
var R_ID;
var LotteryMode;
var RestaurantSign;
var $frame;
var $frame_sly;
var $person_scroller;
var $table_scroller;
var $dish_scroller;
var $menu_scroller;
var $dish_detail_scroll;
var $user = {}; // 用户登录身份标识
var $menu_load = false; // 分类是否下载
var $dish_load = false; // 菜品是否下载
var $shop_load = false; // 店铺信息是否加载
var $table_load = false; // 桌台是否加载
var $order; // 购物车对象
var $table_data_id = null;
var $blazy_control;
var $last_click_time = new Date().getTime();
var $timer_search;
var $person_data_id = null;
var $carteAll = JSON.parse(localStorage.getItem('$carteAll'));
var orderList;//已下订单对象
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

function initUserMark() {
	try {
		gdata = JSON.parse(localStorage.getItem('gdata'));
	} catch(ex) {
		gdata = null
	};
	if (gdata == null) {
		gdata = {};
	};
	if (gdata.userinfo == undefined) {
		gdata.userinfo = {}
	};
	if (gdata.addresslist == undefined) {
		gdata.addresslist = []
	};

}

function reStorageUserMark() {
	localStorage.setItem('gdata', JSON.stringify(gdata));
};

// 重新登录用户身份
// login_again(string ml_guid, string ml_guest)
function reloadUser() {
	
	var gml = gdata.ML_GUID;
	if (!gml) {
		gml = gdata.ML_GUID_02;
	};

	if (gml) {
		jAjax({
			type: "post",
			url: "/1/member.asmx/login_again",
			data: "ml_guid=" + gml + "&ml_guest=",
			async: false,
			success: function(data) {
				var obj = eval('(' + data + ')');
				if (obj.result != 0) {
					// $user = {login : false, mark : 0};
					gdata.ML_GUID = "";
					gdata.ML_GUID_02 = "";
					reStorageUserMark();
				} else {
					if (obj.M_ID < 0) {
						gdata.ML_GUID_02 = obj.ML_GUID;
						gdata.ML_GUID = "";
						reStorageUserMark();
						// 游客
					} else {
						gdata.ML_GUID = obj.ML_GUID; // 直接让会员也登录
						gdata.userinfo.M_Account = obj.M_Account;
						gdata.userinfo.M_ID = obj.M_ID;
						gdata.userinfo.M_Name = obj.M_Name;
						gdata.userinfo.M_Phone = obj.M_Phone;
						gdata.userinfo.M_Email = obj.M_Email;
						gdata.userinfo.M_Sex = obj.M_Sex;
						gdata.userinfo.M_Image = obj.M_Image;
						gdata.ML_GUID_02 = "";
					};
					reStorageUserMark();
				}

			}
		});
	}
};

// 请求用户的身份识别码
function reqeustUserSing(actionType) {
	jAjax({
		type: "get",
		url: "/1/member.asmx/login_guest",
		showLoading: true,
		success: function(data) {
			var obj = eval('(' + data + ')');
			if (obj.result == 0) {
				// $user.ML_GUID = obj.ML_GUID;
				// $user.MMap_Sign = obj.MMap_Sign;
				// $user.login = true;
				// $user.mark = 0;//0代表游客，1代表会员，2代表微信，3代表微博
				gdata.ML_GUID_02 = obj.ML_GUID;
				gdata.userinfo.M_ID = obj.MMap_Sign;
				localStorage.setItem('gdata', JSON.stringify(gdata));

			} else {
				// $user.login = false;
				// $user.mark = 0;
				gdata.ML_GUID_02 = "";
				localStorage.setItem('gdata', JSON.stringify(gdata));
			};
			// 存储用户身份标识
			reStorageUserMark();
			if (actionType == 1) {
				submitOrder();
			} else if (actionType == 2) {
				// 首页进入我的订单
				document.getElementById("slider_orderlist").style.webkitTransform = "translate3d(0%, 0, 0)";
				load_orderlistData();
			}
		},
		error: function() {
			gdata.ML_GUID_02 = "";

		}
	});
}

// 检测用户登录签名是否过期
function checkLoginSign(actionType) {
	if (!gdata.ML_GUID && !gdata.ML_GUID_02) {
		reqeustUserSing(actionType);
	} else {
		var mld = gdata.ML_GUID || gdata.ML_GUID_02;

		jAjax({
			type: "post",
			url: "/1/member.asmx/online",
			data: "ml_guid=" + mld,
			showLoading: true,
			success: function(data) {
				var obj = eval('(' + data + ')');

				// 没有过期
				if (obj.result != 0) {
					reqeustUserSing(actionType);
				} else {
					if (actionType == 1) {
						submitOrder();
					} else if (actionType == 2) { // 首页进入我的订单
						document.getElementById("slider_orderlist").style.webkitTransform = "translate3d(0%, 0, 0)";
						load_orderlistData();
					}
				}
			},
			error: function() {
				showdialog(1, "身份验证失败");
			}
		});
	}
}

// 初始化身份标识，是游客还是登录状态
// actionType =1 为下单
function initLoginMark(actionType) {
	checkLoginSign(actionType);
}

function submitOrder() {


	// 遍历xml ，组装 格式
	orderList = {"foods": []};
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
	var sub_DB_Remark = ($("#remark_input").val() == "请输入特殊要求" ? "": $("#remark_input").val()); // 備注

	var sub_DB_Person_Count = ($("#person_count_input").val() == "请输入用餐人数" ? "": $("#person_count_input").val()); // 备注
	if( sub_DB_Person_Count == "") {
		showdialog(0, "请输入您的用餐人数",focusOnPersonCount);
		return;
	}
	var sub_DB_Phone = $("#telephone").val();
	orderList.des = sub_DB_Remark;
	orderList.phone = sub_DB_Phone;
	orderList.uID = $carteAll.deskID;
	orderList.dID = 2;
	orderList.merID = $carteAll.merID;
	orderList.number = sub_DB_Person_Count;
	orderList.method = 2;
	orderList.note = '老客户';
	
	var sub_data =  JSON.stringify(orderList);
	function focusOnPhone(){
		$("#phone_input").focus();
	}
	function focusOnPersonCount(){
		$("#person_count_input").focus();
	}
	// 获取菜品分类
	// 堂食下单
	function localOrder() {
		jAjax({
			type: "POST",
			url: "/EWaiter/order/commitOrder",
			data: "orderInfo="+sub_data,
			showLoading: true,
			success: function(data) {
				var obj = eval('(' + data + ')');
				if (obj.code == 1) {
					$("#carte_dish").html('');
					// 选择状态为0
					$("#dish_list").find('.dish_add').css('display', 'block');
					$("#dish_list").find('.dish_ope').css('display', 'none');
					$("#dish_list").find('.number').html(0);
					$("#dish_category_scroller").find(".num").css('display', 'none').html(0);
					$("#dish_list").find(".dish_item").css('background-color', '#FFF');
					$order = new ArrayList();
					showdialog(1,"下单成功！",toOrderDetailPage(obj));
					//refreshCart("dish_info");
					// 清除选中状态
					$(".dish_list_active").css('border-bottom', '1px solid #f3f4f4').find(".vip").show();
				}else {
					showdialog(1,obj.msg);
				}
			},
			error: function() {
				showdialog(1, "请求失败!");
			}
		});
	};

	localOrder();


}
/* 下单 */
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

function toOrderDetailPage(data){
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
				function(){
					refreshCart("dish_info");
					document.getElementById("slider_order").style.webkitTransform = "translate3d(100%,0, 0)";
					document.getElementById("slider_dish").style.webkitTransform = "translate3d(0,0,0)";
		});
}

//Optimizing the performance of increasing and delete function 
function refreshCart(targetId) {
	setTimeout(function() {
		var total_number = 0;
		var total_price = 0.0;
		$("#dish_menu").find("li[d-id]").find(".num").html(0).hide();
		var _tmp = [];
		// 遍历冷热酒水分类
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

/* 增加菜品 */
function addOrder(target) {
	var data_id = $(target).attr('data-id');
	var $list;
	var b_cs_id = false;
	for (var i = 0; i < $order.size(); i++) {
		var dishItemTemp = $order.get(i);
		if (dishItemTemp.id == data_id) {
			b_cs_id = true;
			dishItemTemp.num += 1; // 增加一份
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
	refreshCart("dish_info");
}
/* 减少菜品 */
function subOrder(target) {
	var data_id = $(target).attr('data-id');;
	var $list;
	var b_cs_id = false;
	for (var i = 0; i < $order.size(); i++) {
		var dishItemTemp = $order.get(i);
		if (dishItemTemp.id == data_id) {
			b_cs_id = true;
			dishItemTemp.num -= 1; // 较少一份
			if (dishItemTemp.num == 0) {
				$order.remove(i);
			}
			break;
		}
	}
	refreshCart("dish_info");
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

/* 绑定订单页面的数据操作 */
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
		// $(this).css("display","none").next().css("display","block").find(".number").html(1).parent().parent().css('background-color','#f9f7f7');
		$(this).css("display", "none").next().css("display", "block").find(".number").html(1).parent().parent().parent().css('border-bottom', '1px solid #e8383d').find(".vip").hide();
		addOrder($(this).next());
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
			// $(this).parent().parent().css('background-color','#FFF');
			$(this).parent().parent().parent().css('border-bottom', '1px solid #f3f4f4').find(".vip").show();
		}
		subOrder($(num_obj).parent());
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
		e.stopImmediatePropagation();
	});
}

function readDishItemData(target_current) {
	var target = target_current.find('.dish_ope'); // .children(":last");
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
	// $(target).find('.dish_image').bind("click",function(e){
	$(target).find('.dish_image').bind("click",
	function(e) {
		// var dish_item_obj = $(this).parent();
		var dish_item_obj = $(this);
		var dish_item_obj_current = dish_item_obj.parent();
		var _data = readDishItemData(dish_item_obj_current);
		// document.getElementById("dish_details").style.webkitTransform
		// = "translate3d(0%, 0, 0)";
		$("#dish_details").show();
		$("#dish_details").html(tmpl("tmpl_dish_detail_one", _data));
		$("#close_dish").bind("click",
		function() {
			// document.getElementById("dish_details").style.webkitTransform
			// = "translate3d(0, 1000px, 0)";
			$("#dish_details").hide();
		});
		$("#mask_dish").bind("click",
		function() {
			// document.getElementById("dish_details").style.webkitTransform
			// = "translate3d(0, 1000px, 0)";
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
		// 获取所有的菜品
		var dish_list = $("#dish_list");
		$dish_load = true;
		// 初始化图片目录
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
			onRefresh: function () {
				pullDownEl.className = '';
			},
			onScrollMove: function () {
		     if (this.y > 50 && !pullDownEl.className.match('flip')) {
		         pullDownEl.className = 'flip';
		         this.minScrollY = 0;
		        }
			},
			onTouchEnd: function() {
				$blazy_control.validate();
			},
			onScrollEnd: function() {
				if( pullDownEl.className.match('flip')){
					showSearch();
					$dish_scroller.refresh();
				}
				$blazy_control.validate();
			}
		});
		$blazy_control = loadLazy("dish_list_scroller", "../resource/img/carte_default_small.png");
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
		// 获取菜品分类
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

					// $dish_scroller.scrollToElement(document.querySelector("[data-ctid='"+ctid+"']"),500)
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
			}
		else {
		document.getElementById("slider_dish").style.webkitTransform = "translate3d(0,0,0)";
		setTimeout(function() {
			$("#loading_img").removeClass("rotate_animation");
		},
		500);
	}
}

function bindToSliderMenu() {
	$("#slider_menu_back").bind("click",
	function() {
		document.getElementById("slider_menu").style.webkitTransform = "translate3d(100%, 0, 0)";
	});
	/* 选择桌台 */
	$("#open_slider_table").bind("click",
	function(e) {
		var $click_time = e["timeStamp"];
		if ($click_time - $last_click_time < 400) return;
		$last_click_time = $click_time;
		document.getElementById("slider_table_Full").style.display = "block";
		document.getElementById("slider_table").style.webkitTransform = "translate3d(0,0, 0)";
	});

	$("#open_slider_person").bind("click",
			function() {
				document.getElementById("slider_person").style.webkitTransform = "translate3d(0,0, 0)";
	});
	
	$("#select_table").bind("click",
		function() {
			document.getElementById("slider_person").style.webkitTransform = "translate3d(0,0, 0)";
	});	

	$("#dish_back").bind("click",
	function() {
		$("#slider_person").css({
			"-webkit-transform": "translate3d(0,0, 0)"
		});
		$("#slider_dish").css({
			"-webkit-transform": "translate3d(0,100%, 0)"
		});

	});
	
	$("#dish_ok").bind("click",
	function() {
		if ($order.size() > 0) {
			if (crowdObj.crowd_code) {
				$("#carte_mark").hide();
			} else {
				$("#carte_mark").show();
			};
			document.getElementById("carte_page").style.webkitTransform = "translate3d(0,0,0)";
			toCartePage();
		} else {
			if (crowdObj.crowd_code) {
				// 直接进入所有人点菜页面
				document.getElementById("crowdcarte_Page").style.webkitTransform = "translate3d(0%,0,0)";
				GetCrowCarteList();
			} else {
				showdialog(1, "还没有选择菜品");
			}
		}
	});
	$("#cart_back").bind("click",
	function() {
		document.getElementById("carte_page").style.webkitTransform = "translate3d(100%,0,0)";
	});
	$("#carte_ok").bind("click",
	function() {
		addNewOrder();
	});
}


/* 初始化餐桌和店铺信息，以及GUID身份信息 */
function init_shop() {
	initDishList();
	refreshCart("dish_info");
	function re_init_shop(obj) {
		if (gdata.ML_GUID && gdata.userinfo.M_Image) {
			document.getElementById("headImg").style.backgroundImage = "url(" + gdata.userinfo.M_Image + ")";
			document.getElementById("userHead_img").src = gdata.userinfo.M_Image;
			document.getElementById("userHead_Name").innerText = gdata.userinfo.M_Name;
		};
		$("[siteTitle]").text(obj.Name);

		// gdata.userinfo.M_Image
		NameLogo = obj.Name;
		RestaurantSign = obj.RestaurantSign;
		R_ID = obj.R_ID;
		LotteryMode = obj.LotteryMode;

		// document.getElementById("index_shop_title").innerHTML = NameLogo;
		localStorage.setItem("index_shop_title", NameLogo);
		localStorage.setItem("RestaurantSign", RestaurantSign);
		document.title = NameLogo;
	};

};

function bindToDishAction() {
	$("#loading_img").bind("click",
	function() {
		var flag = true;
		var sub_DB_Phone = $("#telephone").val(); // 電話
		var isMobile=/^(?:13\d|15\d|18\d)\d{5}(\d{3}|\*{3})$/;
		if(!isMobile.test(sub_DB_Phone)){ //如果用户输入的值不同时满足手机号和座机号的正则
			showdialog(1,"请正确填写电话号码，例如:13415764179或0321-4816048",focusOnTelePhoneInput);  //就弹出提示信息
		    flag = false;         //返回一个错误，不向下执行
		}
		if (flag) {
			init_shop();
		}
	});
}

function focusOnTelePhoneInput() {
	$("#telephone").focus();
}

/* 跳转到选择菜品的页面 */
function to_dish() {
	init_dish();
}

function bindHideSearchAction() {
	$("#search_content_finish").bind("click",
	function() {
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
	$carteAll = eval('(' + localStorage.getItem("$carteAll") + ')');
}

function trimSpace(searchContent) {
	var reg = /^\s*(\S+)\s*$/;
	if (reg.test(searchContent)) {
		return RegExp.$1;
	} else {
		return "";
	}
}

// 输入结果变化
function onSearchChange(searchContent) {
	clearTimeout($timer_search);
	$timer_search = setTimeout(function() {
		// 设置一个settimeout 函数
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
		// 搜索
		for (var i = 0; i < $carteAll.foodTypeList.length; i++) {
			var search_obj = $carteAll.foodTypeList[i];
			for (var j = 0; j < search_obj.foodModels.length; j++) {
				var search_obj_carte = search_obj.foodModels[j];
				if (search_obj_carte.name.indexOf(trimSearchContent) != -1) {
					// 找到菜品了
					result += search_obj_carte.C_Name;
					// 便利所有的规格
						search_obj_carte.number = 0;
						// 便利所有的订单
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
			// 模板
			var search_json_data = eval('(' + JSON.stringify(searchResult) + ')');
			console.log(search_json_data);
			search_json_data.RestaurantSign = RestaurantSign;
			var search_result = $("#search_result");
			$(search_result).html(tmpl("search-dish-item", search_json_data));
			if (searchResult.size() > 0) {
				$("#search_result").css("background-color", "#FFF");
			}
			var $blazy = loadLazy("search_dish_scroller", "../resource/img/carte_default_small.png");
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
	// 释放内存
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

var t_height = 0;
$(document).ready(function() { // return;

	
	$("document:not(#menu_font)").click(function() {
		$('#menu_font').addClass('hidden');
	});
	
	$(document).bind("click", function (e) {
		if($(e.target).attr('class') == 'iconfont'){
			
		}else{
			$('#menu_font').addClass('hidden');
		}
          
    });  
	


	$table_data_id = getQueryStringValue("t");
	document.addEventListener('touchmove', stophand, false); // 防止浏览器的滑动
	initUserMark();
	reloadUser();
	bindToSliderMenu();
	bindToDishAction();


	$order = new ArrayList();
	t_height = $("body").height();
	$('.animation').css("height", t_height);
	$("#lotteryBack").click(function() {
		document.getElementById("lottery").style.webkitTransform = "translate3d(0, 1000px, 0)";
		 document.addEventListener('touchmove',
		 stophand, false); //防止浏览器的滑动
		document.body.scrollTop = 0;
	});

});