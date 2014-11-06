    <%@ page language="java" pageEncoding="UTF-8"%>
        <!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">

        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
        <meta content=”yes” name=”apple-mobile-web-app-capable” />
        <meta content=”black” name=”apple-mobile-web-app-status-bar-style” />
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="format-detection" content="telephone=no">


        <title>小二哥</title>

        <style>

        body {
        font: 13px 'Lucida sans', Arial, Helvetica;
        color: #eee;
        margin:0;
        text-align: center;

        }

        a {color: #ccc; }

        .fullBg {
        position: fixed;
        top: 0;
        left: 0;
        overflow: hidden;
        filter: url(blur.svg#blur); /* FireFox, Chrome, Opera */
        -webkit-filter: blur(10px); /* Chrome, Opera */
        -moz-filter: blur(10px);
        -ms-filter: blur(10px);
        filter: blur(10px);
        filter: progid:DXImageTransform.Microsoft.Blur(PixelRadius=10, MakeShadow=false); /* IE6~IE9 */
        }
        .cf:before, .cf:after{

        content:"";

        display:table;

        }


        .cf:after{

        clear:both;

        }


        .cf{

        zoom:1;

        }


        .form-wrapper {

        width: 80%;

        padding: 15px;

        margin: 150px auto 50px auto;

        background: #444;

        background: rgba(0,0,0,.2);

        -moz-border-radius: 10px;

        -webkit-border-radius: 10px;

        border-radius: 10px;

        -moz-box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);

        -webkit-box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);

        box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2);

        }


        .form-wrapper input {

        width: 63.5%;

        height: 20px;

        padding: 10px 5px;

        float: left;
        
        font: bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma';

        border: 0;

        background: #eee;

        -moz-border-radius: 3px 0 0 3px;

        -webkit-border-radius: 3px 0 0 3px;

        border-radius: 3px 0 0 3px;

        }


        .form-wrapper input:focus {

        outline: 0;

        background: #fff;

        -moz-box-shadow: 0 0 2px rgba(0,0,0,.8) inset;

        -webkit-box-shadow: 0 0 2px rgba(0,0,0,.8) inset;

        box-shadow: 0 0 2px rgba(0,0,0,.8) inset;

        }
        .form-wrapper input::-webkit-input-placeholder {

        color: #999;

        font-weight: normal;

        font-style: italic;

        }
        .form-wrapper input:-moz-placeholder {

        color: #999;

        font-weight: normal;

        font-style: italic;

        }
        .form-wrapper input:-ms-input-placeholder {

        color: #999;

        font-weight: normal;

        font-style: italic;

        }

        .form-wrapper button {

        overflow: visible;

        position: relative;

        float: left;

        border: 0;

        padding: 0;

        cursor: pointer;

        height: 40px;

        width: 110px;

        font: bold 15px/40px 'lucida sans', 'trebuchet MS', 'Tahoma';

        color: #fff;

        text-transform: uppercase;

        background: #d83c3c;

        -moz-border-radius: 0 3px 3px 0;

        -webkit-border-radius: 0 3px 3px 0;

        border-radius: 0 3px 3px 0;

        text-shadow: 0 -1px 0 rgba(0, 0 ,0, .3);

        }
        .form-wrapper button:hover{

        background: #e54040;

        }


        .form-wrapper button:active,

        .form-wrapper button:focus{

        background: #c42f2f;

        }
        .form-wrapper button:before {

        content: '';

        position: absolute;

        border-width: 8px 8px 8px 0;

        border-style: solid solid solid none;

        border-color: transparent #d83c3c transparent;

        top: 12px;

        left: -6px;

        }


        .form-wrapper button:hover:before{

        border-right-color: #e54040;

        }


        .form-wrapper button:focus:before{

        border-right-color: #c42f2f;

        }


        .form-wrapper button::-moz-focus-inner {

        border: 0;

        padding: 0;

        }

        </style>

        <script src="resource/js/jquery-1.8.3.min.js" type="text/javascript"></script>

        <script src="resource/js/jquery.fullbg.min.js" type="text/javascript"></script>
        
        <script src="resource/js/jlib.js" type="text/javascript"></script>
        
        <link href="resource/css/xg.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
        $(window).load(function() {
        	$("#background").fullBg();
        	$("#checkIphone").bind("click",
        			function() {
        				var flag = true;
        				var sub_DB_Phone = $("#telephone").val(); // 電話
        				var isMobile=/^(?:13\d|15\d|18\d)\d{5}(\d{3}|\*{3})$/;
        				if(!isMobile.test(sub_DB_Phone)){ //如果用户输入的值不同时满足手机号和座机号的正则
        					showdialog(1,"请正确填写电话号码，例如:13415764179或0321-4816048",focusOnTelePhoneInput);  //就弹出提示信息
        				    flag = false;         //返回一个错误，不向下执行
        				}
        				if (flag) {
        					 location.href = '/EWaiter/foodType/getFoodTypesByMerID?merID=2&deskID=1';
        				}
        	});
        });

        function focusOnTelePhoneInput() {
        	$("#telephone").focus();
        }

        </script>
        </head>


        <body>


        <form class="form-wrapper cf">

        <input type="number" id="telephone" placeholder="请输入电话号码" required>

        <button type="button" id="checkIphone">开始验证</button>

        </form>
        <div class="state" style="text-align: center;">
        <p>隐私说明</p>
        <p>本站对所有用户信息仅作数据分析，会对用户信息进行保密.....</p>
        </div>
        <div style="width:100%;height:100%;margin:0;top: 0;position: absolute; z-index: -1">
        <img src="resource/img/bg.jpg" alt="" id="background" />
        </div>

        </body>

        </html>
