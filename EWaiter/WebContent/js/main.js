var NameLogo;
var gdata;
try {
	gdata = JSON.parse(localStorage.getItem('gdata'));
} catch(ex) {
	gdata = null
};
if (gdata == null) {
	gdata = {};
};
// 用户信息
if (gdata.userinfo == undefined) {
	gdata.userinfo = {}
};
if (gdata.takeinfo == undefined) {
	gdata.takeinfo = {}
};
if (gdata.addresslist == undefined) {
	gdata.addresslist = []
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
var $myAddress_scroll;
var $myAddress_add_scroll;
var $mylist_scroll;
var $dish_detail_scroll;
var $user = {}; // 用户登录身份标识
var $menu_load = false; // 分类是否下载
var $dish_load = false; // 菜品是否下载
var $shop_load = false; // 店铺信息是否加载
var $table_load = false; // 桌台是否加载
var $order; // 购物车对象
var $carteAll = null;
var $table_data_id = null;
var $blazy_control;
var $last_click_time = new Date().getTime();
var $timer_search;
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
	// localStorage.setItem("user",JSON.stringify($user));
	localStorage.setItem('gdata', JSON.stringify(gdata));
};

// 重新登录用户身份
// login_again(string ml_guid, string ml_guest)
function reloadUser() {
	
	var gml = gdata.ML_GUID;
	if (!gml) {
		gml = gdata.ML_GUID_02
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

	if (dineType == 1 || crowdObj.crowd_code) {
		// 外卖 群点
	} else {
		if ($table_data_id == null) {
			// $("#open_slider_table").trigger("click");
			document.getElementById("slider_table_Full").style.display = "block";
			document.getElementById("slider_table").style.webkitTransform = "translate3d(0,0, 0)";
			return;
		}
	};
	// 遍历xml ，组装 格式
	var dishList = {
		"list": []
	};
	for (var j = 0; j < $order.size(); j++) {
		dishList.list.push($order.get(j));
	}

	var sub_xml = tmpl("order_submit", eval('(' + JSON.stringify(dishList) + ')'));
	var sub_ML_GUID = gdata.ML_GUID || gdata.ML_GUID_02;
	var sub_TI_Code = $table_data_id;
	var sub_PD_Type = -1; // 现金支付
	var sub_T_Version = "";
	var sub_DB_Remark = ($("#remark_input").val() == "请输入特殊要求" ? "": $("#remark_input").val()); // 备注
	// var sub_data =
	// "ML_GUID="+sub_ML_GUID+"&TI_Code="+sub_TI_Code+"&PD_Type="+sub_PD_Type+"&T_Version="+sub_T_Version+"&DB_Remark="+sub_DB_Remark+"&xml="+
	// encodeURIComponent(sub_xml);
	// decimal r_id, string ml_guid, string ti_code, int pd_type, string
	// t_version, string db_remark, string xml
	// string crowd_code, string crowd_version
	var sub_data = "r_id=" + R_ID + "&ml_guid=" + sub_ML_GUID + "&ti_code=" + sub_TI_Code + "&pd_type=" + sub_PD_Type + "&t_version=" + sub_T_Version + "&db_remark=" + sub_DB_Remark + "&xml=" + encodeURIComponent(sub_xml) + "&crowd_code=&crowd_version=";
	// 获取菜品分类
	// 堂食下单
	function localOrder() {

		if (crowdObj.crowd_code) {
			// 群点
			qundianAdd();
			return;
		};

		jAjax({
			type: "post",
			url: "/1/dining.asmx/add",
			data: sub_data,
			showLoading: true,
			success: function(data) {
				var obj = eval('(' + data + ')');
				if (obj.result == 0) {
					$("#carte_dish").html('');
					// 选择状态为0
					$("#dish_list").find('.dish_add').css('display', 'block');
					$("#dish_list").find('.dish_ope').css('display', 'none');
					$("#dish_list").find('.number').html(0);
					$("#dish_category_scroller").find(".num").css('display', 'none').html(0);
					$("#dish_list").find(".dish_item").css('background-color', '#FFF');
					$order = new ArrayList();
					// 隐藏所有的操作页面
					// 是否有抽奖资格
					// showdialog(1,"下单成功！");
					orderinfo(obj.DB_Number);
					refreshCart("dish_info");
					// 清除选中状态
					$(".dish_list_active").css('border-bottom', '1px solid #f3f4f4').find(".vip").show();

				} else {
					// 桌台不存在或者被占用
					if (obj.result == 162 || obj.result == 160) {
						$table_data_id = null;
						// $("#open_slider_table").trigger("click");
						document.getElementById("slider_table_Full").style.display = "block";
						document.getElementById("slider_table").style.webkitTransform = "translate3d(0,0, 0)";
					};
					showdialog(1, obj.error);
				}
			},
			error: function() {
				showdialog(1, "请求失败!");
			}
		});
	};

	// 外卖下单
	function takeoutOrder() {
		var _order_number = 0;
		var _order_price = 0;
		for (var i = 0; i < $order.size(); i++) {
			var dishItemTemp = $order.get(i);
			_order_number += dishItemTemp.num;
			_order_price += dishItemTemp.num * dishItemTemp.price;
		};

		// var
		// sub_data02="r_id="+R_ID+"&ml_guid="+sub_ML_GUID+"&ti_code="+sub_TI_Code+"&pd_type="+sub_PD_Type+"&t_version="+sub_T_Version+"&db_remark="+sub_DB_Remark+"&xml="+encodeURIComponent(sub_xml);
		// 获取菜品分类
		var _currentT = new Date();
		var orderT = _currentT.getFullYear() + "-" + (_currentT.getMonth() + 1) + "-" + _currentT.getDate() + " " + _currentT.getHours() + ":" + _currentT.getMinutes();

		var waimai_name = $("#waimai_name").val();
		var waimai_phone = $("#waimai_phone").val();
		var waimai_address = $("#waimai_address").val();

		var sub_data02 = "r_id=" + gdata.shop_config.R_ID + "&ml_guid=" + sub_ML_GUID + "&pd_type=" + sub_PD_Type + "&charge=0&sum=" + _order_price;
		sub_data02 += "&b_time=" + orderT + "&b_address=" + encodeURIComponent(waimai_address) + "&b_peoplenum=1&b_invoiceunit=";
		sub_data02 += "&b_contact=" + encodeURIComponent(waimai_name) + "&b_phone=" + encodeURIComponent(waimai_phone) + "&b_remark=" + sub_DB_Remark + "&xml=" + encodeURIComponent(sub_xml);

		// add(decimal r_id, string ml_guid, int pd_type,decimal charge,decimal
		// sum,
		// DateTime b_time, string b_address, short b_peoplenum, string
		// b_invoiceunit,
		// string b_contact, string b_phone, string b_remark, string xml)
		jAjax({
			type: "post",
			url: "/1/takeout.asmx/add",
			data: sub_data02,
			showLoading: true,
			success: function(data) {

				var obj = eval('(' + data + ')');
				if (obj.result == 0) {
					dineType = 0;
					$("#waimai_address").val('');
					$("#waimai_phone").val('');
					$("#waimai_address").val('');
					$("#carte_dish").html('');
					// 选择状态为0
					$("#dish_list").find('.dish_add').css('display', 'block');
					$("#dish_list").find('.dish_ope').css('display', 'none');
					$("#dish_list").find('.number').html(0);
					$("#dish_category_scroller").find(".num").css('display', 'none').html(0);
					$("#dish_list").find(".dish_item").css('background-color', '#FFF');
					$order = new ArrayList();
					// 隐藏所有的操作页面
					// 是否有抽奖资格
					// showdialog(1,"下单成功！");
					orderinfo(obj.DB_Number);
					refreshCart("dish_info");
					// 清除选中状态
					$(".dish_list_active").css('border-bottom', '1px solid #f3f4f4').find("vip").show();

				} else {
					showdialog(1, obj.error);
				}

			},
			error: function() {
				showdialog(1, "请求失败!");
			}
		});

	};

	if (dineType == 1) {
		takeoutOrder();
	} else {
		localOrder();
	};

}
/* 下单 */
function addNewOrder() {
	if (gdata.ML_GUID || gdata.ML_GUID_02) initLoginMark(1);
	else reqeustUserSing(1);
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

			// var _temp_addflag = true;
			// var current_ary;
			// for (var a_item in arry) {
			// if (arry[a_item].CP_ID == dishItemTemp.CP_ID) {
			// _temp_addflag = false;
			// current_ary = arry[a_item];
			// break;
			// }
			// };
			// if (_temp_addflag) {
			// for (var pro_item in cp_Property) {
			//               
			// if (dishItemTemp.CP_ID ==cp_Property[pro_item].CP_ID) {
			// var _tmp_ary = cp_Property[pro_item];
			// _tmp_ary.cnt = gdata.localdata[l].DC_Amount;
			// arry.push(_tmp_ary);
			// break;
			// };
			// };
			// } else {
			// current_ary.cnt += gdata.localdata[l].DC_Amount;
			// };
		};

		// 更新左侧菜单
		// $("#"+targetId).html("共计"+total_number+"个菜,&nbsp<span
		// class='price'>￥"+total_price.toFixed(2)+"</span>");
		// $("#carte_info").html("共计"+total_number+"个菜,&nbsp<span
		// class='price'>￥"+total_price.toFixed(2)+"</span>");
		$("#" + targetId).html("<span style='font-family: Arial;'>" + total_number + "</span>个菜，&nbsp<span class='price'>￥" + total_price.toFixed(2) + "</span>");
		$("#carte_info").html("<span style='font-family: Arial;'>" + total_number + "</span>个菜，&nbsp<span class='price'>￥" + total_price.toFixed(2) + "</span>");

		if (total_number <= 0) {
			if (!crowdObj.crowd_code) {
				$("#dish_footer").slideUp(800);
			} else {
				$("#dish_footer .select_ok").text('跳过');
			};
			$("#carte_footer").slideUp(800);

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
	});

	$(target).find('.add').bind("click",
	function(e) {
		var $click_time = e["timeStamp"];
		if ($click_time - $last_click_time < 400) return;
		$last_click_time = $click_time;

		var num_obj = $(this).prev();
		$(num_obj).html(parseInt($(num_obj).html()) + 1);
		$("#" + $(num_obj).parent().attr('data-ref-id')).children('.add').trigger('click', true);
		// $(this).parent().parent().parent().css('background-color','#f9f7f7');
		$(this).parent().parent().parent().parent().css('border-bottom', '1px solid #e8383d').find(".vip").hide();;
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
		refreshCart("carte_info");
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
			// $(this).parent().parent().css('background-color','#f9f7f7');
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
	$(target).find('.dish_item').bind("click",
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
			console.log(o);
			// { id: 1, img: "", name:"",
			// price:"",vip:0,num:1,ctid:1,mark:"备注"}
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
		alert('aaaa');
		jAjax({
			type: "post",
			url: "local_json/carte_all.json",
			data: "r_id=" + R_ID,
			showLoading: true,
			success: function(data) {
				console.log(data);
				localStorage.setItem("carteAll", data);
				var obj = eval('(' + data + ')');
				var dish_list = $("#dish_list");
				$dish_load = true;
				// 初始化图片目录
				obj.RestaurantSign = RestaurantSign;
				$(dish_list).html(tmpl("tmpl-dish-list", obj));
				$dish_scroller = new iScroll("dish_list_scroller", {
					hScrollbar: false,
					vScrollbar: false,
					lockDirection: true,
					hScroll: false,
					vScroll: true,
					useTransition: true,
					click: true,
					onTouchEnd: function() {
						$blazy_control.validate();
					},
					onScrollEnd: function() {
						$blazy_control.validate();
					}
				});
				$blazy_control = loadLazy("dish_list_scroller", "../img/carte_default_small.png");
				bindOpeAction(dish_list);
				$("#dish_search").bind("click",
				function() {
					showSearch();
				});
				bindDetailAction(dish_list);
			},
			error: function() {
				showdialog(1, "请求失败!");
			}
		});
	}
}

function initDishList() {
	if ($menu_load == false) {
		// 获取菜品分类
		jAjax({
			type: "post",
			url: "local_json/carte_types.json",
			data: "r_id=" + R_ID,
			showLoading: true,
			success: function(data) {
				var obj = eval('(' + data + ')');
				// var obj=data;
				$("#dish_menu").html(tmpl("tmpl-dish-category", obj));

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
			},
			error: function() {
				showdialog(1, "请求失败!");
				setTimeout(function() {
					$("#loading_img").removeClass("rotate_animation");
				},
				100);
			}
		});
	} else {
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

	$("#dish_back").bind("click",
	function() {

		document.getElementById("slider_dish").style.webkitTransform = "translate3d(100%,0,0)";

	});

	$("#dish_ok").bind("click",
	function() {
		if ($order.size() > 0) {
			if (crowdObj.crowd_code) {
				$("#carte_mark").hide();
			} else {
				$("#carte_mark").show();
			};
			// document.getElementById("carte_page").style.display="block";
			// setTimeout(function(){
			document.getElementById("carte_page").style.webkitTransform = "translate3d(0,0,0)";
			// });
			if (dineType == 1) {
				$("#zhuotaiRow").hide();
				$("#waimaiRow").show();
				$("#waimai_name").val(gdata.takeinfo.name);
				$("#waimai_phone").val(gdata.takeinfo.phone);
				$("#waimai_address").val(gdata.takeinfo.address);

			} else {
				$("#zhuotaiRow").show();
				$("#waimaiRow").hide();
			};
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

function init_persons_number() {
	var menu_item_count = 7;
	var menu_item_width = document.body.clientWidth / menu_item_count;
	$('#basic').find("li").width(menu_item_width + "px");
	$('#basic').find("li").height(menu_item_width + "px");
	$('#basic').find("li").css("line-height", menu_item_width + "px");
	$frame = $('#basic');
	var $slidee = $frame.children('ul').eq(0);
	var $wrap = $frame.parent();

	var options = {
		horizontal: 1,
		itemNav: 'forceCentered',
		activateMiddle: 1,
		smart: 1,
		activateOn: 'click',
		mouseDragging: 1,
		touchDragging: 1,
		releaseSwing: 1,
		startAt: 5,
		scrollBar: $frame.find('.scrollbar'),
		scrollBy: 1,
		pagesBar: $frame.find('.pages'),
		activatePageOn: 'click',
		speed: 300,
		moveBy: 600,
		elasticBounds: 1,
		dragHandle: 1,
		dynamicHandle: 1,
		clickBar: 1,
	};

	$frame_sly = new Sly($frame, options, true).init();
}
/* 初始化餐桌和店铺信息，以及GUID身份信息 */
function init_shop() {
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
		
		$.ajax({
			url: "local_json/lottery_rule.json",
			type: "post",
			data: "r_id=" + R_ID,
			//data: "r_id=",
			dataType: "json",
			success: function(data) {
				if (data.Lottery) {
					if (data.LotterySum > 0) {
						$("#index_tip").children("span").html("发现有消费满" + data.LotterySum + "元抽奖活动");
					} else {
						$("#index_tip").children("span").text("发现有活动");
					};
					$("#index_tip").show("slow");

				}

			}
		});

	};
	// 构造人数信息
	$("#person_category").html(tmpl("tmpl-person-category"));
	$person_scroller = new iScroll("person_category", {
		hScrollbar: false,
		vScrollbar: false,
		lockDirection: true,
		hScroll: false,
		vScroll: true,
		useTransition: true,
		click: true
	});
	$("#cancel_table").bind("click",
	function() {
		document.getElementById("slider_table_Full").style.display = "none";
		$("#slider_table").css({
			"-webkit-transform": "translate3d(0,100%, 0)"
		});
	});
	$("#cancel_person").bind("click",
	function() {
		$("#slider_person").css({
			"-webkit-transform": "translate3d(0,100%, 0)"
		});
	});

	$("#person_category").find("li").bind("click",
	function() {
		if (!$(this).hasClass('cancel')) {
			$person_data_id = $(this).attr('data-id');

			$("#index_table_pe").text($(this).attr('data-id') + "人");
			localStorage.setItem("person-data-id", $person_data_id);
			$('.person_active').removeClass('person_active');
			$(this).addClass("person_active")
		}

		$("#slider_person").css({
			"-webkit-transform": "translate3d(0,100%, 0)"
		});
	});
	// 初始化店铺信息，和GUID，以及桌台信息
	jAjax({
		type: "post",
		url: "./local_json/restaurant.json",
		data: "sign_or_null=",
		dataType: "json",
		showLoading: true,
		async: false,
		success: function(data) {
			// alert(JSON.stringify(data));
			var obj = eval('(' + data + ')');
			gdata.shop_config = obj;
			re_init_shop(obj);
			$shop_load = true;
		},
		error: function() {
			showdialog(1, "请求失败!");
		}
	});

	// 初始化店铺信息，和GUID，以及桌台信息
	$('#select_table,#select_table2').bind("click",
	function() {
		document.getElementById("slider_table_Full").style.display = "block";
		document.getElementById("slider_table").style.webkitTransform = "translate3d(0,0, 0)";
	});
	jAjax({
		type: "post",
		url: "./local_json/tables.json",
		data: "r_id=" + R_ID,
		showLoading: true,
		success: function(data) {
			var obj = eval('(' + data + ')');
			// var obj=data;
			$("#table_category").html(tmpl("tmpl-table-category", obj));
			$table_scroller = new iScroll("table_category", {
				hScrollbar: false,
				vScrollbar: false,
				lockDirection: true,
				hScroll: false,
				vScroll: true,
				useTransition: true,
				click: true
			});
			$("#table_category").find("li").bind("click",
			function(e) {
				var $click_time = e["timeStamp"];
				if ($click_time - $last_click_time < 400) return;
				$last_click_time = $click_time;

				if (!$(this).hasClass('cancel')) {
					$table_data_id = $(this).attr('data-id');
					localStorage.setItem("table-data-id", $(this).attr('data-id'));
					localStorage.setItem("table-data-code", $(this).attr('data-code'));
					localStorage.setItem("table-data-name", $(this).attr('data-name'));

					$("#open_slider_tableName").html($(this).attr('data-name'));

					$('#select_table,#select_table2').html($(this).attr('data-name'));
					$('#index_table_text').html($(this).attr('data-name'));
					$('.table_active').removeClass('table_active');
					$(this).addClass("table_active")
				}

				setTimeout(function() {
					document.getElementById("slider_table_Full").style.display = "none";
					$("#slider_table").css({
						"-webkit-transform": "translate3d(0,100%, 0)"
					});
				},
				300);

			});
			$table_load = true;
		},
		error: function() {

			showdialog(1, "请求失败!");
		}
	});
};

function bindToDishAction() {
	$("#loading_img").bind("click",
	function() {
		if ($shop_load && $table_load) {
			dineType = 0;
			crowdObj.crowd_code = "";
			crowdObj.crowd_version = "";
			
			// $(this).addClass("rotate_animation");
			initDishList();
			refreshCart("dish_info");
		} else {
			showdialog(1, "店铺信息初始化失败，请刷新重试!");
		}
	});
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
	$carteAll = eval('(' + localStorage.getItem("carteAll") + ')');
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
		for (var i = 0; i < $carteAll.listCarteType.length; i++) {
			var search_obj = $carteAll.listCarteType[i];
			for (var j = 0; j < search_obj.listCarte.length; j++) {
				var search_obj_carte = search_obj.listCarte[j];
				if (search_obj_carte.C_Name.indexOf(trimSearchContent) != -1) {
					// 找到菜品了
					result += search_obj_carte.C_Name;
					// 便利所有的规格
					for (var m = 0; m < search_obj_carte.listCarteSpec.length; m++) {
						search_obj_carte.listCarteSpec[m].number = 0;
						// 便利所有的订单
						for (var k = 0; k < $order.size(); k++) {
							var dishItemTemp = $order.get(k);
							if (dishItemTemp.id == search_obj_carte.listCarteSpec[m].CS_ID) {
								search_obj_carte.listCarteSpec[m].number = dishItemTemp.num;
							}
						}
					}
					searchResult.add(search_obj_carte);
				}
			}
		}

		if (searchResult.size() > 0) {
			// 模板
			var search_json_data = eval('(' + JSON.stringify(searchResult) + ')');
			search_json_data.RestaurantSign = RestaurantSign;
			var search_result = $("#search_result");
			$(search_result).html(tmpl("search-dish-item", search_json_data));
			if (searchResult.size() > 0) {
				$("#search_result").css("background-color", "#FFF");
			}
			var $blazy = loadLazy("search_dish_scroller", "../img/carte_default_small.png");
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
	$qaPage_scroll = new iScroll("mylist", {
		hScrollbar: false,
		vScrollbar: false,
		lockDirection: true,
		hScroll: false,
		vScroll: true,
		useTransition: true,
		click: true
	});

	$table_data_id = getQueryStringValue("t");
	// document.addEventListener('touchmove', function (e) {
	// e.preventDefault(); }, false);
	document.addEventListener('touchmove', stophand, false); // 防止浏览器的滑动
	initUserMark();
	reloadUser();
	bindToSliderMenu();
	bindToDishAction();
	init_shop();

	// var cp_Property = [];
	// myAjax({
	// url: WX_URL + "/i106",
	// success: function(js_data) {
	// cp_Property = js_data.list;
	// }
	// });
	$order = new ArrayList();
	// alert($("body").height());
	t_height = $("body").height();
	$('.animation').css("height", t_height);
	$("#lotteryBack").click(function() {
		document.getElementById("lottery").style.webkitTransform = "translate3d(0, 1000px, 0)";
		// document.addEventListener('touchmove',
		// stophand, false); //防止浏览器的滑动
		document.body.scrollTop = 0;
	});
	$("#takeaway_back").click(function() {
		document.getElementById('takeaway').style.webkitTransform = 'translate3d(100%, 0, 0)';
	});
	$("#myAddress_add_back").click(function() {
		document.getElementById('myAddress_add').style.webkitTransform = 'translate3d(100%, 0, 0)';
	});
	$(".tip_close").click(function() {
		$("#index_tip").hide("slow");
	});
	$("#takeawaymain,#takeaway_footer").click(function() {
		$(".tanchu").hide();
		$("#mylist").slideUp(500);

	});
	$("#listBtn").click(function(e) {
		e.stopPropagation();
		if ($("#mylist").css("visibility") == "hidden") {
			$("#mylist").css("visibility", "visible");
			$("#mylist").hide();
			setTimeout(function() {
				$(".tanchu").show();
				$("#mylist").slideDown(500);
			},
			50);

		} else {
			$(".tanchu").show();
			$("#mylist").slideDown(500);
		};

	});

	var $takeaway_list_scroll;

	$("#index_waimai").click(function() {
		document.getElementById('takeaway').style.webkitTransform = 'translate3d(0, 0, 0)';
		$("#takeaway_list").attr("mark", "name");
		var current_Time = new Date();
		gdata.shop_config.t = current_Time.getFullYear() + "-" + (current_Time.getMonth() + 1) + "-" + current_Time.getDate() + " " + current_Time.getHours() + ":" + current_Time.getMinutes();
		gdata.shop_config.img = "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png";
		$("#takeaway_list").html(tmpl("takeaway_model", gdata.shop_config));
		$takeaway_list_scroll = new iScroll("takeawaymain", {
			hScrollbar: false,
			vScrollbar: false,
			lockDirection: true,
			hScroll: false,
			vScroll: true,
			useTransition: true,
			click: true
		});
		// $takeaway_list_scroll.scrollToElement(document.querySelector("[data-ctid='"+ctid+"']"),500)
		getCurrent_user_Address();

	});

	function getCurrent_user_Address() {

		if (gdata.addresslist.length > 0) {

			$("#mylist_scroll").html(tmpl("temp_myaddresslist2", gdata.addresslist));
			$mylist_scroll.refresh();
		} else {

			jAjax({
				type: "post",
				url: "/1/address.asmx/all",
				data: "ml_guid=" + gdata.ML_GUID,
				success: function(data) {

					var obj = eval('(' + data + ')');

					if (obj.result == 0) {

						gdata.addresslist = obj.addresses;

						if (gdata.addresslist == undefined) {
							gdata.addresslist = [];
						}
						if (gdata.addresslist.length > 0) {
							$("#mylist_scroll").html(tmpl("temp_myaddresslist2", obj.addresses));
							$("#mylist_scroll .item").click(function() {
								var _name = $(this).attr("name");
								var _phone = $(this).attr("phone");
								var _address = $(this).attr("address");
								$("#takeaway_list").append(tmpl("takeaway_model5", {
									name: _name,
									img: gdata.userinfo.M_Image,
									mark: "name"
								}));
								$("#takeaway_list").append(tmpl("takeaway_model5", {
									name: _phone,
									img: gdata.userinfo.M_Image,
									mark: "phone"
								}));
								$("#takeaway_list").append(tmpl("takeaway_model5", {
									name: _address,
									img: gdata.userinfo.M_Image,
									mark: "address"
								}));
								$("#takeaway_list").attr("mark", "end");
								gdata.takeinfo.name = _name;
								gdata.takeinfo.phone = _phone;
								gdata.takeinfo.address = _address;
								$("#takeaway_list").append(tmpl("takeaway_model4", {
									img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
								}));
								$takeaway_list_scroll.refresh();
								$takeaway_list_scroll.scrollToElement($("#takeaway_list").children(":last")[0], 500);
								$("#mylist").slideUp(500);
								$("[a-click]").unbind("click").bind("click",
								function() {
									if ($shop_load && $table_load) {
										initDishList();
										refreshCart("dish_info");
										dineType = 1; // 外卖
										crowdObj.crowd_code = "";
										crowdObj.crowd_version = "";
									} else {
										showdialog(1, "店铺信息初始化失败，请刷新重试!");
									}
								});

							});
						} else {

							$("#mylist_scroll").html("<div class=\"item no-border\"><div>您还未收藏收货地址！</div></div>");
						};

						$mylist_scroll.refresh();
					} else {
						$("#mylist_scroll").html("<div class=\"item no-border\"><div>您还未收藏收货地址！</div></div>");
					}
				}
			});

		};
	};

	//
	$("#sendMessage-Text").change(function() {
		if ($(this).val()) {
			$("#listBtn").hide();
			$("#messagebtn").show();
		} else {
			$("#listBtn").show();
			$("#messagebtn").hide();
		}
	});

	$("#sendMessage-Text").keyup(function() {
		if ($(this).val()) {
			$("#listBtn").hide();
			$("#messagebtn").show();
		} else {
			$("#listBtn").show();
			$("#messagebtn").hide();
		}
	});

	$("#messagebtn").click(function() {
		var inputObj = $(this).parent().find("input");
		var str = inputObj.val();
		var _foucs_flag = true;

		if (!str) {
			return;
		};

		var takeaway_mark = $("#takeaway_list").attr("mark");
		if (chatFlag) {

			var _goFlag = true;
			// 处理重新输入标记
			if (chatFlag == "1") {

				$("#takeaway_list").append(tmpl("takeaway_model5", {
					name: str,
					img: gdata.userinfo.M_Image,
					mark: "name"
				}));
				gdata.takeinfo.name = str;
			} else if (chatFlag == "2") {
				if (!isMobile_str(str)) {
					_goFlag = false;
					$("#takeaway_list").append(tmpl("takeaway_model6", {
						message: "手机号码输入有误。",
						img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
					}));
					inputObj.val('');
					$takeaway_list_scroll.refresh();
					$takeaway_list_scroll.scrollToElement($("#takeaway_list").children(":last")[0], 500);

				} else {

					$("#takeaway_list").append(tmpl("takeaway_model5", {
						name: str,
						img: gdata.userinfo.M_Image,
						mark: "phone"
					}));
					gdata.takeinfo.phone = str;
				}
			} else {
				$("#takeaway_list").append(tmpl("takeaway_model5", {
					name: str,
					img: gdata.userinfo.M_Image,
					mark: "address"
				}));
				gdata.takeinfo.address = str;
			};

			if (_goFlag) {
				if (takeaway_mark == "name") {
					$("#takeaway_list").append(tmpl("takeaway_model2", {
						"name": "名字",
						img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
					}));
				} else if (takeaway_mark == "phone") {

					$("#takeaway_list").append(tmpl("takeaway_model2", {
						name: "电话",
						img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
					}));
				} else if (takeaway_mark == "address") {
					$("#takeaway_list").append(tmpl("takeaway_model2", {
						name: "地址",
						img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
					}));
				} else {
					$("#takeaway_list").append(tmpl("takeaway_model4", {
						img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
					}));
					$("[a-click]").unbind("click").bind("click",
					function() {
						if ($shop_load && $table_load) {
							initDishList();
							refreshCart("dish_info");
							dineType = 1; // 外卖
							crowdObj.crowd_code = "";
							crowdObj.crowd_version = "";
						} else {
							showdialog(1, "店铺信息初始化失败，请刷新重试!");
						}
					});

				};

				chatFlag = "";
			}

		} else {

			if (takeaway_mark == "name") {
				$("#takeaway_list").append(tmpl("takeaway_model5", {
					name: str,
					img: gdata.userinfo.M_Image,
					mark: "name"
				}));
				$("#takeaway_list").attr("mark", "phone");
				gdata.takeinfo.name = str;
				$("#takeaway_list").append(tmpl("takeaway_model2", {
					"name": "电话",
					img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
				}));
			} else if (takeaway_mark == "phone") {

				$("#takeaway_list").append(tmpl("takeaway_model5", {
					name: str,
					img: gdata.userinfo.M_Image,
					mark: "phone"
				}));
				// takeaway_model6
				if (!isMobile_str(str)) {
					$("#takeaway_list").append(tmpl("takeaway_model6", {
						message: "手机号码输入有误。",
						img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
					}));

				} else {

					$("#takeaway_list").attr("mark", "address");
					gdata.takeinfo.phone = str;
					$("#takeaway_list").append(tmpl("takeaway_model2", {
						name: "地址",
						img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
					}));
				}
			} else if (takeaway_mark == "address") {

				$("#takeaway_list").append(tmpl("takeaway_model5", {
					name: str,
					img: gdata.userinfo.M_Image,
					mark: "address"
				}));
				$("#takeaway_list").attr("mark", "end");
				gdata.takeinfo.address = str;

				$("#takeaway_list").append(tmpl("takeaway_model4", {
					img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
				}));
				$("[a-click]").unbind("click").bind("click",
				function() {
					if ($shop_load && $table_load) {
						initDishList();
						refreshCart("dish_info");
						dineType = 1; // 外卖
						crowdObj.crowd_code = "";
						crowdObj.crowd_version = "";
					} else {
						showdialog(1, "店铺信息初始化失败，请刷新重试!");
					}
				});

				// 检测新地址
				if (gdata.ML_GUID) {
					if (gdata.addresslist.length >= 10) {
						return;
					}
					var newAddress = true;
					for (var j in gdata.addresslist) {
						if (gdata.addresslist[j].CA_Address == gdata.takeinfo.address && gdata.addresslist[j].CA_Contact == gdata.takeinfo.name && gdata.addresslist[j].CA_Phone == gdata.takeinfo.phone) {
							newAddress = false;
							break;
						}
					};
					if (newAddress) {
						_foucs_flag = false;
						// showdialog(2,"发现有新地址，您是否要保存？",function(){
						// jAjax({
						// type: "post",
						// url:
						// "/1/address.asmx/add",
						// data: "ml_guid=" +
						// gdata.ML_GUID +
						// "&address=" +
						// encodeURIComponent(gdata.takeinfo.address)
						// + "&contact=" +
						// encodeURIComponent(gdata.takeinfo.name)
						// + "&phone=" +
						// gdata.takeinfo.phone
						// +
						// "&is_default=false",
						// success: function
						// (data) {
						// var obj2 = eval('(' +
						// data + ')');
						// if(obj2.result==0){
						// gdata.addresslist =
						// obj2.addresses;
						// showdialog(1,"保存成功!");
						// setTimeout(function(){
						// $("#mylist_scroll").html(tmpl("temp_myaddresslist2",gdata.addresslist));
						// $mylist_scroll.refresh();
						// },50);
						// }else
						// {
						// showdialog(1,"保存失败!");
						// }
						// }
						// });
						//                                
						// },function(){
						//                                
						// });
					};
				}

			} else {

				$("#takeaway_list").append(tmpl("takeaway_model3", {
					img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
				}));
				$("[a-click]").unbind("click").bind("click",
				function() {
					if ($shop_load && $table_load) {
						initDishList();
						refreshCart("dish_info");
						dineType = 1; // 外卖
						crowdObj.crowd_code = "";
						data.crowd_version = "";
					} else {
						showdialog(1, "店铺信息初始化失败，请刷新重试!");
					}
				});
			};
		};
		if (_foucs_flag) {
			inputObj.focus();
		};
		inputObj.val('');
		$takeaway_list_scroll.refresh();
		$takeaway_list_scroll.scrollToElement($("#takeaway_list").children(":last")[0], 500);
	});

	$("#myaddress_add_btn").click(function() {
		document.getElementById('myAddress_add').style.webkitTransform = 'translate3d(0%, 0, 0)';
	});
	$("#myAddress_back").click(function() {

		document.getElementById('myAddress').style.webkitTransform = 'translate3d(100%, 0, 0)';
	});

	$(".myAddress .item2").live("click",
	function() {

		if ($(this).attr("del")) {
			// $(this).css({"-webkit-transform":"translate3d(0px,
			// 0px, 0px)"});
			$(this).stop().animate({
				left: "0px"
			});
			$(this).attr("del", "")
		} else {
			// $(this).css({"-webkit-transform":"translate3d(-60px,
			// 0px, 0px)"});
			$(this).stop().animate({
				left: "-60px"
			});
			$(this).attr("del", true)
		}
	});

	$("#takeawaymain .message").live("click",
	function() {
		var _mark = $(this).parents(".item2").attr("mark");
		$(this).next().show();

	});

	$("#takeaway").click(function() {
		$("#takeaway .tip").hide();
	});
	$("#takeawaymain .tip").live("click",
	function() {
		var _mark = $(this).parents(".item2").attr("mark");
		$(this).hide();
		if (_mark == "name") {
			chatFlag = "1";
			$("#takeaway_list").append(tmpl("takeaway_model2", {
				"name": "名字",
				img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
			}));
		} else if (_mark == "phone") {
			chatFlag = "2";
			$("#takeaway_list").append(tmpl("takeaway_model2", {
				"name": "电话",
				img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
			}));
		} else if (_mark == "address") {
			chatFlag = "3";
			$("#takeaway_list").append(tmpl("takeaway_model2", {
				"name": "地址",
				img: "/dish/" + gdata.shop_config.RestaurantSign + "/restaurant.png"
			}));
		};
		$takeaway_list_scroll.refresh();
		$takeaway_list_scroll.scrollToElement($("#takeaway_list").children(":last")[0], 5);

	});

	// delete(string ml_guid, decimal id)
	$(".myAddress .item2 .del").live("click",
	function() {
		var _id = $(this).parent().attr("CA_ID");
		var _ParentObj = $(this).parent();

		$.ajax({
			url: "/1/lottery.asmx/delete",
			type: "post",
			data: "ml_guid=" + gdata.ML_GUID + "&id=" + _id,
			success: function(data) {
				var obj = eval('(' + data + ')');
				if (obj.result == 0) {
					_ParentObj.remove();
				} else {
					showdialog(1, obj.error);
				}

			}
		});

	});

});