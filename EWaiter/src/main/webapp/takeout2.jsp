<!DOCTYPE html>
<!-- saved from url=(0061)http://rdlmcs2.aidiancan.cn/jweb/htm/index.html?i=null&t=null -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    
   <script>
       //判断是否微信中打开
       var ua = navigator.userAgent.toLowerCase();
       var gdata;
       try { gdata = JSON.parse(localStorage.getItem('gdata')); } catch (ex) { alert('error'); gdata = null };
       if (gdata == null) { gdata = {}; };
       if (ua.match(/MicroMessenger/i) == "micromessenger" && !gdata.ML_GUID) {
           var _state = window.location.host;
           var param = document.location.search;
           if (!param) {
               _state = _state + "?filePath=htm";
           } else {
               _state = _state + param + "&filePath=htm"
           };
           _state = _state.replace(/&/g, "amp;").replace(/\?/g, "bmp;");
           var url = " https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxcf34c168e61773d0&redirect_uri=http://zyd.caipad.cn/weixin_redirect_page.html&response_type=code&scope=snsapi_base&state=" + _state + "#wechat_redirect";
           window.location.href = url;
       };
    
   </script>
    <link href="../红姨厨房_files/main.css" rel="stylesheet" type="text/css">
    <link href="../红姨厨房_files/base.css" rel="stylesheet" type="text/css">
    <link href="../红姨厨房_files/xg.css" rel="stylesheet" type="text/css">
    <title>红姨厨房</title>
</head>
<body>

    <!--选择桌台-->
    <div id="slider_table_Full" style=" background:#000; display:none; position:absolute ; top:0; height:100%; width:100%; opacity: 0.5; z-index:20;"> </div>
    <div id="slider_table" class="animation below slider_down" style="display: block; -webkit-transform: translate3d(0px, 100%, 0px); height: 784px;">
        <div id="basic_table">
            <div class="thick_border content cancel" style=" height:40px; line-height:40px; color:#220f00; font-size:20px; border-bottom:1px solid #6e4421;background: #C8C7C7;" id="cancel_table">取消选桌设置</div>
            <div id="table_category" style="overflow: hidden;">
        <div id="table_category_scroller" style="transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);">
            <ul>
            
               
                
                <li class="thick_border content" data-id="101" data-code="101" data-name="一楼大厅-散1">
                    <span>一楼大厅-散1</span></li>
                
                
                <li class="thick_border content" data-id="102" data-code="102" data-name="一楼大厅-散2">
                    <span>一楼大厅-散2</span></li>
                
                
                <li class="thick_border content" data-id="103" data-code="103" data-name="一楼大厅-散3">
                    <span>一楼大厅-散3</span></li>
                
                
                <li class="thick_border content" data-id="105" data-code="105" data-name="一楼大厅-散5">
                    <span>一楼大厅-散5</span></li>
                
                
                <li class="thick_border content" data-id="106" data-code="106" data-name="一楼大厅-散6">
                    <span>一楼大厅-散6</span></li>
                
                
                <li class="thick_border content" data-id="107" data-code="107" data-name="一楼大厅-散7">
                    <span>一楼大厅-散7</span></li>
                
                
                <li class="thick_border content" data-id="108" data-code="108" data-name="一楼大厅-散8">
                    <span>一楼大厅-散8</span></li>
                
                
                <li class="thick_border content" data-id="109" data-code="109" data-name="一楼大厅-卡1">
                    <span>一楼大厅-卡1</span></li>
                
                
                <li class="thick_border content" data-id="110" data-code="110" data-name="一楼大厅-卡2">
                    <span>一楼大厅-卡2</span></li>
                
                
                <li class="thick_border content" data-id="111" data-code="111" data-name="一楼大厅-卡3">
                    <span>一楼大厅-卡3</span></li>
                
                
                <li class="thick_border content" data-id="112" data-code="112" data-name="一楼大厅-卡5">
                    <span>一楼大厅-卡5</span></li>
                
                
                <li class="thick_border content" data-id="113" data-code="113" data-name="一楼大厅-卡6">
                    <span>一楼大厅-卡6</span></li>
                
                
                <li class="thick_border content" data-id="115" data-code="115" data-name="一楼大厅-卡7">
                    <span>一楼大厅-卡7</span></li>
                
                
                <li class="thick_border content" data-id="116" data-code="116" data-name="一楼大厅-卡8">
                    <span>一楼大厅-卡8</span></li>
                
                
                <li class="thick_border content" data-id="117" data-code="117" data-name="一楼大厅-卡9">
                    <span>一楼大厅-卡9</span></li>
                
                
                <li class="thick_border content" data-id="118" data-code="118" data-name="一楼大厅-卡10">
                    <span>一楼大厅-卡10</span></li>
                
                
                <li class="thick_border content" data-id="119" data-code="119" data-name="一楼大厅-卡11">
                    <span>一楼大厅-卡11</span></li>
                
                
                <li class="thick_border content" data-id="120" data-code="120" data-name="一楼大厅-卡12">
                    <span>一楼大厅-卡12</span></li>
                
                
                <li class="thick_border content" data-id="121" data-code="121" data-name="一楼大厅-卡13">
                    <span>一楼大厅-卡13</span></li>
                
                
                <li class="thick_border content" data-id="888" data-code="888" data-name="一楼大厅-快餐台">
                    <span>一楼大厅-快餐台</span></li>
                
            
               
                
                <li class="thick_border content" data-id="201" data-code="201" data-name="二楼大厅-散9">
                    <span>二楼大厅-散9</span></li>
                
                
                <li class="thick_border content" data-id="202" data-code="202" data-name="二楼大厅-散10">
                    <span>二楼大厅-散10</span></li>
                
                
                <li class="thick_border content" data-id="203" data-code="203" data-name="二楼大厅-散11">
                    <span>二楼大厅-散11</span></li>
                
                
                <li class="thick_border content" data-id="205" data-code="205" data-name="二楼大厅-散12">
                    <span>二楼大厅-散12</span></li>
                
                
                <li class="thick_border content" data-id="208" data-code="208" data-name="二楼大厅-散16">
                    <span>二楼大厅-散16</span></li>
                
                
                <li class="thick_border content" data-id="206" data-code="206" data-name="二楼大厅-散13">
                    <span>二楼大厅-散13</span></li>
                
                
                <li class="thick_border content" data-id="207" data-code="207" data-name="二楼大厅-散15">
                    <span>二楼大厅-散15</span></li>
                
                
                <li class="thick_border content" data-id="999" data-code="999" data-name="二楼大厅-快餐台">
                    <span>二楼大厅-快餐台</span></li>
                
            
               
                
                <li class="thick_border content" data-id="209" data-code="209" data-name="二楼茶室-茶1">
                    <span>二楼茶室-茶1</span></li>
                
                
                <li class="thick_border content" data-id="210" data-code="210" data-name="二楼茶室-茶2">
                    <span>二楼茶室-茶2</span></li>
                
                
                <li class="thick_border content" data-id="211" data-code="211" data-name="二楼茶室-茶5">
                    <span>二楼茶室-茶5</span></li>
                
                
                <li class="thick_border content" data-id="212" data-code="212" data-name="二楼茶室-茶8">
                    <span>二楼茶室-茶8</span></li>
                
            
               
                
                <li class="thick_border content" data-id="213" data-code="213" data-name="二楼会议室-会1">
                    <span>二楼会议室-会1</span></li>
                
                
                <li class="thick_border content" data-id="215" data-code="215" data-name="二楼会议室-会2">
                    <span>二楼会议室-会2</span></li>
                
                
                <li class="thick_border content" data-id="216" data-code="216" data-name="二楼会议室-会3">
                    <span>二楼会议室-会3</span></li>
                
                
                <li class="thick_border content" data-id="217" data-code="217" data-name="二楼会议室-会5">
                    <span>二楼会议室-会5</span></li>
                
                
                <li class="thick_border content" data-id="218" data-code="218" data-name="二楼会议室-会6">
                    <span>二楼会议室-会6</span></li>
                
                
                <li class="thick_border content" data-id="219" data-code="219" data-name="二楼会议室-会7">
                    <span>二楼会议室-会7</span></li>
                
                
                <li class="thick_border content" data-id="220" data-code="220" data-name="二楼会议室-会8">
                    <span>二楼会议室-会8</span></li>
                
                
                <li class="thick_border content" data-id="221" data-code="221" data-name="二楼会议室-会9">
                    <span>二楼会议室-会9</span></li>
                
                
                <li class="thick_border content" data-id="222" data-code="222" data-name="二楼会议室-会10">
                    <span>二楼会议室-会10</span></li>
                
                
                <li class="thick_border content" data-id="223" data-code="223" data-name="二楼会议室-会11">
                    <span>二楼会议室-会11</span></li>
                
                
                <li class="thick_border content" data-id="225" data-code="225" data-name="二楼会议室-会12">
                    <span>二楼会议室-会12</span></li>
                
                
                <li class="thick_border content" data-id="226" data-code="226" data-name="二楼会议室-会13">
                    <span>二楼会议室-会13</span></li>
                
            
            </ul>
        </div>
    </div>
        </div>
    </div>
    <!--选择人数-->
    <div id="slider_person" class="animation below slider_down" style="display: block; -webkit-transform: translate3d(0px, 100%, 0px); height: 784px;">
        <div id="basic_person">
            <div class="thick_border content cancel" style="background-color:lavender;" id="cancel_person">取消人数设置</div>
            <div id="person_category" style="overflow: hidden;">
        <div id="person_category_scroller" style="transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);">
            <ul>
                
                <li class="thick_border content" data-id="1"><span>1</span></li>
                
                <li class="thick_border content" data-id="2"><span>2</span></li>
                
                <li class="thick_border content" data-id="3"><span>3</span></li>
                
                <li class="thick_border content" data-id="4"><span>4</span></li>
                
                <li class="thick_border content" data-id="5"><span>5</span></li>
                
                <li class="thick_border content" data-id="6"><span>6</span></li>
                
                <li class="thick_border content" data-id="7"><span>7</span></li>
                
                <li class="thick_border content" data-id="8"><span>8</span></li>
                
                <li class="thick_border content" data-id="9"><span>9</span></li>
                
                <li class="thick_border content" data-id="10"><span>10</span></li>
                
                <li class="thick_border content" data-id="11"><span>11</span></li>
                
                <li class="thick_border content" data-id="12"><span>12</span></li>
                
                <li class="thick_border content" data-id="13"><span>13</span></li>
                
                <li class="thick_border content" data-id="14"><span>14</span></li>
                
                <li class="thick_border content" data-id="15"><span>15</span></li>
                
                <li class="thick_border content" data-id="16"><span>16</span></li>
                
                <li class="thick_border content" data-id="17"><span>17</span></li>
                
                <li class="thick_border content" data-id="18"><span>18</span></li>
                
                <li class="thick_border content" data-id="19"><span>19</span></li>
                
                <li class="thick_border content" data-id="20"><span>20</span></li>
                
            </ul>
        </div>
    </div>
        </div>
    </div>
    <!--选择菜品的页面-->
    <div id="slider_dish" class="animation" style="-webkit-transform: translate3d(0px, 0px, 0px); display: block; height: 784px;">
        <div class="dish_title">
            <span id="dish_back" class="back"></span>
            <div id="dish_shop_title" sitetitle="true">全部菜单</div>
            <div id="dish_search"></div>
        </div>
        
        <div id="dish_container">
            <div id="dish_menu">
        <div id="dish_category_scroller" style="overflow: hidden;">
            <ul style="transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);">
                

                
                    <li d-id="1325" class="">
                    <span>人气盖饭</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1319" class="">
                    <span>招牌盖饭</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1320" class="">
                    <span>红姨推荐</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1317" class="active">
                    <span>凉菜</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1324" class="">
                    <span>粉/面/馍</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1322">
                    <span>粥</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1321" class="">
                    <span>饮品</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1569" class="">
                    <span>下午茶</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1323" class="">
                    <span>下午茶</span><span class="num" style="display: inline;">5</span></li>
                
                    <li d-id="1402">
                    <span>红姨卷饼</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1537">
                    <span>大王肉堡套餐</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1538" class="">
                    <span>金牌打卤面</span><span class="num" style="display: none;">0</span></li>
                
                    <li d-id="1540">
                    <span>红姨卷饼套餐</span><span class="num" style="display: none;">0</span></li>
                
            </ul>
        </div>
    </div>
            <div id="dish_list">
        <div id="dish_list_scroller" style="overflow: hidden;">
            <ul style="transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, -8353.75016276042px) scale(1) translateZ(0px);">
                
                    <li class="dish_list_active nav" data-ctid="1317">凉菜</li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">酱鸭腿(个)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8868" cp-id="2" d-ctid="1317" data-id="8868" data-name="酱鸭腿" data-spec="个" data-ref-id="dish_ope_id_8868" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7843.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">自选凉菜(份)</div>
                            
                            
                            <div class="dish_price">￥10  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8887" cp-id="2" d-ctid="1317" data-id="8887" data-name="自选凉菜" data-spec="份" data-ref-id="dish_ope_id_8887" data-price="10" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7862.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">酱腔骨(块)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8920" cp-id="2" d-ctid="1317" data-id="8920" data-name="酱腔骨" data-spec="块" data-ref-id="dish_ope_id_8920" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7895.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">狮子头(个)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8921" cp-id="2" d-ctid="1317" data-id="8921" data-name="狮子头" data-spec="个" data-ref-id="dish_ope_id_8921" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7896.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">米饭(碗)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8951" cp-id="2" d-ctid="1317" data-id="8951" data-name="米饭" data-spec="碗" data-ref-id="dish_ope_id_8951" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7926.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">汤(碗)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8954" cp-id="1" d-ctid="1317" data-id="8954" data-name="汤" data-spec="碗" data-ref-id="dish_ope_id_8954" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7929.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                  
                    <li class="dish_list_active nav" data-ctid="1402">红姨卷饼</li>
                  
                    <li class="dish_list_active nav" data-ctid="1537">大王肉堡套餐</li>
                  
                    <li class="dish_list_active nav" data-ctid="1538">金牌打卤面</li>
                  
                    <li class="dish_list_active nav" data-ctid="1540">红姨卷饼套餐</li>
                  
                    <li class="dish_list_active nav" data-ctid="1569">下午茶</li>
                  
                    <li class="dish_list_active nav" data-ctid="1319">招牌盖饭</li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">老干妈肥肠饭(份)</div>
                            
                            
                            <div class="dish_price">￥25  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8737" cp-id="17" d-ctid="1319" data-id="8737" data-name="老干妈肥肠饭" data-spec="份" data-ref-id="dish_ope_id_8737" data-price="25" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7712.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">鲍汁鸭腿饭(份)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8749" cp-id="17" d-ctid="1319" data-id="8749" data-name="鲍汁鸭腿饭" data-spec="份" data-ref-id="dish_ope_id_8749" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7724.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">芽菜蒸肉饭(份)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8767" cp-id="17" d-ctid="1319" data-id="8767" data-name="芽菜蒸肉饭" data-spec="份" data-ref-id="dish_ope_id_8767" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7742.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">秘制卤肉饭(份)</div>
                            
                            
                            <div class="dish_price">￥20  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8780" cp-id="17" d-ctid="1319" data-id="8780" data-name="秘制卤肉饭" data-spec="份" data-ref-id="dish_ope_id_8780" data-price="20" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7755.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">咖喱鸡肉饭(份)</div>
                            
                            
                            <div class="dish_price">￥19  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8781" cp-id="17" d-ctid="1319" data-id="8781" data-name="咖喱鸡肉饭" data-spec="份" data-ref-id="dish_ope_id_8781" data-price="19" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7756.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">狮子头饭(份)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8796" cp-id="17" d-ctid="1319" data-id="8796" data-name="狮子头饭" data-spec="份" data-ref-id="dish_ope_id_8796" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7771.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">黄焖鸡饭(份)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8818" cp-id="17" d-ctid="1319" data-id="8818" data-name="黄焖鸡饭" data-spec="份" data-ref-id="dish_ope_id_8818" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7793.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">西红柿鸡蛋饭(份)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8859" cp-id="17" d-ctid="1319" data-id="8859" data-name="西红柿鸡蛋饭" data-spec="份" data-ref-id="dish_ope_id_8859" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7834.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">酸辣土豆丝饭(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8866" cp-id="17" d-ctid="1319" data-id="8866" data-name="酸辣土豆丝饭" data-spec="份" data-ref-id="dish_ope_id_8866" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7841.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">醋溜土豆丝饭(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8867" cp-id="17" d-ctid="1319" data-id="8867" data-name="醋溜土豆丝饭" data-spec="份" data-ref-id="dish_ope_id_8867" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7842.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">肉末酸豆角饭(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8885" cp-id="17" d-ctid="1319" data-id="8885" data-name="肉末酸豆角饭" data-spec="份" data-ref-id="dish_ope_id_8885" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7860.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">老干妈肥肠饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥29  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8715" cp-id="17" d-ctid="1319" data-id="8715" data-name="老干妈肥肠饭套餐" data-spec="套" data-ref-id="dish_ope_id_8715" data-price="29" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7690.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)芽菜蒸肉饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥26  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8727" cp-id="" d-ctid="1319" data-id="8727" data-name="(套)芽菜蒸肉饭套餐" data-spec="套" data-ref-id="dish_ope_id_8727" data-price="26" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7702.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)鲍汁鸭腿饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥26  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8728" cp-id="17" d-ctid="1319" data-id="8728" data-name="(套)鲍汁鸭腿饭套餐" data-spec="套" data-ref-id="dish_ope_id_8728" data-price="26" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7703.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)秘制卤肉饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥24  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8744" cp-id="" d-ctid="1319" data-id="8744" data-name="(套)秘制卤肉饭套餐" data-spec="套" data-ref-id="dish_ope_id_8744" data-price="24" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7719.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)咖喱鸡肉饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥23  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8746" cp-id="17" d-ctid="1319" data-id="8746" data-name="(套)咖喱鸡肉饭套餐" data-spec="套" data-ref-id="dish_ope_id_8746" data-price="23" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7721.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)黄焖鸡饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8748" cp-id="" d-ctid="1319" data-id="8748" data-name="(套)黄焖鸡饭套餐" data-spec="套" data-ref-id="dish_ope_id_8748" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7723.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">狮子头饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8769" cp-id="" d-ctid="1319" data-id="8769" data-name="狮子头饭套餐" data-spec="套" data-ref-id="dish_ope_id_8769" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7744.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)西红柿鸡蛋饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥19  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8785" cp-id="" d-ctid="1319" data-id="8785" data-name="(套)西红柿鸡蛋饭套餐" data-spec="套" data-ref-id="dish_ope_id_8785" data-price="19" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7760.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)醋溜土豆丝饭套餐(份)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8830" cp-id="" d-ctid="1319" data-id="8830" data-name="(套)醋溜土豆丝饭套餐" data-spec="份" data-ref-id="dish_ope_id_8830" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7805.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)酸辣土豆丝饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8831" cp-id="" d-ctid="1319" data-id="8831" data-name="(套)酸辣土豆丝饭套餐" data-spec="套" data-ref-id="dish_ope_id_8831" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7806.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">肉末酸豆角饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8845" cp-id="" d-ctid="1319" data-id="8845" data-name="肉末酸豆角饭套餐" data-spec="套" data-ref-id="dish_ope_id_8845" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7820.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                  
                    <li class="dish_list_active nav" data-ctid="1320">红姨推荐</li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">周四木须肉饭套餐（特价）(套)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8853" cp-id="" d-ctid="1320" data-id="8853" data-name="周四木须肉饭套餐（特价）" data-spec="套" data-ref-id="dish_ope_id_8853" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7828.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">周三腐竹烧肉饭套餐（特价）(套)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8854" cp-id="" d-ctid="1320" data-id="8854" data-name="周三腐竹烧肉饭套餐（特价）" data-spec="套" data-ref-id="dish_ope_id_8854" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7829.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">周五土豆鸡块饭套餐（特价）(套)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8855" cp-id="" d-ctid="1320" data-id="8855" data-name="周五土豆鸡块饭套餐（特价）" data-spec="套" data-ref-id="dish_ope_id_8855" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7830.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">周二咖喱鸡饭套餐（特价）(套)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8862" cp-id="" d-ctid="1320" data-id="8862" data-name="周二咖喱鸡饭套餐（特价）" data-spec="套" data-ref-id="dish_ope_id_8862" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7837.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">周一鲍汁鸭腿饭套餐（特价）(套)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8958" cp-id="" d-ctid="1320" data-id="8958" data-name="周一鲍汁鸭腿饭套餐（特价）" data-spec="套" data-ref-id="dish_ope_id_8958" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7933.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                  
                    <li class="dish_list_active nav" data-ctid="1321">饮品</li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">花生牛奶鲜茶(杯)</div>
                            
                            
                            <div class="dish_price">￥10  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8895" cp-id="4" d-ctid="1321" data-id="8895" data-name="花生牛奶鲜茶" data-spec="杯" data-ref-id="dish_ope_id_8895" data-price="10" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7870.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">胚芽红豆牛奶(杯)</div>
                            
                            
                            <div class="dish_price">￥10  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8896" cp-id="4" d-ctid="1321" data-id="8896" data-name="胚芽红豆牛奶" data-spec="杯" data-ref-id="dish_ope_id_8896" data-price="10" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7871.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">杏仁奶茶(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8905" cp-id="4" d-ctid="1321" data-id="8905" data-name="杏仁奶茶" data-spec="份" data-ref-id="dish_ope_id_8905" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7880.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">焦糖奶茶(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8906" cp-id="4" d-ctid="1321" data-id="8906" data-name="焦糖奶茶" data-spec="份" data-ref-id="dish_ope_id_8906" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7881.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">榛果奶茶(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8907" cp-id="4" d-ctid="1321" data-id="8907" data-name="榛果奶茶" data-spec="份" data-ref-id="dish_ope_id_8907" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7882.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">椰香奶茶(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8908" cp-id="4" d-ctid="1321" data-id="8908" data-name="椰香奶茶" data-spec="份" data-ref-id="dish_ope_id_8908" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7883.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">抹茶奶茶(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8909" cp-id="4" d-ctid="1321" data-id="8909" data-name="抹茶奶茶" data-spec="份" data-ref-id="dish_ope_id_8909" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7884.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">原味奶茶(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8939" cp-id="4" d-ctid="1321" data-id="8939" data-name="原味奶茶" data-spec="份" data-ref-id="dish_ope_id_8939" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7914.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">加冰(份)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8953" cp-id="4" d-ctid="1321" data-id="8953" data-name="加冰" data-spec="份" data-ref-id="dish_ope_id_8953" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7928.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">原味豆浆(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8933" cp-id="" d-ctid="1321" data-id="8933" data-name="原味豆浆" data-spec="份" data-ref-id="dish_ope_id_8933" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7908.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">焦糖豆浆(份)</div>
                            
                            
                            <div class="dish_price">￥0  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8957" cp-id="" d-ctid="1321" data-id="8957" data-name="焦糖豆浆" data-spec="份" data-ref-id="dish_ope_id_8957" data-price="0" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7932.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">奥地利地瓜多(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8871" cp-id="" d-ctid="1321" data-id="8871" data-name="奥地利地瓜多" data-spec="份" data-ref-id="dish_ope_id_8871" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7846.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">独舞玫瑰(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8872" cp-id="4" d-ctid="1321" data-id="8872" data-name="独舞玫瑰" data-spec="份" data-ref-id="dish_ope_id_8872" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7847.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">小麦牛奶棒棒多(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8873" cp-id="" d-ctid="1321" data-id="8873" data-name="小麦牛奶棒棒多" data-spec="份" data-ref-id="dish_ope_id_8873" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7848.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">山药薏仁(份)</div>
                            
                            
                            <div class="dish_price">￥10  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8890" cp-id="" d-ctid="1321" data-id="8890" data-name="山药薏仁" data-spec="份" data-ref-id="dish_ope_id_8890" data-price="10" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7865.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">焦糖香芋(份)</div>
                            
                            
                            <div class="dish_price">￥10  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8891" cp-id="" d-ctid="1321" data-id="8891" data-name="焦糖香芋" data-spec="份" data-ref-id="dish_ope_id_8891" data-price="10" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7866.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">木瓜杏仁多(份)</div>
                            
                            
                            <div class="dish_price">￥10  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8892" cp-id="" d-ctid="1321" data-id="8892" data-name="木瓜杏仁多" data-spec="份" data-ref-id="dish_ope_id_8892" data-price="10" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7867.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">双莓牛奶(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8902" cp-id="4" d-ctid="1321" data-id="8902" data-name="双莓牛奶" data-spec="份" data-ref-id="dish_ope_id_8902" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7877.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">紫薯牛奶(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8903" cp-id="" d-ctid="1321" data-id="8903" data-name="紫薯牛奶" data-spec="份" data-ref-id="dish_ope_id_8903" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7878.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">酸梅汤（扎）(扎)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8847" cp-id="4" d-ctid="1321" data-id="8847" data-name="酸梅汤（扎）" data-spec="扎" data-ref-id="dish_ope_id_8847" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7822.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">大雪碧(瓶)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8880" cp-id="" d-ctid="1321" data-id="8880" data-name="大雪碧" data-spec="瓶" data-ref-id="dish_ope_id_8880" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7855.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">大可乐(桶)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8884" cp-id="4" d-ctid="1321" data-id="8884" data-name="大可乐" data-spec="桶" data-ref-id="dish_ope_id_8884" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7859.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">燕京啤酒（瓶）(瓶)</div>
                            
                            
                            <div class="dish_price">￥10  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8888" cp-id="3" d-ctid="1321" data-id="8888" data-name="燕京啤酒（瓶）" data-spec="瓶" data-ref-id="dish_ope_id_8888" data-price="10" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7863.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">青岛啤酒（瓶）(瓶)</div>
                            
                            
                            <div class="dish_price">￥10  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8889" cp-id="" d-ctid="1321" data-id="8889" data-name="青岛啤酒（瓶）" data-spec="瓶" data-ref-id="dish_ope_id_8889" data-price="10" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7864.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">加多宝(听)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8922" cp-id="" d-ctid="1321" data-id="8922" data-name="加多宝" data-spec="听" data-ref-id="dish_ope_id_8922" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7897.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">冰乐（柠檬味）(听)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8925" cp-id="" d-ctid="1321" data-id="8925" data-name="冰乐（柠檬味）" data-spec="听" data-ref-id="dish_ope_id_8925" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7900.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">冰乐（木瓜味）(听)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8926" cp-id="" d-ctid="1321" data-id="8926" data-name="冰乐（木瓜味）" data-spec="听" data-ref-id="dish_ope_id_8926" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7901.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">冰乐（草莓味）(听)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8927" cp-id="" d-ctid="1321" data-id="8927" data-name="冰乐（草莓味）" data-spec="听" data-ref-id="dish_ope_id_8927" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7902.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">冰乐（水蜜桃味）(听)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8928" cp-id="" d-ctid="1321" data-id="8928" data-name="冰乐（水蜜桃味）" data-spec="听" data-ref-id="dish_ope_id_8928" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7903.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">酸梅汤（杯）(杯)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8929" cp-id="" d-ctid="1321" data-id="8929" data-name="酸梅汤（杯）" data-spec="杯" data-ref-id="dish_ope_id_8929" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7904.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">冰乐(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8930" cp-id="" d-ctid="1321" data-id="8930" data-name="冰乐" data-spec="份" data-ref-id="dish_ope_id_8930" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7905.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">燕京啤酒(听)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8940" cp-id="3" d-ctid="1321" data-id="8940" data-name="燕京啤酒" data-spec="听" data-ref-id="dish_ope_id_8940" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7915.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">青岛啤酒(听)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8941" cp-id="" d-ctid="1321" data-id="8941" data-name="青岛啤酒" data-spec="听" data-ref-id="dish_ope_id_8941" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7916.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">可乐(听)</div>
                            
                            
                            <div class="dish_price">￥5  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8943" cp-id="" d-ctid="1321" data-id="8943" data-name="可乐" data-spec="听" data-ref-id="dish_ope_id_8943" data-price="5" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7918.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">雪碧(听)</div>
                            
                            
                            <div class="dish_price">￥5  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8944" cp-id="" d-ctid="1321" data-id="8944" data-name="雪碧" data-spec="听" data-ref-id="dish_ope_id_8944" data-price="5" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7919.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">冰柠檬(份)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8945" cp-id="" d-ctid="1321" data-id="8945" data-name="冰柠檬" data-spec="份" data-ref-id="dish_ope_id_8945" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7920.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">爆爆蛋(份)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8952" cp-id="" d-ctid="1321" data-id="8952" data-name="爆爆蛋" data-spec="份" data-ref-id="dish_ope_id_8952" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7927.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                  
                    <li class="dish_list_active nav" data-ctid="1322">粥</li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">皮蛋瘦肉粥(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8911" cp-id="" d-ctid="1322" data-id="8911" data-name="皮蛋瘦肉粥" data-spec="份" data-ref-id="dish_ope_id_8911" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7886.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">玫瑰紫薯粥(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8912" cp-id="" d-ctid="1322" data-id="8912" data-name="玫瑰紫薯粥" data-spec="份" data-ref-id="dish_ope_id_8912" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7887.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">滑蛋牛肉粥(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8916" cp-id="" d-ctid="1322" data-id="8916" data-name="滑蛋牛肉粥" data-spec="份" data-ref-id="dish_ope_id_8916" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7891.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">桂花南瓜粥(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8917" cp-id="" d-ctid="1322" data-id="8917" data-name="桂花南瓜粥" data-spec="份" data-ref-id="dish_ope_id_8917" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7892.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">数据测试套餐(套)</div>
                            
                            
                            <div class="dish_price">￥20  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8776" cp-id="" d-ctid="1322" data-id="8776" data-name="数据测试套餐" data-spec="套" data-ref-id="dish_ope_id_8776" data-price="20" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7751.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)鸡米脆卷饼(套)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8828" cp-id="" d-ctid="1322" data-id="8828" data-name="(套)鸡米脆卷饼" data-spec="套" data-ref-id="dish_ope_id_8828" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7803.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">(套)土豆丝卷饼(套)</div>
                            
                            
                            <div class="dish_price">￥14  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8863" cp-id="" d-ctid="1322" data-id="8863" data-name="(套)土豆丝卷饼" data-spec="套" data-ref-id="dish_ope_id_8863" data-price="14" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7838.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">鸡米脆卷饼(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8870" cp-id="" d-ctid="1322" data-id="8870" data-name="鸡米脆卷饼" data-spec="份" data-ref-id="dish_ope_id_8870" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7845.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">土豆丝卷饼(份)</div>
                            
                            
                            <div class="dish_price">￥10  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8893" cp-id="" d-ctid="1322" data-id="8893" data-name="土豆丝卷饼" data-spec="份" data-ref-id="dish_ope_id_8893" data-price="10" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7868.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                  
                    <li class="dish_list_active nav" data-ctid="1323">下午茶</li>
                
                    
                    <li class="dish_list_active" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(232, 56, 61);">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">榛果奶酪(杯)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add" style="display: none;"></div>
                            <div class="dish_ope" style="display: block;" data-remark="" id="dish_ope_id_8897" cp-id="" d-ctid="1323" data-id="8897" data-name="榛果奶酪" data-spec="杯" data-ref-id="dish_ope_id_8897" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7872.jpg">
                                <span class="sub"></span><span class="number">2</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(232, 56, 61);">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">抹茶奶酪(杯)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add" style="display: none;"></div>
                            <div class="dish_ope" style="display: block;" data-remark="" id="dish_ope_id_8898" cp-id="" d-ctid="1323" data-id="8898" data-name="抹茶奶酪" data-spec="杯" data-ref-id="dish_ope_id_8898" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7873.jpg">
                                <span class="sub"></span><span class="number">1</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(232, 56, 61);">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">焦糖布丁(杯)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add" style="display: none;"></div>
                            <div class="dish_ope" style="display: block;" data-remark="" id="dish_ope_id_8899" cp-id="" d-ctid="1323" data-id="8899" data-name="焦糖布丁" data-spec="杯" data-ref-id="dish_ope_id_8899" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7874.jpg">
                                <span class="sub"></span><span class="number">1</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(232, 56, 61);">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">榛果布丁(杯)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add" style="display: none;"></div>
                            <div class="dish_ope" style="display: block;" data-remark="" id="dish_ope_id_8900" cp-id="" d-ctid="1323" data-id="8900" data-name="榛果布丁" data-spec="杯" data-ref-id="dish_ope_id_8900" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7875.jpg">
                                <span class="sub"></span><span class="number">1</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">抹茶布丁(杯)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8901" cp-id="" d-ctid="1323" data-id="8901" data-name="抹茶布丁" data-spec="杯" data-ref-id="dish_ope_id_8901" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7876.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">焦糖奶酪(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8910" cp-id="" d-ctid="1323" data-id="8910" data-name="焦糖奶酪" data-spec="份" data-ref-id="dish_ope_id_8910" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7885.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">草莓布丁(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8924" cp-id="" d-ctid="1323" data-id="8924" data-name="草莓布丁" data-spec="份" data-ref-id="dish_ope_id_8924" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7899.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">芒果布丁(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8931" cp-id="" d-ctid="1323" data-id="8931" data-name="芒果布丁" data-spec="份" data-ref-id="dish_ope_id_8931" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7906.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">布丁(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8932" cp-id="" d-ctid="1323" data-id="8932" data-name="布丁" data-spec="份" data-ref-id="dish_ope_id_8932" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7907.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">杏仁百合羹(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8934" cp-id="" d-ctid="1323" data-id="8934" data-name="杏仁百合羹" data-spec="份" data-ref-id="dish_ope_id_8934" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7909.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">桂花南瓜羹(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8935" cp-id="" d-ctid="1323" data-id="8935" data-name="桂花南瓜羹" data-spec="份" data-ref-id="dish_ope_id_8935" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7910.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">蓝莓山药羹(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8936" cp-id="" d-ctid="1323" data-id="8936" data-name="蓝莓山药羹" data-spec="份" data-ref-id="dish_ope_id_8936" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7911.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">玫瑰紫薯羹(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8937" cp-id="" d-ctid="1323" data-id="8937" data-name="玫瑰紫薯羹" data-spec="份" data-ref-id="dish_ope_id_8937" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7912.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">原味奶酪(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8938" cp-id="" d-ctid="1323" data-id="8938" data-name="原味奶酪" data-spec="份" data-ref-id="dish_ope_id_8938" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7913.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">巧克力布丁(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8942" cp-id="" d-ctid="1323" data-id="8942" data-name="巧克力布丁" data-spec="份" data-ref-id="dish_ope_id_8942" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7917.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">炸鸡排(份)</div>
                            
                            
                            <div class="dish_price">￥19  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8782" cp-id="" d-ctid="1323" data-id="8782" data-name="炸鸡排" data-spec="份" data-ref-id="dish_ope_id_8782" data-price="19" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7757.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">洋葱圈(份)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8809" cp-id="" d-ctid="1323" data-id="8809" data-name="洋葱圈" data-spec="份" data-ref-id="dish_ope_id_8809" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7784.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">薯条(份)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8825" cp-id="" d-ctid="1323" data-id="8825" data-name="薯条" data-spec="份" data-ref-id="dish_ope_id_8825" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7800.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">爆米花(份)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8826" cp-id="" d-ctid="1323" data-id="8826" data-name="爆米花" data-spec="份" data-ref-id="dish_ope_id_8826" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7801.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">焦糖拿铁咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥28  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8719" cp-id="4" d-ctid="1323" data-id="8719" data-name="焦糖拿铁咖啡" data-spec="杯" data-ref-id="dish_ope_id_8719" data-price="28" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7694.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">抹茶拿铁咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥28  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8720" cp-id="" d-ctid="1323" data-id="8720" data-name="抹茶拿铁咖啡" data-spec="杯" data-ref-id="dish_ope_id_8720" data-price="28" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7695.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">榛果拿铁咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥28  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8721" cp-id="" d-ctid="1323" data-id="8721" data-name="榛果拿铁咖啡" data-spec="杯" data-ref-id="dish_ope_id_8721" data-price="28" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7696.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">焦糖卡布奇诺咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥25  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8732" cp-id="" d-ctid="1323" data-id="8732" data-name="焦糖卡布奇诺咖啡" data-spec="杯" data-ref-id="dish_ope_id_8732" data-price="25" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7707.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">抹茶卡布奇诺咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥25  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8733" cp-id="" d-ctid="1323" data-id="8733" data-name="抹茶卡布奇诺咖啡" data-spec="杯" data-ref-id="dish_ope_id_8733" data-price="25" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7708.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">榛果卡布奇诺咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥25  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8734" cp-id="" d-ctid="1323" data-id="8734" data-name="榛果卡布奇诺咖啡" data-spec="杯" data-ref-id="dish_ope_id_8734" data-price="25" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7709.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">拿铁咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥25  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8736" cp-id="" d-ctid="1323" data-id="8736" data-name="拿铁咖啡" data-spec="杯" data-ref-id="dish_ope_id_8736" data-price="25" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7711.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">卡布奇诺咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8754" cp-id="" d-ctid="1323" data-id="8754" data-name="卡布奇诺咖啡" data-spec="杯" data-ref-id="dish_ope_id_8754" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7729.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">黑咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8807" cp-id="" d-ctid="1323" data-id="8807" data-name="黑咖啡" data-spec="杯" data-ref-id="dish_ope_id_8807" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7782.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">经典美式咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8811" cp-id="" d-ctid="1323" data-id="8811" data-name="经典美式咖啡" data-spec="杯" data-ref-id="dish_ope_id_8811" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7786.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">浓缩咖啡(杯)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8843" cp-id="" d-ctid="1323" data-id="8843" data-name="浓缩咖啡" data-spec="杯" data-ref-id="dish_ope_id_8843" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7818.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">番茄牛奶汁(杯)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8804" cp-id="" d-ctid="1323" data-id="8804" data-name="番茄牛奶汁" data-spec="杯" data-ref-id="dish_ope_id_8804" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7779.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">柳橙汁(杯)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8812" cp-id="" d-ctid="1323" data-id="8812" data-name="柳橙汁" data-spec="杯" data-ref-id="dish_ope_id_8812" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7787.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">哈密瓜汁(杯)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8813" cp-id="" d-ctid="1323" data-id="8813" data-name="哈密瓜汁" data-spec="杯" data-ref-id="dish_ope_id_8813" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7788.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">胡萝卜柳橙汁(杯)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8814" cp-id="" d-ctid="1323" data-id="8814" data-name="胡萝卜柳橙汁" data-spec="杯" data-ref-id="dish_ope_id_8814" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7789.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">胡萝卜苹果汁(杯)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8815" cp-id="" d-ctid="1323" data-id="8815" data-name="胡萝卜苹果汁" data-spec="杯" data-ref-id="dish_ope_id_8815" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7790.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">雪梨牛奶汁(杯)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8816" cp-id="" d-ctid="1323" data-id="8816" data-name="雪梨牛奶汁" data-spec="杯" data-ref-id="dish_ope_id_8816" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7791.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">柳橙芒果汁(杯)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8817" cp-id="" d-ctid="1323" data-id="8817" data-name="柳橙芒果汁" data-spec="杯" data-ref-id="dish_ope_id_8817" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7792.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">苹果汁(杯)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8820" cp-id="" d-ctid="1323" data-id="8820" data-name="苹果汁" data-spec="杯" data-ref-id="dish_ope_id_8820" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7795.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">雪梨汁(杯)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8821" cp-id="" d-ctid="1323" data-id="8821" data-name="雪梨汁" data-spec="杯" data-ref-id="dish_ope_id_8821" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7796.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">西瓜汁(杯)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8822" cp-id="" d-ctid="1323" data-id="8822" data-name="西瓜汁" data-spec="杯" data-ref-id="dish_ope_id_8822" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7797.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">番茄汁(杯)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8823" cp-id="" d-ctid="1323" data-id="8823" data-name="番茄汁" data-spec="杯" data-ref-id="dish_ope_id_8823" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7798.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">黄瓜汁(杯)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8824" cp-id="" d-ctid="1323" data-id="8824" data-name="黄瓜汁" data-spec="杯" data-ref-id="dish_ope_id_8824" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7799.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">西芹苹果汁(杯)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8844" cp-id="" d-ctid="1323" data-id="8844" data-name="西芹苹果汁" data-spec="杯" data-ref-id="dish_ope_id_8844" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7819.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">香芒哈密瓜(杯)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8750" cp-id="" d-ctid="1323" data-id="8750" data-name="香芒哈密瓜" data-spec="杯" data-ref-id="dish_ope_id_8750" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7725.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">香草天空(杯)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8751" cp-id="" d-ctid="1323" data-id="8751" data-name="香草天空" data-spec="杯" data-ref-id="dish_ope_id_8751" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7726.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">香梨美人(杯)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8752" cp-id="" d-ctid="1323" data-id="8752" data-name="香梨美人" data-spec="杯" data-ref-id="dish_ope_id_8752" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7727.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">甜橙物语(杯)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8753" cp-id="" d-ctid="1323" data-id="8753" data-name="甜橙物语" data-spec="杯" data-ref-id="dish_ope_id_8753" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7728.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">铁观音（壶）(壶)</div>
                            
                            
                            <div class="dish_price">￥68  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8695" cp-id="" d-ctid="1323" data-id="8695" data-name="铁观音（壶）" data-spec="壶" data-ref-id="dish_ope_id_8695" data-price="68" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7670.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">冻顶乌龙（壶）(壶)</div>
                            
                            
                            <div class="dish_price">￥68  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8696" cp-id="" d-ctid="1323" data-id="8696" data-name="冻顶乌龙（壶）" data-spec="壶" data-ref-id="dish_ope_id_8696" data-price="68" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7671.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">金骏眉(壶)(壶)</div>
                            
                            
                            <div class="dish_price">￥68  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8697" cp-id="" d-ctid="1323" data-id="8697" data-name="金骏眉(壶)" data-spec="壶" data-ref-id="dish_ope_id_8697" data-price="68" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7672.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">龙井（壶）(壶)</div>
                            
                            
                            <div class="dish_price">￥60  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8698" cp-id="" d-ctid="1323" data-id="8698" data-name="龙井（壶）" data-spec="壶" data-ref-id="dish_ope_id_8698" data-price="60" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7673.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">花茶（壶）(壶)</div>
                            
                            
                            <div class="dish_price">￥58  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8699" cp-id="" d-ctid="1323" data-id="8699" data-name="花茶（壶）" data-spec="壶" data-ref-id="dish_ope_id_8699" data-price="58" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7674.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">碧螺春（壶）(壶)</div>
                            
                            
                            <div class="dish_price">￥58  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8700" cp-id="" d-ctid="1323" data-id="8700" data-name="碧螺春（壶）" data-spec="壶" data-ref-id="dish_ope_id_8700" data-price="58" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7675.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">普洱（壶）(壶)</div>
                            
                            
                            <div class="dish_price">￥58  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8701" cp-id="" d-ctid="1323" data-id="8701" data-name="普洱（壶）" data-spec="壶" data-ref-id="dish_ope_id_8701" data-price="58" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7676.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">菊花茶(壶)(壶)</div>
                            
                            
                            <div class="dish_price">￥48  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8702" cp-id="" d-ctid="1323" data-id="8702" data-name="菊花茶(壶)" data-spec="壶" data-ref-id="dish_ope_id_8702" data-price="48" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7677.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">冻顶乌龙（杯）(杯)</div>
                            
                            
                            <div class="dish_price">￥38  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8703" cp-id="" d-ctid="1323" data-id="8703" data-name="冻顶乌龙（杯）" data-spec="杯" data-ref-id="dish_ope_id_8703" data-price="38" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7678.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7681.jpg" alt=""></div>
                            <div class="dish_name">金骏眉(杯)(杯)</div>
                            
                            
                            <div class="dish_price">￥35  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8706" cp-id="" d-ctid="1323" data-id="8706" data-name="金骏眉(杯)" data-spec="杯" data-ref-id="dish_ope_id_8706" data-price="35" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7681.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7683.jpg" alt=""></div>
                            <div class="dish_name">普洱（杯）(杯)</div>
                            
                            
                            <div class="dish_price">￥30  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8708" cp-id="" d-ctid="1323" data-id="8708" data-name="普洱（杯）" data-spec="杯" data-ref-id="dish_ope_id_8708" data-price="30" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7683.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7684.jpg" alt=""></div>
                            <div class="dish_name">碧螺春（杯）(杯)</div>
                            
                            
                            <div class="dish_price">￥30  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8709" cp-id="" d-ctid="1323" data-id="8709" data-name="碧螺春（杯）" data-spec="杯" data-ref-id="dish_ope_id_8709" data-price="30" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7684.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7685.jpg" alt=""></div>
                            <div class="dish_name">花茶（杯）(杯)</div>
                            
                            
                            <div class="dish_price">￥30  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8710" cp-id="" d-ctid="1323" data-id="8710" data-name="花茶（杯）" data-spec="杯" data-ref-id="dish_ope_id_8710" data-price="30" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7685.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">龙井（杯）(杯)</div>
                            
                            
                            <div class="dish_price">￥30  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8711" cp-id="" d-ctid="1323" data-id="8711" data-name="龙井（杯）" data-spec="杯" data-ref-id="dish_ope_id_8711" data-price="30" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7686.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">铁观音(杯）(杯)</div>
                            
                            
                            <div class="dish_price">￥30  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8712" cp-id="" d-ctid="1323" data-id="8712" data-name="铁观音(杯）" data-spec="杯" data-ref-id="dish_ope_id_8712" data-price="30" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7687.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">菊花茶(杯)(杯)</div>
                            
                            
                            <div class="dish_price">￥25  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8731" cp-id="" d-ctid="1323" data-id="8731" data-name="菊花茶(杯)" data-spec="杯" data-ref-id="dish_ope_id_8731" data-price="25" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7706.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">双球冰激凌(份)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8856" cp-id="" d-ctid="1323" data-id="8856" data-name="双球冰激凌" data-spec="份" data-ref-id="dish_ope_id_8856" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7831.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">单球冰淇凌(个)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8904" cp-id="" d-ctid="1323" data-id="8904" data-name="单球冰淇凌" data-spec="个" data-ref-id="dish_ope_id_8904" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7879.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">（冰）哈密瓜(份)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8946" cp-id="" d-ctid="1323" data-id="8946" data-name="（冰）哈密瓜" data-spec="份" data-ref-id="dish_ope_id_8946" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7921.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">（冰）草莓(份)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8947" cp-id="" d-ctid="1323" data-id="8947" data-name="（冰）草莓" data-spec="份" data-ref-id="dish_ope_id_8947" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7922.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">（冰）芒果(份)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8948" cp-id="" d-ctid="1323" data-id="8948" data-name="（冰）芒果" data-spec="份" data-ref-id="dish_ope_id_8948" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7923.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">（冰）核桃仁(份)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8949" cp-id="" d-ctid="1323" data-id="8949" data-name="（冰）核桃仁" data-spec="份" data-ref-id="dish_ope_id_8949" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7924.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">（冰）杏仁(份)</div>
                            
                            
                            <div class="dish_price">￥2  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8950" cp-id="" d-ctid="1323" data-id="8950" data-name="（冰）杏仁" data-spec="份" data-ref-id="dish_ope_id_8950" data-price="2" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7925.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">开心果(份)</div>
                            
                            
                            <div class="dish_price">￥28  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8718" cp-id="" d-ctid="1323" data-id="8718" data-name="开心果" data-spec="份" data-ref-id="dish_ope_id_8718" data-price="28" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7693.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">芥末花生(份)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8810" cp-id="" d-ctid="1323" data-id="8810" data-name="芥末花生" data-spec="份" data-ref-id="dish_ope_id_8810" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7785.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">松饼(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8864" cp-id="" d-ctid="1323" data-id="8864" data-name="松饼" data-spec="份" data-ref-id="dish_ope_id_8864" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7839.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">瓜子(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8865" cp-id="" d-ctid="1323" data-id="8865" data-name="瓜子" data-spec="份" data-ref-id="dish_ope_id_8865" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7840.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                  
                    <li class="dish_list_active nav" data-ctid="1324">粉/面/馍</li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">意大利肉酱面(份)</div>
                            
                            
                            <div class="dish_price">￥25  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8730" cp-id="" d-ctid="1324" data-id="8730" data-name="意大利肉酱面" data-spec="份" data-ref-id="dish_ope_id_8730" data-price="25" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7705.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">肥肠面(份)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8755" cp-id="" d-ctid="1324" data-id="8755" data-name="肥肠面" data-spec="份" data-ref-id="dish_ope_id_8755" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7730.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">肥肠米粉(斤)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8765" cp-id="" d-ctid="1324" data-id="8765" data-name="肥肠米粉" data-spec="斤" data-ref-id="dish_ope_id_8765" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7740.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">牛肉米粉(份)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8802" cp-id="" d-ctid="1324" data-id="8802" data-name="牛肉米粉" data-spec="份" data-ref-id="dish_ope_id_8802" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7777.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">排骨米粉(份)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8803" cp-id="" d-ctid="1324" data-id="8803" data-name="排骨米粉" data-spec="份" data-ref-id="dish_ope_id_8803" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7778.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">排骨面(份)</div>
                            
                            
                            <div class="dish_price">￥18  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8805" cp-id="" d-ctid="1324" data-id="8805" data-name="排骨面" data-spec="份" data-ref-id="dish_ope_id_8805" data-price="18" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7780.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">炸酱面(份)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8827" cp-id="" d-ctid="1324" data-id="8827" data-name="炸酱面" data-spec="份" data-ref-id="dish_ope_id_8827" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7802.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">西红柿鸡蛋面(份)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8860" cp-id="" d-ctid="1324" data-id="8860" data-name="西红柿鸡蛋面" data-spec="份" data-ref-id="dish_ope_id_8860" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7835.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">肉末茄子面(份)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8861" cp-id="" d-ctid="1324" data-id="8861" data-name="肉末茄子面" data-spec="份" data-ref-id="dish_ope_id_8861" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7836.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">鸡蛋炒面(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8869" cp-id="" d-ctid="1324" data-id="8869" data-name="鸡蛋炒面" data-spec="份" data-ref-id="dish_ope_id_8869" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7844.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7849.jpg" alt=""></div>
                            <div class="dish_name">卤蛋米粉(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8874" cp-id="" d-ctid="1324" data-id="8874" data-name="卤蛋米粉" data-spec="份" data-ref-id="dish_ope_id_8874" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7849.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7850.jpg" alt=""></div>
                            <div class="dish_name">生菜粉(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8875" cp-id="" d-ctid="1324" data-id="8875" data-name="生菜粉" data-spec="份" data-ref-id="dish_ope_id_8875" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7850.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7856.jpg" alt=""></div>
                            <div class="dish_name">肉末酸豆角面(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8881" cp-id="" d-ctid="1324" data-id="8881" data-name="肉末酸豆角面" data-spec="份" data-ref-id="dish_ope_id_8881" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7856.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7857.jpg" alt=""></div>
                            <div class="dish_name">肉末酸豆角米粉(份)</div>
                            
                            
                            <div class="dish_price">￥12  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8882" cp-id="" d-ctid="1324" data-id="8882" data-name="肉末酸豆角米粉" data-spec="份" data-ref-id="dish_ope_id_8882" data-price="12" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7857.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7692.jpg" alt=""></div>
                            <div class="dish_name">意大利肉酱面套餐(套)</div>
                            
                            
                            <div class="dish_price">￥29  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8717" cp-id="" d-ctid="1324" data-id="8717" data-name="意大利肉酱面套餐" data-spec="套" data-ref-id="dish_ope_id_8717" data-price="29" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7692.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7701.jpg" alt=""></div>
                            <div class="dish_name">肥肠米粉套餐(套)</div>
                            
                            
                            <div class="dish_price">￥26  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8726" cp-id="" d-ctid="1324" data-id="8726" data-name="肥肠米粉套餐" data-spec="套" data-ref-id="dish_ope_id_8726" data-price="26" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7701.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7704.jpg" alt=""></div>
                            <div class="dish_name">肥肠面套餐(套)</div>
                            
                            
                            <div class="dish_price">￥26  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8729" cp-id="" d-ctid="1324" data-id="8729" data-name="肥肠面套餐" data-spec="套" data-ref-id="dish_ope_id_8729" data-price="26" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7704.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7731.jpg" alt=""></div>
                            <div class="dish_name">排骨面套餐(套)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8756" cp-id="" d-ctid="1324" data-id="8756" data-name="排骨面套餐" data-spec="套" data-ref-id="dish_ope_id_8756" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7731.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7734.jpg" alt=""></div>
                            <div class="dish_name">牛肉米粉套餐(套)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8759" cp-id="" d-ctid="1324" data-id="8759" data-name="牛肉米粉套餐" data-spec="套" data-ref-id="dish_ope_id_8759" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7734.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7735.jpg" alt=""></div>
                            <div class="dish_name">排骨米粉套餐(套)</div>
                            
                            
                            <div class="dish_price">￥22  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8760" cp-id="" d-ctid="1324" data-id="8760" data-name="排骨米粉套餐" data-spec="套" data-ref-id="dish_ope_id_8760" data-price="22" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7735.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7753.jpg" alt=""></div>
                            <div class="dish_name">炸酱面套餐(套)</div>
                            
                            
                            <div class="dish_price">￥20  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8778" cp-id="" d-ctid="1324" data-id="8778" data-name="炸酱面套餐" data-spec="套" data-ref-id="dish_ope_id_8778" data-price="20" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7753.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7758.jpg" alt=""></div>
                            <div class="dish_name">西红柿鸡蛋面套餐(套)</div>
                            
                            
                            <div class="dish_price">￥19  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8783" cp-id="" d-ctid="1324" data-id="8783" data-name="西红柿鸡蛋面套餐" data-spec="套" data-ref-id="dish_ope_id_8783" data-price="19" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7758.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7759.jpg" alt=""></div>
                            <div class="dish_name">肉末茄子面套餐(套)</div>
                            
                            
                            <div class="dish_price">￥19  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8784" cp-id="" d-ctid="1324" data-id="8784" data-name="肉末茄子面套餐" data-spec="套" data-ref-id="dish_ope_id_8784" data-price="19" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7759.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7804.jpg" alt=""></div>
                            <div class="dish_name">鸡蛋炒面套餐(套)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8829" cp-id="" d-ctid="1324" data-id="8829" data-name="鸡蛋炒面套餐" data-spec="套" data-ref-id="dish_ope_id_8829" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7804.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7807.jpg" alt=""></div>
                            <div class="dish_name">肉末酸豆角面套餐(套)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8832" cp-id="" d-ctid="1324" data-id="8832" data-name="肉末酸豆角面套餐" data-spec="套" data-ref-id="dish_ope_id_8832" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7807.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7808.jpg" alt=""></div>
                            <div class="dish_name">肉末酸豆角米粉套餐(套)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8833" cp-id="" d-ctid="1324" data-id="8833" data-name="肉末酸豆角米粉套餐" data-spec="套" data-ref-id="dish_ope_id_8833" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7808.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7810.jpg" alt=""></div>
                            <div class="dish_name">生菜粉套餐(套)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8835" cp-id="" d-ctid="1324" data-id="8835" data-name="生菜粉套餐" data-spec="套" data-ref-id="dish_ope_id_8835" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7810.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7814.jpg" alt=""></div>
                            <div class="dish_name">卤蛋面套餐(套)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8839" cp-id="" d-ctid="1324" data-id="8839" data-name="卤蛋面套餐" data-spec="套" data-ref-id="dish_ope_id_8839" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7814.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" src="../红姨厨房_files/default.png" data-src="/dish/hycf1/LO/128x128/7815.jpg" alt=""></div>
                            <div class="dish_name">卤蛋米粉套餐(套)</div>
                            
                            
                            <div class="dish_price">￥16  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8840" cp-id="" d-ctid="1324" data-id="8840" data-name="卤蛋米粉套餐" data-spec="套" data-ref-id="dish_ope_id_8840" data-price="16" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7815.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">凉皮(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8914" cp-id="" d-ctid="1324" data-id="8914" data-name="凉皮" data-spec="份" data-ref-id="dish_ope_id_8914" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7889.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">凉面(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8915" cp-id="" d-ctid="1324" data-id="8915" data-name="凉面" data-spec="份" data-ref-id="dish_ope_id_8915" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7890.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">菜夹馍加鸡蛋(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8918" cp-id="" d-ctid="1324" data-id="8918" data-name="菜夹馍加鸡蛋" data-spec="份" data-ref-id="dish_ope_id_8918" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7893.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">猪肉夹馍(份)</div>
                            
                            
                            <div class="dish_price">￥8  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8919" cp-id="" d-ctid="1324" data-id="8919" data-name="猪肉夹馍" data-spec="份" data-ref-id="dish_ope_id_8919" data-price="8" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7894.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">菜夹馍(份)</div>
                            
                            
                            <div class="dish_price">￥6  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8923" cp-id="" d-ctid="1324" data-id="8923" data-name="菜夹馍" data-spec="份" data-ref-id="dish_ope_id_8923" data-price="6" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7898.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                  
                    <li class="dish_list_active nav" data-ctid="1325">人气盖饭</li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">鱼香茄子饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥19  <span class="vip" style="padding-left: 15px;">VIP 19</span>   </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8959" cp-id="1" d-ctid="1325" data-id="8959" data-name="鱼香茄子饭套餐" data-spec="套" data-ref-id="dish_ope_id_8959" data-price="19" data-vip-price="19" data-img="/dish/hycf1/LO/128x128/7934.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">西红柿鸡蛋饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥19  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8790" cp-id="" d-ctid="1325" data-id="8790" data-name="西红柿鸡蛋饭套餐" data-spec="套" data-ref-id="dish_ope_id_8790" data-price="19" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7765.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">干锅土豆片饭套餐(套)</div>
                            
                            
                            <div class="dish_price">￥19  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8792" cp-id="" d-ctid="1325" data-id="8792" data-name="干锅土豆片饭套餐" data-spec="套" data-ref-id="dish_ope_id_8792" data-price="19" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7767.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">鱼香茄子盖饭(份)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8849" cp-id="" d-ctid="1325" data-id="8849" data-name="鱼香茄子盖饭" data-spec="份" data-ref-id="dish_ope_id_8849" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7824.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">西红柿鸡蛋盖饭(份)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8850" cp-id="" d-ctid="1325" data-id="8850" data-name="西红柿鸡蛋盖饭" data-spec="份" data-ref-id="dish_ope_id_8850" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7825.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
                    
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy b-error" src="../红姨厨房_files/carte_default_small.png" alt=""></div>
                            <div class="dish_name">干锅土豆片盖饭(份)</div>
                            
                            
                            <div class="dish_price">￥15  </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;" data-remark="" id="dish_ope_id_8852" cp-id="" d-ctid="1325" data-id="8852" data-name="干锅土豆片盖饭" data-spec="份" data-ref-id="dish_ope_id_8852" data-price="15" data-vip-price="0" data-img="/dish/hycf1/LO/128x128/7827.jpg">
                                <span class="sub"></span><span class="number">0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                
            </ul>
        </div>
    </div>
        </div>
        
        <div id="dish_footer" style="display: block;">
            <div id="dish_info"><span style="font-family: Arial;">5</span>个菜，&nbsp;<span class="price">￥40.00</span></div>
            <div id="dish_ok"><button class="select_ok">选好了</button></div>
        </div>
    </div>
    <!--首页-->
    <div id="index_page" class="animation" style="left: 0px; top: 0px; height: 784px;">
        <!--<div class="index_bg"></div>
        <div class="index_title">
            <div id="index_shop_title">神州美味</div>
        </div>-->

        <div style="text-align: center;height: 100px;margin-top: 70px;">
            <img src="../红姨厨房_files/logo.png" style="height:100px;position: relative;z-index: 2;">
        </div>

        <div style="position:absolute;height: 100px; width:100%;bottom:35%;">
            <div id="open_slider_table" style="height:100%;margin: 20px;padding: 10px;color: #FFF;font-size: 20px;background: url(../images/black.png);border-radius:5px;">
                <p style="text-align:center; font-size:18px;  line-height:60px; margin:0;">欢迎您&nbsp;!请问您坐在哪桌&nbsp;?</p>
                <p style="text-align:center; margin:0;" id="open_slider_tableName">点击选择</p>
            </div>
        </div>
        <div id="index_menu_Container">
            <div id="headImg" class="showimg"></div>
            <div id="head_add" class=""></div>
            <div id="index_menu" class="hidden-img"> 
                <span id="index-huiyuan" class="huiyuan"></span>
                 <span id="index-order" class="order"></span>
                  <span id="index-call" class="call"></span>
            </div>
        </div>
        <div class="index_load">
            <!--<img id="loading_img" src="../img/btn_sync_bg_sync.png" alt="" />-->
            <div id="loading_img">开始点餐</div>
        </div>
        <div id="index_tip" style="display: block;">
            <span>发现有消费满0.01元抽奖活动</span>
            <div class="tip_close"></div>
        </div>

        
        <div id="index_footer">
            <p style="  z-index:20;position: relative; height: 100%;text-align: center;color: black;padding-top: 10px;color:#fff;font-size:10px;"><span id="index_qundian">小伙伴一起点餐</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=" width:8px; height:8px; background:#fff; border-radius: 45px; display: inline-block;"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span id="index_waimai">我要外卖</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=" width:8px; height:8px; background:#fff; border-radius: 45px; display: inline-block;"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span id="index_qa">不会用点这里</span></p>
            <!--<table class="index_menu">
                <tbody>
                    <tr>
                        <td style="background: url(../img/index_line.png);background-repeat: no-repeat;background-position: right;">
                            <div  id="open_slider_person">
                                <div class="index_btn_pe"></div>
                                <br />
                                <span class="index-btn-span" id="index_table_pe">人数</span>
                            </div>
                        </td>
                        <td>
                            <div  id="open_slider_table">
                            <div class="index_btn_table"></div>
                            <br />
                            <span class="index-btn-span" id="index_table_text">选桌</span>
                            </div>
                            
                        </td>
                    </tr>
                </tbody>
            </table>-->
        </div>
    </div>
    <!--加载div-->
    <div id="load" class="load" style="display: none;">
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
           <div class="load-text">正在加载中...</div>
      </div>
    </div>
    <!--个人中心-->
    <div id="slider_my" class="animation" style="-webkit-transform: translate3d(100%, 0px, 0px); display: block; height: 784px;">
        <div class="title">
            <span id="slider_my_back" class="back"></span>个人中心
        </div>
        <div class="main" id="slider_my_scroll" style="overflow: hidden;">
            <div style="transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);">
                <div class="userHead_Container">
                    <img class="userHead_img" id="userHead_img" src="../红姨厨房_files/user-head.png">
                    <div id="userHead_Name"></div>
                </div>
                <div id="body">
                    <div class="table">
                    <div class="item_noborder next">
                        <div class="fullRow" id="my_orderlist">订单记录</div>
                    </div>
                    <div class="item border_efefef next" style="color: #aaa9a9;">
                        <div class="fullRow">收藏</div>
                    </div>
                    <div class="item border_efefef next">
                        <div class="fullRow" id="my_addresslist">送餐地址</div>
                    </div>
                    <div class="item border_efefef next" style="color: #aaa9a9;">
                        <div class="fullRow">发票</div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    <!--账单列表-->    
    <div id="slider_orderlist" class="animation" style="-webkit-transform: translate3d(100%, 0px, 0px); display: block; height: 784px;"> 
        <div class="title"><span id="slider_orderlist_back" class="back"></span>个人中心</div>
        <div><div class="orderlist_Hd"><div class="item curr" id="hd01">未完成订单</div><div class="item" id="hd02">已完成订单</div></div></div>
        <div class="main" style="top:82px;">
            <div class="pageItem animation" id="pageitem01" style="height: 784px;"></div>
            <div class="pageItem animation" id="pageitem02" style="-webkit-transform: translate3d(100%, 0px, 0px); height: 784px;"></div>
        </div>
    </div>
    <!--结账单-->
    <div id="slider_order" class="animation" style="-webkit-transform: translate3d(100%, 0px, 0px); display: block; height: 784px;"></div> 
    <!-- Carte Page -->
    <div id="carte_page" class="animation slider_down" style="-webkit-transform: translate3d(100%, 0px, 0px); display: block; height: 784px;">
        <div class="carte_title">
            <span id="cart_back" class="back"></span>
            <div id="cart_shop_title" sitetitle="true">红姨厨房</div>
        </div>
        <div id="carte_container">
           
            <div id="carte_mark">
                <div id="zhuotaiRow" style="padding-left: 15px;border-bottom: 1px solid #f3f4f4;"> <div id="carte_table">桌台:<div id="select_table" class="">未选择</div> </div></div>
                <div id="waimaiRow" style="display: none;">
                    <div style="padding-left: 15px;border-bottom: 1px solid #f3f4f4;">
                       <div style=" position:relative ;padding-left: 20px;">姓名:
                          <div style=" position:absolute ; top:0px; left:60px; right:15px;">
                            <input class="input" id="waimai_name">
                          </div>
                       </div>
                    </div>

                    <div style="padding-left: 15px;border-bottom: 1px solid #f3f4f4;">
                       <div style=" position:relative ;padding-left: 20px;">电话:
                          <div style=" position:absolute ; top:0px; left:60px; right:15px;">
                            <input class="input" id="waimai_phone">
                          </div>
                       </div>
                    </div>

                    <div style="padding-left: 15px;border-bottom: 1px solid #f3f4f4;">
                       <div style=" position:relative ;padding-left: 20px;">地址:
                          <div style=" position:absolute ; top:0px; left:60px; right:15px;">
                            <input class="input" id="waimai_address">
                          </div>
                       </div>
                    </div>


                </div>
                <div style="padding-left: 15px;"> <div id="carte_memo" style=" position:relative ;">备注:
                  <div style=" position:absolute ; top:0px; left:60px; right:15px;">
                    <input id="remark_input" style=" " class="input no_value" value="请输入特殊要求" onfocus="this.className=&#39;input&#39;; if(this.value==&#39;请输入特殊要求&#39;){this.value=&#39;&#39;;}" onblur="this.blur();if(this.value==&#39;&#39;){this.value=&#39;请输入特殊要求&#39;;this.className=&#39;input no_value&#39;;}">
                  </div>
               </div></div>
                <!--<div style="padding-left: 15px;"> <div id="carte_memo">备注:<textarea id="remark_input" class="input no_value" value="请输入特殊要求" onfocus="this.className='input'; if(this.value=='请输入特殊要求'){this.value='';}" onblur="this.blur();if(this.value==''){this.value='请输入特殊要求';this.className='input no_value';}"></textarea> </div></div>-->
                
            </div>
            <div id="carte_dish">
        <div id="carte_dish_scroller" style="overflow: hidden;">
            <ul style="transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);">
                
                    <li>
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img" src="../红姨厨房_files/carte_default_small.png" onerror="javascript:this.src=&#39;../img/carte_default_small.png&#39;;" alt=""></div>
                            <div class="dish_name">榛果奶酪</div>
                            <div class="dish_price">￥8</div>
                            <div class="dish_ope" style="right:5px;" data-id="8897" data-name="榛果奶酪" data-spec="杯" data-price="8" data-ref-id="dish_ope_id_8897">
                                 <span class="sub"></span><span class="number">2</span><span class="add"></span>
                            </div>
                        </div>
                     </li>
                 
                    <li>
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img" src="../红姨厨房_files/carte_default_small.png" onerror="javascript:this.src=&#39;../img/carte_default_small.png&#39;;" alt=""></div>
                            <div class="dish_name">抹茶奶酪</div>
                            <div class="dish_price">￥8</div>
                            <div class="dish_ope" style="right:5px;" data-id="8898" data-name="抹茶奶酪" data-spec="杯" data-price="8" data-ref-id="dish_ope_id_8898">
                                 <span class="sub"></span><span class="number">1</span><span class="add"></span>
                            </div>
                        </div>
                     </li>
                 
                    <li>
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img" src="../红姨厨房_files/carte_default_small.png" onerror="javascript:this.src=&#39;../img/carte_default_small.png&#39;;" alt=""></div>
                            <div class="dish_name">焦糖布丁</div>
                            <div class="dish_price">￥8</div>
                            <div class="dish_ope" style="right:5px;" data-id="8899" data-name="焦糖布丁" data-spec="杯" data-price="8" data-ref-id="dish_ope_id_8899">
                                 <span class="sub"></span><span class="number">1</span><span class="add"></span>
                            </div>
                        </div>
                     </li>
                 
                    <li>
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img" src="../红姨厨房_files/carte_default_small.png" onerror="javascript:this.src=&#39;../img/carte_default_small.png&#39;;" alt=""></div>
                            <div class="dish_name">榛果布丁</div>
                            <div class="dish_price">￥8</div>
                            <div class="dish_ope" style="right:5px;" data-id="8900" data-name="榛果布丁" data-spec="杯" data-price="8" data-ref-id="dish_ope_id_8900">
                                 <span class="sub"></span><span class="number">1</span><span class="add"></span>
                            </div>
                        </div>
                     </li>
                 
            </ul>
         </div>
    </div>
        </div>

        <div id="carte_footer" style="display: block;">
            <div id="carte_info"><span style="font-family: Arial;">5</span>个菜，&nbsp;<span class="price">￥40.00</span></div>
            <div id="carte_ok"><button class="select_ok">立即下单</button></div>
        </div>
    </div>
    

    <!-- 搜索页面 -->
    <div id="searchPage" style="display:none;">
        <div class="mask"></div>
        <div id="search_content">
        <div class="main">
            <input class="input search" value="请输入菜名" onfocus="this.value=&#39;&#39;" onblur="if(this.value==&#39;&#39;){this.value=&#39;请输入菜名&#39;}" id="search_input">
           </div>
            <span id="search_content_finish">取消</span>
        </div>
        <div id="search_result"></div>
    </div>

    <!-- 详细页面 -->
    <div id="dish_details" style="display: none;">
           <div class="wrap">
                <div class="mask" id="mask_dish"></div>
                    <div class="sly_frame dish_detail" id="dish_detail" style="overflow: hidden;">
                        <ul class="clearfix">
                            <li>
                                <div style="width:100%;height: 100%;margin: 0 auto;position: relative;background: #fff;-webkit-border-radius: 5px;border-radius: 15px;">
                                        <div class="title"><span id="dish_title_name" style="display: inline-block;width: 130px;text-align: center;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;">酸梅汤（扎） </span><button id="close_dish"></button></div>
                                        <div class="content" id="image-scroll">
                                            <div><img class="img" src="../红姨厨房_files/carte_default_big.png" alt="" onerror="javascript:this.src=&#39;../img/carte_default_big.png&#39;"></div>
			                                <div><img class="img" src="../红姨厨房_files/carte_default_big.png" alt="" onerror="javascript:this.src=&#39;../img/carte_default_big.png&#39;"></div>
                                            <div><img class="img" src="../红姨厨房_files/carte_default_big.png" alt="" onerror="javascript:this.src=&#39;../img/carte_default_big.png&#39;"></div>
                                        
                                        </div>
                                        <div class="bottom" id="dish_detail_bottom">
                                        <div>
                                            <div style="padding:0px 10px; height: 52px;">
                                                <div style="line-height: 52px;height: 52px;float: left; width:100%;" class="clearfix">
                                                    <span style="width:45px;float: left; ">价格：</span>
                                                    <span id="dish_details_price" style="color:red;padding-left: 5px;float: left;display: block;font-family: Arial; color:#e8383d;">￥15   
                                                     
                                                    </span>
                                                    <div style="margin-top: 10px;float: right">
                                                        <div class="dish_add dish_add_02"></div>
                                                        <div class="dish_ope dish_ope_02" style="display:none;" data-ref-id="dish_ope_id_8847">
                                                            <span class="sub"></span><span class="number" id="dish_details_num">0</span><span class="add"></span>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                            

                                            <div id="dish_detail_scroll" style="line-height: 20px; height: 78px; overflow: hidden;">
                                                <div style="padding: 8px 10px 10px; transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);" class="clearfix">
                                                    <span style="width:45px;float: left; ">详情：</span><span id="dish_details_meark" style="float: left;width: 220px;color: #605d5c;">暂无详情</span>
                                                </div>
                                            </div>
                                          
                                        </div>
                                        </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
    </div>

    <!-- 外卖页面 -->
    <div id="takeaway" class="page animation" style="-webkit-transform: translate3d(100%, 0px, 0px); display: block; height: 784px;">
        <div class="title">
            <span id="takeaway_back" class="back"></span>
            <div sitetitle="true">红姨厨房</div>
        </div>
        <div id="takeawaymain" class="main" style=" bottom:41px;">
            <div>
                <div class="list" id="takeaway_list" mark="name">
                    <div style=" text-align:center ; padding:10px;"><div class="date">2014-08-12</div></div>
                    <div class="item">
                        <div class="l_img">&nbsp;</div> 
                        <div class="l_right">
                                    <div class="beign_img_l"></div>
                                    <div>您好，欢迎光临红姨厨房。</div>
                                    <div>餐厅地址：1层</div>
                                    <div>送餐范围：500米。</div>
                                    <div>50元起送。</div>
                                    <div>配送费：5元。</div>
                                    <div>满200元免配送费。</div>
                                    <div>联系方式:18612345678</div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="l_img">&nbsp;</div> 
                        <div class="l_right">
                                    <div class="beign_img_l"></div>
                                    <div>请问您的送餐地址是</div>
                        </div>
                    </div>
                    <div class="item2">
                        <div class="l_img">&nbsp;</div> 
                        <div class="l_right">
                                    <div class="beign_img_l"></div>
                                    <div>请问您的送餐地址是</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="takeaway_footer">
            <div class="input_div">
                <input id="sendMessage-Text">
            </div>
            <div id="listBtn" class="right" title="收货地址列表">&nbsp;</div>
            <div id="messagebtn" class="right">发送</div>
            
        </div>

        <div class="mylist" id="mylist" style="overflow: hidden;">
            <div id="mylist_scroll" style="transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);">
                
            </div>
   
        </div>
        <div class="tanchu">&nbsp;</div>
    </div>

    <!-- 外卖页面 -->
    <div id="myAddress" class="page myAddress animation" style="-webkit-transform: translate3d(100%, 0px, 0px); display: block; height: 784px;">
         <div class="title">
            <span id="myAddress_back" class="back"></span>
            <div>管理收货地址</div>
            <span class="rightBgn" id="myaddress_add_btn">新增</span>
        </div>
        <div id="Address_Main" class="main">
            
        </div>
    </div>

    <div id="myAddress_add" class="page myAddress animation" style="-webkit-transform: translate3d(100%, 0px, 0px); display: block; height: 784px;">
         <div class="title">
            <span id="myAddress_add_back" class="back"></span>
            <div id="addTitle">新建送餐地址</div>
            <span class="rightBgn" id="saveAddress_btn">保存</span>
        </div>
        <div id="Address_add_Main" class="main">
            <div>
                <div class="item">
                    <span class="name">联系人：</span><input class="input_noborder" id="lx_name">
                </div>
                <div class="item">
                    <span class="name">手机号码：</span><input class="input_noborder" id="lx_phone">
                </div>
                <div class="item">
                    <span class="name">送餐地址：</span><input class="input_noborder" id="lx_address">
                </div>
            </div>
        </div>

    </div>

    <div id="lottery" style="-webkit-transform: translate3d(0px, 1000px, 0px);display: block;">
        <div class="lotter-title">
            <span id="lotteryBack" class="back"></span>幸运抽奖
        </div>
        <div>
        <script>
//            function dyniframesize(down) {
//                var pTar = null;
//                if (document.getElementById) {
//                    pTar = document.getElementById(down);
//                }
//                else {
//                    eval('pTar = ' + down + ';');
//                };
//                if (pTar && !window.opera) {
//                    pTar.style.display = "block"
//                    if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight) {
//                        //ns6 syntax 
//                        pTar.height = pTar.contentDocument.body.offsetHeight + 20;
//               
//                        if (pTar.height < (document.body.clientHeight - 41)) {
//                            pTar.height = document.body.clientHeight - 41;
//                        }
//                    }
//                    else if (pTar.Document && pTar.Document.body.scrollHeight) {
//                        //ie5+ syntax 
//                   
//                        pTar.height = pTar.Document.body.scrollHeight;
//                        if (pTar.height < (document.body.clientHeight - 41)) {
//                            pTar.height = document.body.clientHeight - 41;
//                        }
//                    }
//                }
//            } 

        
        </script>
        <!--<iframe src ="../ggk/lotter.html" frameborder="0" marginheight="0" marginwidth="0" frameborder="0" scrolling="auto" id="ifm" name="ifm" onload="javascript:dyniframesize('ifm');" width="100%"></iframe> 
       --> 
       <div id="bodylotter" "="" style="overflow: hidden;">
        <div class="bodylotter" style="transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);">
            <div id="wScratchPad" style="display:inline-block; background:#fff; position:relative; margin-top:10px;"><div style="position: relative; width: 290px; height: 100px; cursor: default;"><canvas width="290" height="100" style="cursor: default;"></canvas></div></div>
            <div class="contents" id="firstDiv" style="display:none;">
                <div class="title">恭喜您中奖了：</div>
                <div style=" padding: 0 12px;">
                    <div>您中了：<span id="span01"></span></div>
                    <div>奖品名称：<span id="span02"></span></div>
                    <div>中奖时间：<span id="span03"></span></div>
                </div>
            </div>

            <div class="contents">
                <div class="title">奖项设置</div>
                <div style=" padding: 0 12px;" id="list"><div>一等奖:彩票一张</div><div>二等奖:免单</div></div>
            </div>


            <div class="contents" id="secondDiv" style="display:none;">
                <div class="title">商家兑奖</div>
                <div style=" padding: 0 12px;">
                    <input id="num" class="num">
                    <div class="ok" id="ok">商家提交</div>
                </div>
            </div>
            <div class="contents">
                <div class="title">其他说明</div>
                <div style=" padding: 0 12px;" id="memo">该吃吃该喝喝,一顿不吃饿得慌</div>
            </div>
    </div>
        </div>
        <!-- end-->


        
        </div>
    </div>
    <!-- 常见问题 -->
    <div id="qaPage" class="page animation" style="-webkit-transform: translate3d(100%, 0px, 0px); height: 784px;">
         <div class="title">
            <span id="qa_back" class="back"></span>
            <div>常见问题</div>
        </div>
        <div class="main" id="qa_main" style="overflow: hidden;">
            <div style="transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);">
                <div class="qa_list">
                    <div class="item">
                        <span button="true" class="button_right">&nbsp;</span>
                        <div class="hd">Q:在店内如何点餐?</div>
                        <div class="content">
                            1.在餐厅首页中选择要就餐的桌台后开始点餐。<br>
                            2.选择好菜品和数量加入到购物车。<br>
                            3.确认订单信息无误，提交订单。<br>
                            4.等待服务员的确认，点餐完成。
                        </div>
                    </div>

                     <div class="item">
                        <span button="true" class="button_right">&nbsp;</span>
                        <div class="hd">Q:如何和朋友一起点餐？</div>
                        <div class="content">
                            1.从餐厅首页进入到“小伙伴一起点餐”，同时分享给朋友。<br>
                            2.查看已点好的所有菜品，确认订单信息无误后提交。<br>
                            3.等待服务员确认，群点完成。<br>
                        </div>
                    </div>
                     <div class="item">
                        <span button="true" class="button_right">&nbsp;</span>
                        <div class="hd">Q: 如何呼叫外卖？</div>
                        <div class="content">
                            1.从餐厅首页进入到“叫外卖”，按要求输入姓名、地址、电话号码。<br>
                            2.确定送餐地址在送餐范围内，开始点菜。<br>
                            3.确认订单信息无误，提交订单。<br>
                            4.等待服务员的确认，点餐完成。
                        </div>
                    </div>
                     <div class="item">
                        <span button="true" class="button_right">&nbsp;</span>
                        <div class="hd">Q:优惠活动如何参加？</div>
                        <div class="content">
                            1.如果商家有优惠活动时，点击首页头部进入活动介绍页面，查看活动规则。<br>
                            2.满足相应条件的订单可以参加抽奖。<br>
                            3.中奖后请联系餐厅服务员进行兑奖。

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="crowdPage" class="page animation" style="-webkit-transform: translate3d(100%, 0px, 0px); height: 784px;">
        <div class="title">
            <span id="crowd_back" class="back"></span>
            <div sitetitle="true">红姨厨房</div>
        </div>
      
        <div class="main" id="crowd_main" style="overflow: hidden;">
            
            <div style="padding-bottom: 10px; transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); -webkit-transition: transform 0ms cubic-bezier(0.33, 0.66, 0.66, 1); transform-origin: 0px 0px 0px; transform: translate(0px, 0px) translateZ(0px);">
                <div class="body">
                    <div class="userInfoDiv">
                        <div class="user_head_img" id="qundian_userhead"></div>
                        <div class="user_username" id="qundian_username"></div>
                    </div>
                    <div class="erweima">
                        <div id="erweima" class="erweimaMain"></div>
                    </div>
                    <div style="color:#b2b2b2; font-size:12px;">扫描二维码开启群点体验，或者<span id="btn_click_right" style="color:#0028f3;">点击右上角</span>邀请小伙伴一起加入！</div>
                </div>
                <div class="buttonline">
                    <div class="button" id="go_dishlist">去点餐</div>
                </div>
            </div>
        </div>
      

    </div>
    <div id="crowdcarte_Page" class="page animation" style="-webkit-transform: translate3d(100%, 0px, 0px); height: 784px;">
        <div class="title">
            <span id="crowdcarte_back" class="back"></span>
            <div>提交菜品</div>
            <span class="rightBgn" id="crowdcarte_refresh">&nbsp;</span>
        </div>
        <div class="order_meark">
            <div class="item">
                <div class="table-row ">
                   桌台: <div class="select_table" id="select_table2">未选择</div>
                </div>
            </div>
            <div class="item" style="border:none;"> 
                <div id="carte_memo2" style="position:relative ;">
                备注:
                  <div style=" position:absolute ; top:0px; left:60px; right:15px;">
                    <input id="remark_input2" style=" " class="input no_value" value="请输入特殊要求" onfocus="this.className=&#39;input&#39;; if(this.value==&#39;请输入特殊要求&#39;){this.value=&#39;&#39;;}" onblur="this.blur();if(this.value==&#39;&#39;){this.value=&#39;请输入特殊要求&#39;;this.className=&#39;input no_value&#39;;}">

                  </div>
               </div>
            </div>

        </div>
        <div class="main" style="top:145px;" id="crow_carte_container">
           
        </div>

        <div class="botton_footer">
            <div id="crow_info">共计11个菜,&nbsp;<span class="price">￥0.43</span></div>
            <div id="crow_ok"><button class="select_ok" id="btn_beginOrder">立即下单</button></div>
        </div>
    </div>


    <div id="crowduser_Page" class="page animation" style="-webkit-transform: translate3d(100%, 0px, 0px); height: 784px;">
        <div class="title">
            <span id="crowduser_back" class="back"></span>
            <div id="crow_carteName"></div>
        </div>
        <div class="main" id="crowduser_container">
            
        </div>
    </div>
    <div id="share-wx">
        <p>
            <img src="../红姨厨房_files/2000.png">
        </p>
    </div>
    <div id="temp-div" style="display:none;"></div>
   

    <script src="../红姨厨房_files/jquery-1.8.3.min.js" type="text/javascript"></script>
   
    <script src="../红姨厨房_files/iscroll.js" type="text/javascript"></script>
    <!--延迟加载-->
    <script src="../红姨厨房_files/blazy.js" type="text/javascript"></script>
    <!--模板-->
    <script src="../红姨厨房_files/tmpl.min.js" type="text/javascript"></script>
    <!--ajax 请求库-->
    <script src="../红姨厨房_files/jlib.js" type="text/javascript"></script>
    <!--arraylist-->
    <script src="../红姨厨房_files/jarray.min.js" type="text/javascript"></script>
    <script src="../红姨厨房_files/main.js" type="text/javascript"></script>
    <script src="../红姨厨房_files/xg.js" type="text/javascript"></script>
    <script src="../红姨厨房_files/wechat.js" type="text/javascript"></script>
    <script src="../红姨厨房_files/main1.1.js" type="text/javascript"></script>
    <script src="../红姨厨房_files/wScratchPad.js" type="text/javascript"></script>
    <script src="../红姨厨房_files/gzy.run.js" type="text/javascript"></script>
    <!--选择人数-->
    <script type="text/x-tmpl" id="tmpl-person-category">
        <div id="person_category_scroller">
            <ul>
                {% for (var i=1; i<= 20 ; i++) { %}
                <li class="thick_border content" data-id="{%=i %}"><span>{%=i %}</span></li>
                {% } %}
            </ul>
        </div>
    </script>
    <!-- 选择桌台 -->
    <script type="text/x-tmpl" id="tmpl-table-category">
        <div id="table_category_scroller">
            <ul>
            {% for (var i=0; i< o.tabletypelist.length ; i++) { %}
               {% for (var j in o.tabletypelist[i].tableinfolist) { 
                   if($table_data_id==o.tabletypelist[i].tableinfolist[j].TI_Code)
                   {
                       $("#open_slider_tableName").html(o.tabletypelist[i].TT_Name+"-"+o.tabletypelist[i].tableinfolist[j].TI_Name);
                   }
               %}
                
                <li class="thick_border content" data-id="{%=o.tabletypelist[i].tableinfolist[j].TI_Code %}" 
                    data-code="{%=o.tabletypelist[i].tableinfolist[j].TI_Code %}" data-name="{%=o.tabletypelist[i].TT_Name %}-{%=o.tabletypelist[i].tableinfolist[j].TI_Name %}">
                    <span>{%=o.tabletypelist[i].TT_Name %}-{%=o.tabletypelist[i].tableinfolist[j].TI_Name %}</span></li>
                {% } %}
            {% } %}
            </ul>
        </div>
    </script>
    <!--获取所有的菜品分类-->
    <script type="text/x-tmpl" id="tmpl-dish-category">
        <div id="dish_category_scroller">
            <ul>
                {%
                 var f_flag=false;
                 for (var i=0; i< o.special.length ; i++) {f_flag=true;  %}
                    <li d-id={%=o.special[i].CT_ID %}    {% if(i==0){ %}class="active" {%}%}>
                    {% if(i==0){ %}
                        <img src='../img/triangle.png' class='hot_category' />
                    {% } %}
                    <span>{%=o.special[i].CT_Name %}</span><span class="num">2</span></li>
                {% } %}

                {% 
                
                for (var i=0; i< o.list.length ; i++) { %}
                    <li d-id={%=o.list[i].CT_ID %}   {% if(i==0 && !f_flag){ %}class="active" {%}%} >
                    <span>{%=o.list[i].CT_Name %}</span><span class="num">2</span></li>
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
                for (var k=0; k< o.listCarteType.length ; k++) { %}  
                    <li class="dish_list_active nav" data-ctid="{%=o.listCarteType[k].CT_ID%}" >{%=o.listCarteType[k].CT_Name%}</li>
                {% for (var i=0; i< o.listCarteType[k].listCarte.length ; i++) { %}
                    {% for (var j=0; j< o.listCarteType[k].listCarte[i].listCarteSpec.length ; j++) { %}
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img b-lazy" 
                                src="/default.png" data-src="/dish/{%=o.RestaurantSign %}/LO/128x128/{%=o.listCarteType[k].listCarte[i].listCarteSpec[j].C_ID%}.jpg" alt="" /></div>
                            <div class="dish_name">{%=o.listCarteType[k].listCarte[i].C_Name%}({%=o.listCarteType[k].listCarte[i].listCarteSpec[j].CS_Spec%})</div>
                            {%
                                if(j<=1)
                                {
                                  this_price=subNum(o.listCarteType[k].listCarte[i].listCarteSpec[j].CS_Price);
                                  this_price_vip=subNum(o.listCarteType[k].listCarte[i].listCarteSpec[j].CS_PriceMember);
                                }
                            %}
                            
                            <div class="dish_price">￥{%=this_price%} {% if(this_price_vip>0){ %} <span class="vip" style="padding-left: 15px;">VIP {%=this_price_vip %}</span>  {% } %} </div>
                            <div class="dish_add"></div>
                            <div class="dish_ope" style="display:none;"
                                data-remark="{%=o.listCarteType[k].listCarte[i].C_Remark%}"
                                id="dish_ope_id_{%=o.listCarteType[k].listCarte[i].listCarteSpec[j].CS_ID%}" cp-id="{%=o.listCarteType[k].listCarte[i].listCarteSpec[j].CP_ID%}" d-ctid="{%=o.listCarteType[k].CT_ID%}" data-id="{%=o.listCarteType[k].listCarte[i].listCarteSpec[j].CS_ID%}" 
                                data-name="{%=o.listCarteType[k].listCarte[i].C_Name%}" data-spec="{%=o.listCarteType[k].listCarte[i].listCarteSpec[j].CS_Spec%}"
                                data-ref-id="dish_ope_id_{%=o.listCarteType[k].listCarte[i].listCarteSpec[j].CS_ID%}"
                                data-price="{%=this_price%}" data-vip-price="{%=this_price_vip%}"  data-img="/dish/{%=o.RestaurantSign %}/LO/128x128/{%=o.listCarteType[k].listCarte[i].listCarteSpec[j].C_ID%}.jpg">
                                <span class="sub"></span><span class="number" >0</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
                {% }}} %}
            </ul>
        </div>
    </script>

    <script type="text/x-tmpl" id="order-dish-item">
        <div id="carte_dish_scroller">
            <ul>
                {% for (var i=0; i<o.list.length ; i++) { %}
                    <li>
                        <div class="dish_item">
                            <div class="dish_image"><img class="dish_img" src="{%=o.list[i].img %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" /></div>
                            <div class="dish_name">{%=o.list[i].name %}</div>
                            <div class="dish_price">￥{%=o.list[i].price %}</div>
                            <div class="dish_ope" style="right:5px;" data-id="{%=o.list[i].id %}" data-name="{%=o.list[i].name%}" data-spec="{%=o.list[i].spec%}"
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
                {% for (var j=0; j< o.datas[i].listCarteSpec.length ; j++) { %}
                    <li class="dish_list_active">
                        <div class="dish_item">
                            <div class="dish_image">
                                <img class="dish_img b-lazy" src="/default.png" data-src="/dish/{%=o.RestaurantSign %}/LO/128x128/{%=o.datas[i].C_ID%}.jpg" alt="" />
                            </div>
                            <div class="dish_name">{%=o.datas[i].C_Name%}({%=o.datas[i].listCarteSpec[j].CS_Spec%})</div>
                            <div class="dish_price">￥{%=o.datas[i].listCarteSpec[j].CS_Price%}</div>
                            <div class="dish_ope" data-ref-id="dish_ope_id_{%=o.datas[i].listCarteSpec[j].CS_ID%}">
                                <span class="sub"></span><span class="number">{%=o.datas[i].listCarteSpec[j].number %}</span><span class="add"></span>
                            </div> 
                        </div>
                    </li>
             {% }} %}
            </ul>
         </div>    
    </script>

    <script type="text/x-tmpl" id="search-dish-noitem">
        <div id="search_dish_noresult">对不起，没有找到菜品</div>
    </script>

    <!--订单模板-->
    <script type="text/x-tmpl" id="tmpl-order-info">
    <div class="dish_title"><span id="order-back" class="back"></span>结账单</div>
    <div class="nav_img"></div>
    <div class="body" id="order_scroll">
         <div id="order-content">
              <div class="scroll">
                   <div class="Container">
                        <div class="order-Tip" style="height: 40px;line-height: 40px;background-color: #FFF2DD;position: relative;padding: 0 10px;"><span style="color: #DA643C;">请等待服务员与您确认订单</span>
                            <div style="width: 16px;height: 16px;background: url(../img/close.png) no-repeat;background-size: contain;position: absolute;right: 10px;top: 12px;" onclick="javascript:$(this).parent().remove();"></div>
                        </div>
                        <div class="content">
                            <div class="hd">{%=o.shopname%}</div>
                            <div class="nav">
                                <div class="left">订单号：{%=o.DB_Number%}</div>
                                <div class="right">{%=o.time%}</div>
                            </div>
                            <ul class="list">
                             {% for(var i in o.list) { %}
                                <li class="item clearfix">
                                    <div class="name">{%=o.list[i].DC_Name %}</div>
                                    <div class="num">x&nbsp;{%=o.list[i].DC_Amount %}</div>
                                    <div class="price">{%=o.list[i].DC_Sum %}</div>
                                </li>
                             {% } %}
                            </ul>
                            <div class="row"><div class="left"></div><div class="heji right">合计:<div class="totalPrice">{%=o.sum%}</div></div></div>
                            <div class="row"><div class="left">桌台号：{%=o.TI_Name %}</div>
                            </div>
                            <div class="mark"><div style="line-height: 18px;padding-top: 10px;">备注:{%=o.DB_Remark%}</div></div>
                        </div>
                    </div>
            </div>
            <div style="height: 10px; background: #f5f5f5;"></div>
            <div>
                <div id="cj_btn" style="height: 40px;line-height: 40px;border-radius: 5px;font-size: 14px;margin: 0 15px;background: #fff;padding: 0 10px;">{%=o.lotterState%}</div>
            </div>
            <div style="height: 10px; background: #f5f5f5;"></div>
            <div style="padding: 0 15px;">
                <div class="payContainer">
                    <div class="item hd" id="pay-type">支付方式<div class="expland up"></div></div>
                        <div id="paytype-list">
                            <div class="item select ">现金支付<div class="memo">请等待服务员与您确认订单<span class="right-img"></span></div></div>
                            <div class="item " style="color: #aaa9a9;">微信支付<div class="memo">推介安装微信5.0及以上版本使用<span class="right-img"></span></div></div>
                            <div class="item last" style="color: #aaa9a9;">支付宝<div class="memo">推介有支付宝的用户使用<span class="right-img"></span></div></div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            </div>
        </div>
    </script>
    
    <script type="text/x-tmpl" id="order_submit">
        <data>
            {% for (var i=0; i<o.list.length ; i++) { %}
                <Carte>
                    <CS_ID>{%=o.list[i].id %}</CS_ID>
                    <DC_Name>{%=o.list[i].name %}</DC_Name>
                    <MM_Names></MM_Names>
                    <MT_Names></MT_Names>
                    <DC_Amount>{%=o.list[i].num %}</DC_Amount>
                    <DC_Weight>0</DC_Weight>
                    <DC_Price>{%=o.list[i].price %}</DC_Price>
                    <DC_Sum>0</DC_Sum>
                    <DC_Remark></DC_Remark>
                </Carte>
             {% } %}
         </data>
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
                                            <div ><img class="img" src="" alt="" onerror="javascript:this.src='../img/carte_default_big.png'"/></div>
			                                <div ><img class="img" src="" alt="" onerror="javascript:this.src='../img/carte_default_big.png'"/></div>
                                            <div ><img class="img" src="" alt="" onerror="javascript:this.src='../img/carte_default_big.png'"/></div>
                                        
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
    
<!--订单列表页面-->
    <script type="text/x-tmpl" id="orderlistpage">
            <ul id="">
                {% for (var i=0; i<o.list.length ; i++) { %}
                <li class="group" data-id={%=o.list[i].DB_Number%}>
                 
                    <div class="item clearfix">
                        <div class="left color">{%=o.shopname %}</div>
                        <div class="right color">{%=o.list[i].t1 %}</div>
                    </div>

                    <div class="item clearfix">
                        <div class="left">共计{%=o.list[i].D_Count %}个菜，<span style="color: #de4046;font-family: Arial;">￥{%=o.list[i].P_Sum %}</span></div>
                        <div class="right">现金支付</div>
                    </div>
                    <div class="go_next"></div>
                </li>
                {% } %}
            </ul>
</script>

    <script type="text/x-tmpl" id="takeaway_model">
            <div style=" text-align:center ; padding:10px;"><div class="date">{%=o.t %}</div></div>
            <div class="item">
                <div class="l_img"><img src="{%=o.img%}" onerror="javascript:this.src='../img/shangjia-header90.png'"/></div> 
                <div class="l_right">
                            <div class="beign_img_l"></div>
                            <div>您好，欢迎光临{%=o.Name %}。</div>
                            <div>餐厅地址：{%=o.Address %}</div>
                            <div>送餐范围：{%=o.Takeout.Distance %}米。</div>
                            <div>10元起送。</div>
                            <div>配送费：5元。</div>
                            <div>满200元免配送费。</div>
                            <div>联系方式:{%=o.Phone %}</div>
                </div>
            </div>
            <div class="item">
                <div class="l_img"><img src="{%=o.img%}" onerror="javascript:this.src='../img/shangjia-header90.png'"/></div> 
                <div class="l_right">
                            <div class="beign_img_l"></div>
                            <div>请问您的名字是?</div>
                </div>
            </div>


    </script>


    <script type="text/x-tmpl" id="takeaway_model2">
        <div class="item">
                <div class="l_img" ><img src="{%=o.img%}" onerror="javascript:this.src='../img/shangjia-header90.png'"/></div> 
                <div class="l_right">
                            <div class="beign_img_l"></div>
                            <div>请问您的{%=o.name %}是?</div>
                </div>
            </div>
    </script>
     <script type="text/x-tmpl" id="takeaway_model3">
        <div class="item">
                <div class="l_img"><img src="{%=o.img%}" onerror="jjavascript:this.src='../img/shangjia-header90.png'"/></div> 
                <div class="l_right">
                            <div class="beign_img_l"></div>
                            <div>美味很快送达，请<a a-click="true" style="color:red;" href="javascript:void(0);">点此选菜</a></div>
                </div>
        </div>
    </script>

    <script type="text/x-tmpl" id="takeaway_model4">
        <div class="item">
                <div class="l_img"><img src="{%=o.img%}" onerror="javascript:this.src='../img/shangjia-header90.png'"/></div> 
                <div class="l_right">
                            <div class="beign_img_l"></div>
                            <div>请确认您输入的位置在送餐范围内。<a a-click="true" style="color:red;" href="javascript:void(0);">点此选菜</a></div>
                </div>
        </div>
    </script>




    <script type="text/x-tmpl" id="takeaway_model5">
            <div class="item2" mark="{%=o.mark%}"><div class="l_img"><img src="{%=o.img%}" onerror="javascript:this.src='../img/index-head.png'"/></div> <div class="l_right"> <div class="beign_img_l"></div><div class="message">{%=o.name%}</div><div class="tip">重新输入</div></div></div>
    </script>

     

    <script type="text/x-tmpl" id="takeaway_model6">
        <div class="item">
                <div class="l_img"><img src="{%=o.img%}" onerror="javascript:this.src='../img/shangjia-header90.png'"/></div> 
                <div class="l_right">
                            <div class="beign_img_l"></div>
                            <div style=" color:red;">{%=o.message%}</div>
                </div>
        </div>
    </script>

<script type="text/x-tmpl" id="temp_myaddresslist">
<div>
    {% for (var i in o.addresses) { %}
    <div class="item item2" CA_ID="{%=o.addresses[i].CA_ID %}">
        <div class="name">{%=o.addresses[i].CA_Contact %} {%=o.addresses[i].CA_Phone %}</div>
        <div class="name">{%=o.addresses[i].CA_Address %}</div>
        <div class="del">删除</div>
    </div>
    {% } %}
</div>
</script>
<!--外卖选择收货地址-->
<script type="text/x-tmpl" id="temp_myaddresslist2">
<div>
    {% for (var i in o) { %}
    <div class="item {%if(i==0){ %} no-border {% } %}" name="{%=o[i].CA_Contact %}" phone="{%=o[i].CA_Phone %}" address="{%=o[i].CA_Address %}" >
        <div>您可能的送餐地址:</div>
        <div>{%=o[i].CA_Contact %} {%=o[i].CA_Phone %}</div>
        <div>{%=o[i].CA_Address %}</div>
    </div>
    {% } %}
</div>
</script>

<!--群点菜品-->
<script type="text/x-tmpl" id="temp_crowd_nodata">
    <div style="text-align: center;background: #fff;height: 100%;line-height: 80px;">
        <span>小伙伴们都还没有点菜！</span>
    </div>
</script>
<script type="text/x-tmpl" id="temp_crowd_carte_list">
        <div id="crow_carte_scroll">
            <ul>
                {% for (var i=0; i<o.list.length ; i++) { 
                    if(o.list[i].user.length==1)
                    {
                %}
                    <li>
                        <div class="dish_item">
                            <div class="imagelist people1" data_name="{%=o.list[i].CD_Name %}" data-user="{%= JSON.stringify(o.list[i].user)%}"><img class="dish_img" src="{%=o.list[i].user[0].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" /></div>
                            <div class="dish_name">{%=o.list[i].CD_Name %}</div>
                            <div class="dish_price">￥{%=o.list[i].CD_Price %}</div>
                            <div class="dish_ope" style="right:5px;" csid="{%=o.list[i].CS_ID %}">
                                 <span class="sub"></span><span class="number">{%=o.list[i].CD_Amount %}</span><span class="add"></span>
                            </div>
                        </div>
                     </li>
                {%    
                    }else if(o.list[i].user.length==2)
                    {
                %}
                     <li>
                        <div class="dish_item">
                            <div class="imagelist people2" data_name="{%=o.list[i].CD_Name %}" data-user="{%= JSON.stringify(o.list[i].user)%}">
                                <img class="dish_img" src="{%=o.list[i].user[0].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" />
                                <img class="dish_img" src="{%=o.list[i].user[1].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" />
                            </div>
                            <div class="dish_name">{%=o.list[i].CD_Name %}</div>
                            <div class="dish_price">￥{%=o.list[i].CD_Price %}</div>
                            <div class="dish_ope" style="right:5px;" csid="{%=o.list[i].CS_ID %}">
                                 <span class="sub"></span><span class="number">{%=o.list[i].CD_Amount %}</span><span class="add"></span>
                            </div>
                        </div>
                     </li>

                {%      
                    }else if(o.list[i].user.length==3)
                    {
                %}
                    <li>
                        <div class="dish_item">
                            <div class="imagelist people3" data_name="{%=o.list[i].CD_Name %}" data-user="{%= JSON.stringify(o.list[i].user)%}">
                                <div class="item"><img class="dish_img" id="img01" src="{%=o.list[i].user[0].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" /></div>
                                <div class="item">
                                    <img class="dish_img" src="{%=o.list[i].user[1].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" />
                                    <img class="dish_img" src="{%=o.list[i].user[2].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" />
                                </div>
                            </div>
                            <div class="dish_name">{%=o.list[i].CD_Name %}</div>
                            <div class="dish_price">￥{%=o.list[i].CD_Price %}</div>
                            <div class="dish_ope" style="right:5px;" csid="{%=o.list[i].CS_ID %}">
                                 <span class="sub"></span><span class="number">{%=o.list[i].CD_Amount %}</span><span class="add"></span>
                            </div>
                        </div>
                     </li>

                {%   
                    }else if(o.list[i].user.length==4)
                    {
                %}
                     <li>
                        <div class="dish_item">
                            <div class="imagelist people4" data_name="{%=o.list[i].CD_Name %}" data-user="{%=JSON.stringify(o.list[i].user)%}">
                                <div class="item">
                                    <img class="dish_img" src="{%=o.list[i].user[0].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" />
                                    <img class="dish_img" src="{%=o.list[i].user[1].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" />
                                </div>
                                <div class="item">
                                    <img class="dish_img" src="{%=o.list[i].user[2].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" />
                                    <img class="dish_img" src="{%=o.list[i].user[3].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt="" />
                                </div>
                            </div>
                            <div class="dish_name">{%=o.list[i].CD_Name %}</div>
                            <div class="dish_price">￥{%=o.list[i].CD_Price %}</div>
                            <div class="dish_ope" style="right:5px;" csid="{%=o.list[i].CS_ID %}">
                                 <span class="sub"></span><span class="number">{%=o.list[i].CD_Amount %}</span><span class="add"></span>
                            </div>
                        </div>
                     </li>


                {%   
                    }
                }%}
               
            </ul>
         </div>
    </script>

<!--群点人员所点菜品详情-->
 <script type="text/x-tmpl" id="temp_user_carte">
    <div id="crowduser_scroll">
     <ul>
    {% for (var i=0; i<o.length ; i++) {
    %}
       
            <li><img src="{%=o[i].M_Image %}" onerror="javascript:this.src='../img/carte_default_small.png';" alt=""  /><div>{%=o[i].M_Name %}</div><span class="count">{%=o[i].cnt %}份</span></li>
        
    {%}%}
    </ul>
    </div>
 </script>





</body></html>