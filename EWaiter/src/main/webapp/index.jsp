<%@ page language="java" pageEncoding="UTF-8" %>
<%
	String initInfo = (String)request.getAttribute("initInfo");
%>
    <!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">
    <html>
        
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
            <meta content=”yes” name=”apple-mobile-web-app-capable” />
            <meta content=”black” name=”apple-mobile-web-app-status-bar-style” />
            <meta name="apple-mobile-web-app-status-bar-style" content="black">
            <meta name="format-detection" content="telephone=no">
            <title>小二哥</title>
            <script src="../resource/js/jquery-1.8.3.min.js" type="text/javascript"></script>
            <script src="../resource/js/jquery.fullbg.min.js" type="text/javascript"></script>
            <script src="../resource/js/jlib.js" type="text/javascript"></script>
            <link href="../resource/css/xg.css" rel="stylesheet" type="text/css" />
            <link href="../resource/css/login.css" rel="stylesheet" type="text/css" />
            <script type="text/javascript">
                $(window).load(
                function() {

                    $("#background").fullBg();
                    $("#checkIphone").bind("click",
                    function() {
                    	var initInfo = <%=initInfo%>;
    					var merID = initInfo.data.merID;
    					var tableID = initInfo.data.tableID;
                        var sub_DB_Phone = $("#telephone").val(); // 電話
                        var isMobile = /^(?:13\d|15\d|18\d)\d{5}(\d{3}|\*{3})$/;
						 if( initInfo.code != 1){
                        	showdialog(1,initInfo.msg);
                        	return;
                        } else if (!isMobile.test(sub_DB_Phone)) { //如果用户输入的值不同时满足手机号和座机号的正则
                            showdialog(1, "请正确填写电话号码，例如:13415764179或0321-4816048", focusOnTelePhoneInput); //就弹出提示信息
                            return; //返回一个错误，不向下执行
                        }else {
                        	location.href = "../takeout3.jsp?sub_DB_Phone="+sub_DB_Phone+"&merID="+merID
											+"&tableID="+tableID;
    					}
/* 						 
						 if (flag) {
                            
                        } */
                    });
                });
				
                
            </script>
        </head>
        
        <body>
            <div class="form-wrapper cf">
                <input type="number" id="telephone" placeholder="请输入电话号码" required>
                <button type="button" id="checkIphone">
                    开始验证
                </button>
            </div>
<!--             <div class="state" style="text-align: center;">
                <p>
                    隐私说明
                </p>
                <p>
                    本站对所有用户信息仅作数据分析，会对用户信息进行保密.....
                </p>
            </div> -->
            <div style="width: 100%; height: 100%; margin: 0; top: 0; position: absolute; z-index: -1">
                <img src="../resource/img/bg.jpg" alt="" id="background" />
            </div>
        </body>
    
    </html>