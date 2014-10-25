/*
    {type:"POST or GET",showLoading:true or false,success , error , complete callback function, loadMessage 加载信息字符串,data post 请求参数}

*/
var $loading_count = 0;

function jAjax(args) {
    //args.showLoading = true;
    //dataType
    var async = true;
    if (args.async==false) {
        async = false;
    };
    $.ajax({
        type: args.type,
        url: args.url,
        data: args.data,
        dataType: "html",
        async:async,
        beforeSend: function (XMLHttpRequest) {
            if (args.showLoading) {
                showLoad(args.loadMessage);
            }
        },
        success: function (data, textStatus) {
      
            if (args.success != null)
                args.success(data);
        },
        complete: function(XMLHttpRequest, textStatus) {
            if (args.showLoading) {
                closeLoad();
            };
            if (args.complete != null) args.complete();
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            if (args.error != null)
                args.error();
        }
    });
};



/*打开加载窗口*/
function showLoad(message) {
    $loading_count += 1;
    var defalutMessage = "正在加载中...";
    if (message) {defalutMessage = message;}
    $("#load").show().find(".load-text").html(defalutMessage);
};

//关闭加载窗口
function closeLoad() {
    $loading_count -= 1;
    if ($loading_count == 0) {
        $("#load").hide();
    }
};


/*打开提示窗口

type:       1,信息提示窗口 只有关闭按钮
            2,信息确认窗口 有确认，取消按钮
message:    提示内容
fn1:        确定按钮回调事件
fn2:        取消按钮回调事件

*/

function showdialog(type,message,fn1,fn2) {
    
    var str = "<div class=\"dialog\" id=\"dialog\">";
    str += "<div class=\"full\"></div>";
    str += "<div class=\"body\">";
    str += "<div class=\"content\">"+message+"</div>";
    if (!type || type==1) {
        str += "<div class=\"bottom\"><div class=\"item all\" id=\"ok\">确定</div>";
    } else
    {
        str += "<div class=\"bottom\"><div class=\"item\" id=\"close\">取消</div><div class=\"item last\" id=\"ok\">确定</div>";
    };
    str += "</div></div>";
    var dialog = $(str);
    dialog.appendTo("body");
    var _body = $(dialog).find(".body");
    _body.css({ "margin-top":"-"+(_body.height() / 2)+"px" });
   
    $(dialog).find("#ok").bind("click", function() {
        $(dialog).remove();
        if (fn1) {
            fn1();
        }
    });
    $(dialog).find("#close").bind("click", function() {
        $(dialog).remove();
        if (fn2) {
            fn2();
        }
    });
};



//获取url参数
function getQueryStringValue(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) {
        return r[2];
    };
    return null;
};


//移除小数点后面的0
function subNum(n) {
    var returnValue = "";
    var beforeValue = "";
    var endValue = "";
    var temp = n.toString();
    var this_ary = temp.split('.');
    if (this_ary.length == 2) {
        beforeValue = this_ary[0];
        endValue = this_ary[1];
        while (endValue.substr(endValue.length - 1) == "0") {
            endValue = endValue.substring(0, endValue.length - 1);

        };

        returnValue = beforeValue;
        if (endValue) {
            returnValue += "." + endValue;
        };

        return returnValue;
    } else {
        return temp;
    }

};
function isMobile_str(value) {

    var reg0 = /^13\d{9}$/;
    var reg1 = /^15[0-3,5-9]\d{8}$/;
    var reg2 = /^18[0-3,5-9]\d{8}$/;
    var my = false;

    if (reg0.test(value) || reg1.test(value) || reg2.test(value)) {
        my = true;
    };
    return my;
};


   
