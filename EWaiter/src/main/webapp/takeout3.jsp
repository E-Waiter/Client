<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String dishJSON = (String)request.getParameter("menu");
	String phone = (String)request.getParameter("sub_DB_Phone");
%>
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta content=”yes” name=”apple-mobile-web-app-capable” />
<meta content=”black” name=”apple-mobile-web-app-status-bar-style” />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

   <script src="resource/js/jquery-1.8.3.min.js" type="text/javascript"></script>
       <!--ajax 请求库-->
    <script src="resource/js/jlib.js" type="text/javascript"></script>
   <script>
       var ua = navigator.userAgent.toLowerCase();
       function focusOnTelePhoneInput() {
           $("#telephone").focus();
       }
       var $carteAll = null;
       try { gdata = JSON.parse(localStorage.getItem('gdata')); } catch (ex) { alert('error'); gdata = null };
/*        try { dishJson = JSON.parse(localStorage.getItem('dishJson')); } catch (ex) { alert('error'); gdata = null }; */
       try { phone = localStorage.getItem('phone'); } catch (ex) { alert('error'); gdata = null };
      
       if (gdata == null) { gdata = {}; };
       if( phone == null) {
    	   phone = <%= phone%>;
    	   localStorage.setItem('$phone', phone);
       }

   </script>
    <link href="resource/css/main.css" rel="stylesheet" type="text/css" />
    <link href="resource/css/base.css" rel="stylesheet" type="text/css" />
    <link href="resource/css/xg.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>

    <!--选择菜品的页面-->
    <div id="slider_dish" class="animation" style="-webkit-transform: translate3d(0, 0px, 0px);display: block;">
        <div id="dish_container">
            <div id="dish_menu"></div>
            <div id="dish_list"></div>
        </div>
        
        <div id="dish_footer">
            <div id="dish_info"></div>
            <div id="dish_ok"><button class="select_ok" >选好了</button></div>
        </div>
    </div>


    <!--加载div-->
    <div id="load" class="load">
        <div class="full"></div>
            <div class="l-body">
                <div class="content"></div>
                <div class="spinner">
                    <div class="spinner-container container1">
                      <div class="circle1"></div>
                      <div class="circle2"></div>
                      <div class="circle3"></div>
                      <div class="circle4"></div>
                    </div>
                    <div class="spinner-container container2">
                      <div class="circle1"></div>
                      <div class="circle2"></div>
                      <div class="circle3"></div>
                      <div class="circle4"></div>
                    </div>
                    <div class="spinner-container container3">
                      <div class="circle1"></div>
                      <div class="circle2"></div>
                      <div class="circle3"></div>
                      <div class="circle4"></div>
                    </div>
                </div>
           <div class="load-text"></div>
      </div>
    </div>
    <!-- 每次在菜单页面做下拉动作时做标记 -->
   <div id="pullDown"></div>   
    
    <!--结账单-->
    <div id="slider_order" class="animation" style="-webkit-transform: translate3d(100%, 0px, 0px); display: block;"></div> 
    <!-- Carte Page -->
    <div id="carte_page" class="animation slider_down" style="-webkit-transform: translate3d(100%, 0, 0px);display: block;">
        <div class="carte_title">
            <span id="cart_back" class="back"></span>
            <div id="cart_shop_title" siteTitle="true"></div>
        </div>
        <div id="carte_container">
           
            <div id="carte_mark">
                <div id="zhuotaiRow" style="padding-left: 15px;border-bottom: 1px solid #f3f4f4;"> 
					<div id="carte_memo" style="position: relative;">
						用餐人数:
						<div
							style="position: absolute; top: 0px; left: 85px; right: 15px;">
							<input id="person_count_input" type="tel" style="" class="input no_value"
								value="请输入用餐人数" 
								onfocus="this.className='input'; if(this.value=='请输入用餐人数'){this.value='';}"
								onblur="this.blur();if(this.value==''){this.value='请输入用餐人数';this.className='input no_value';}" />
						</div>
					</div>
                </div>
				<div style="padding-left: 15px;">
					<div id="carte_memo" style="position: relative;">
						备注:
						<div
							style="position: absolute; top: 0px; left: 60px; right: 15px;">
							<input id="remark_input" style="" class="input no_value"
								value="请输入特殊要求"
								onfocus="this.className='input'; if(this.value=='请输入特殊要求'){this.value='';}"
								onblur="this.blur();if(this.value==''){this.value='请输入特殊要求';this.className='input no_value';}" />
						</div>
					</div>
				</div>				
				<!--<div style="padding-left: 15px;"> <div id="carte_memo">备注:<textarea id="remark_input" class="input no_value" value="请输入特殊要求" onfocus="this.className='input'; if(this.value=='请输入特殊要求'){this.value='';}" onblur="this.blur();if(this.value==''){this.value='请输入特殊要求';this.className='input no_value';}"></textarea> </div></div>-->
                
            </div>
            <div id="carte_dish"></div>
        </div>

        <div id="carte_footer">
            <div id="carte_info">共计11个菜,&nbsp;<span class="price">￥0.43</span></div>
            <div id="carte_ok"><button class="select_ok" >立即下单</button></div>
        </div>
    </div>
    

    <!-- 搜索页面 -->
    <div id="searchPage" style="display:none;">
        <div class="mask"></div>
        <div id="search_content">
        <div class="main">
            <input class="input search" value="请输入菜名" onfocus="this.value=''" onblur="if(this.value==''){this.value='请输入菜名'}" id="search_input" />
           </div>
            <span id="search_content_finish">取消</span>
        </div>
        <div id="search_result"></div>
    </div>

    <!-- 详细页面 -->
    <div id="dish_details" style="display: none;"></div>

    <div id="order_detail" style="display:none;"></div>
   

 
   
    <script src="resource/js/iscroll.js" type="text/javascript"></script>
    <!--延迟加载-->
    <script src="resource/js/blazy.js" type="text/javascript"></script>
    <!--模板-->
    <script src="resource/js/tmpl.min.js" type="text/javascript"></script>
    <!--arraylist-->
    <script src="resource/js/jarray.min.js" type="text/javascript"></script>
    <script src="resource/js/main.js" type="text/javascript"></script>
    <script src="resource/js/xg.js" type="text/javascript"></script>
    <script src="resource/js/main1.1.js" type="text/javascript"></script>
    <script src="resource/js/wScratchPad.js" type="text/javascript"></script>
    

    <!--获取所有的菜品分类-->
    <script type="text/x-tmpl" id="tmpl-dish-category">
        <div id="dish_category_scroller">
            <ul>
                {%
                 var f_flag=false;<!--推荐的菜在此处做便利-->
                 for (var i=0; i< 0 ; i++) {f_flag=true;  %}
                    <li d-id={%=o.foodTypeList[i].id %}    {% if(i==0){ %}class="active" {%}%}>
                    {% if(i==0){ %}
                        <img src='../img/triangle.png' class='hot_category' />
                    {% } %}
                    <span>{%=o.foodTypeList[i].name %}</span><span class="num">2</span></li>
                {% } %}

                {% 
                
                for (var i=0; i< o.foodTypeList.length ; i++) { %}
                    <li d-id={%=o.foodTypeList[i].id %}   {% if(i==0 && !f_flag){ %}class="active" {%}%} >
                    <span>{%=o.foodTypeList[i].name %}</span><span class="num">2</span></li>
                {% } %}
            </ul>
        </div>
    </script>

    <script type="text/x-tmpl" id="tmpl-dish-list">
        <div id="dish_list_scroller">
            <ul>
              {% 
                var this_price="";
                var this_price_vip="";
                for (var k=0; k< o.foodTypeList.length ; k++) { %}  
                    <li class="dish_list_active nav" data-ctid="{%=o.foodTypeList[k].id%}" >{%=o.foodTypeList[k].name%}</li>
                {% for (var i=0; i< o.foodTypeList[k].foodModels.length ; i++) { %}
                    <li class="dish_list_active" >
                        <div class="dish_item">
                            <div class="dish_image">
					<img class="dish_img b-lazy" src="/default.png" data-src="/dish/{%=o.RestaurantSign %}/LO/128x128/{%=o.foodTypeList[k].foodModels[i].id%}.jpg" alt="" /></div>
                            <div class="dish_name">{%=o.foodTypeList[k].foodModels[i].name%}</div>
                            {%
                                if(i<=1)
                                {
                                  this_price=subNum(o.foodTypeList[k].foodModels[i].dPrice);
                                  //this_price_vip=subNum(o.foodTypeList[k].foodModels[i].dPrice);
								  this_price_vip=0;
                                }
                            %}
                            
                            <div class="dish_price">￥{%=this_price%}/{%=o.foodTypeList[k].foodModels[i].unit%} {% if(this_price_vip>0){ %} <span class="vip" style="padding-left: 15px;">VIP {%=this_price_vip %}</span>  {% } %} </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;"
                                data-remark="{%=o.foodTypeList[k].foodModels[i].name%}"
                                id="dish_ope_id_{%=o.foodTypeList[k].foodModels[i].id%}" cp-id="{%=o.foodTypeList[k].foodModels[i].id%}" d-ctid="{%=o.foodTypeList[k].id%}" data-id="{%=o.foodTypeList[k].foodModels[i].id%}" 
                                data-name="{%=o.foodTypeList[k].foodModels[i].name%}" data-spec="{%=o.foodTypeList[k].foodModels[i].unit%}"
                                
                                data-price="{%=this_price%}" data-vip-price="{%=this_price_vip%}"  data-img="/dish/{%=o.RestaurantSign %}/LO/128x128/{%=o.foodTypeList[k].foodModels[i].id%}.jpg">
                                <span class="sub"></span><span class="number" >0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                {% }} %}
            </ul>
        </div>
    </script>

    <script type="text/x-tmpl" id="order-dish-item">
        <div id="carte_dish_scroller">
            <ul>
                {% for (var i=0; i<o.list.length ; i++) { %}
                    <li>
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img" src="{%=o.list[i].img %}" onerror="javascript:this.src='resource/img/carte_default_small.png';" alt="" /></div>
                            <div class="dish_name">{%=o.list[i].name %}</div>
                            <div class="dish_price">￥{%=o.list[i].price %}</div>
                            <div class="dish_ope"  data-id="{%=o.list[i].id %}" data-name="{%=o.list[i].name%}" data-spec="{%=o.list[i].spec%}"
                                 data-price="{%=o.list[i].price%}" data-ref-id="{%=o.list[i].ref_id%}">
                                 <span class="sub"></span><span class="number">{%=o.list[i].num %}</span><span class="add"></span>
                            </div>
                        </div>
                     </li>
                 {% } %}
            </ul>
         </div>
    </script>

    <script type="text/x-tmpl" id="search-dish-item">
        <div id="search_dish_scroller">
            <ul>
            {% for (var i=0; i< o.datas.length ; i++) { %}
                
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image">
                                <img class="dish_img b-lazy" src="/default.png" data-src="/dish/{%=o.RestaurantSign %}/LO/128x128/{%=o.datas[i].C_ID%}.jpg" alt="" />
                            </div>
                            <div class="dish_name">{%=o.datas[i].name%}</div>
                            <div class="dish_price">￥{%=o.datas[i].dPrice%}/{%=o.datas[i].unit%}</div>
                            <div class="dish_ope" data-ref-id="dish_ope_id_{%=o.datas[i].id%}">
                                <span class="sub"></span><span class="number">{%=o.datas[i].number %}</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
             {% } %}
            </ul>
         </div>    
    </script>

    <script type="text/x-tmpl" id="search-dish-noitem">
        <div id="search_dish_noresult">对不起，没有找到菜品</div>
    </script>

    <!--订单模板-->
    <script type="text/x-tmpl" id="tmpl-order-info">
    <div class="dish_title"><span id="order-back" class="back"></span>结账单</div>
    <div class="body" id="order_list_scroller">
         <div id="order-content">
              <div class="scroll">
                   <div class="Container">
                        <div class="order-Tip" style="height: 40px;line-height: 40px;background-color: #FFF2DD;position: relative;padding: 0 10px;"><span style="color: #DA643C;">请等待服务员与您确认订单</span>
                        </div>
                        <div class="content">
                            <div class="hd">{%=o.name %}</div>
                            <div class="nav">
                                <div class="left" style="font-size: 14px;">订单号：{%=o.orderID %}</div>
                                <div class="right"style="font-size: 14px;">{%=o.time %}</div>
                            </div>
                            <ul class="list">
                             {% for(var i in o.foods) { %}
                                <li class="item clearfix">
                                    <div class="name">{%=o.foods[i].name %}</div>
                                    <div class="num">x&nbsp;{%=o.foods[i].number %}</div>
                                    <div class="price">{%=o.foods[i].price %}</div>
                                </li>
                             {% } %}
                            </ul>
                            <div class="row"><div class="left"></div><div class="heji right">合计:<div class="totalPrice">{%=o.totalPrice%}元</div></div></div>
                            <div class="row"><div class="left">桌台号：{%=o.merID %}号桌</div>
                            </div>
                            <div class="mark"><div style="line-height: 18px;padding-top: 10px;">备注:{%=o.des%}</div></div>
                        </div>
                    </div>
            </div>
            </div>
            </div>
        </div>
    </script>
    <!--菜品详情模板-->
     <script type="text/x-tmpl" id="tmpl_dish_detail">
        <div class="wrap"">
            <div class="pagebar"></div>
            <div class="mask"></div>
            
			<div class="sly_frame dish_detail" id="dish_detail">
                <ul class="clearfix">
                    {% for (var i=0; i<o.list.length ; i++) { %}
                        <li id="scroll_dish_info_{%=o.list[i].id %}">
                            <div style="width:80%;height: 100%;margin: 0 auto;position: relative;background: #fff;">
                                <div class="title">{%=o.list[i].name%}</div>
                                <div class="content">
                                <table>
                                  <tbody><tr><td><img class="img" src="{%=o.list[i].img%}"/></td></tr>
                                </tbody></table>
                                </div>
                                <div class="bottom">
                                    <div>价格：<span>{%=o.list[i].price%}</span></div>
                                    <div>详情：<span>{%=o.list[i].mark%}</span></div>
                                    <div class="btn_add"></div>
                                </div>
                            </div>
                        </li>
                     {% } %}
                 </ul>
                 <div class="close" >close</div>
			</div>
		</div>
    </script>
    
    <script type="text/x-tmpl" id="tmpl_dish_detail_one">
           <div class="wrap">
                <div class="mask" id="mask_dish"></div>
                    <div class="sly_frame dish_detail" id="dish_detail" style="overflow: hidden;">
                        <ul class="clearfix">
                            <li>
                                <div style="width:100%;height: 100%;margin: 0 auto;position: relative;background: #fff;-webkit-border-radius: 5px;border-radius: 15px;">
                                        <div class="title"><span id="dish_title_name" style="display: inline-block;width: 130px;text-align: center;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">{%=o.name%} </span><button id="close_dish"></button></div>
                                        <div class="content" id="image-scroll">
                                            <div ><img class="img" src="" alt="" onerror="javascript:this.src='resource/img/carte_default_big.png'"/></div>
			                                <div ><img class="img" src="" alt="" onerror="javascript:this.src='resource/img/carte_default_big.png'"/></div>
                                            <div ><img class="img" src="" alt="" onerror="javascript:this.src='resource/img/carte_default_big.png'"/></div>
                                        
                                        </div>
                                        <div class="bottom" id="dish_detail_bottom">
                                        <div>
                                            <div style="padding:0px 10px; height: 52px;">
                                                <div style="line-height: 52px;height: 52px;float: left; width:100%;" class="clearfix">
                                                    <span style="width:45px;float: left; ">价格：</span>
                                                    <span id="dish_details_price" style="color:red;padding-left: 5px;float: left;display: block;font-family: Arial; color:#e8383d;">￥{%=o.price%}   
                                                    {% if(o.vip>0){ %} <span class="vip" style="padding-left: 15px;">VIP {%=o.vip %}</span>  {% } %} 
                                                    </span>
                                                    <div style="margin-top: 10px;float: right">
                                                        <div class="dish_add dish_add_02"></div>
                                                        <div class="dish_ope dish_ope_02" style="display:none;" data-ref-id="dish_ope_id_{%=o.id%}">
                                                            <span class="sub"></span><span class="number" id="dish_details_num">{%=o.num%}</span><span class="add"></span>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                            {%
                                                 var _markStr="暂无详情";
                                                 if(o.mark){
                                                    _markStr=o.mark;
                                                 }
                                             %}

                                            <div id="dish_detail_scroll"  style="line-height:20px;height:78px;overflow: hidden; ">
                                                <div style="padding: 8px 10px 10px 10px; " class="clearfix">
                                                    <span style="width:45px;float: left; ">详情：</span><span id="dish_details_meark" style="float: left;width: 220px;color: #605d5c;">{%=_markStr%}</span>
                                                </div>
                                            </div>
                                          
                                        </div>
                                        </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
    </script>

</body>
</html>
