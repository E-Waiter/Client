
var wechatLoad = false;
var wechatParm={
    shareimgUrl: '',
    lineLink: window.location.href,
    descContent: '爱点餐',
    shareTitle: "爱点餐",
    appid: 'wxcf34c168e61773d0'
};

function shareFriend() {
    WeixinJSBridge.invoke('sendAppMessage',{
                            "appid": wechatParm.appid,
                            "img_url": wechatParm.shareimgUrl,
                            "img_width": "640",
                            "img_height": "640",
                            "link": wechatParm.lineLink,
                            "desc": wechatParm.descContent,
                            "title": wechatParm.shareTitle
                            }, function(res) {
                                _report('send_msg', res.err_msg);
                            })
};
function shareTimeline() {
    WeixinJSBridge.invoke('shareTimeline',{
                            "img_url": wechatParm.shareimgUrl,
                            "img_width": "640",
                            "img_height": "640",
                            "link": wechatParm.lineLink,
                            "desc": wechatParm.descContent,
                            "title": wechatParm.shareTitle
                            }, function(res) {
                            _report('timeline', res.err_msg);
                            });
};
function shareWeibo() {
    WeixinJSBridge.invoke('shareWeibo',
                            {
                                "content": wechatParm.descContent,
                                "url": wechatParm.lineLink
                            }, function (res) {
                                _report('weibo', res.err_msg);
                            });
};
// 当微信内置浏览器完成内部初始化后会触发WeixinJSBridgeReady事件。



//    document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
//        // 发送给好友
//        WeixinJSBridge.on('menu:share:appmessage', function (argv) {
//            shareFriend();
//        });

//        // 分享到朋友圈
//        WeixinJSBridge.on('menu:share:timeline', function (argv) {
//            shareTimeline();
//        });
//        // 分享到微博
//        WeixinJSBridge.on('menu:share:weibo', function (argv) {
//            shareWeibo();
//        });
//    }, false);


function SetWechatFn() {
    if (!wechatLoad) {
        wechatLoad = true;
        WeixinJSBridge.call("showOptionMenu");
        // 发送给好友
        WeixinJSBridge.on('menu:share:appmessage', function (argv) {
            shareFriend();
        });

        // 分享到朋友圈
        WeixinJSBridge.on('menu:share:timeline', function (argv) {
            shareTimeline();
        });
        // 分享到微博
        WeixinJSBridge.on('menu:share:weibo', function (argv) {
            shareWeibo();
        });
    }
};

