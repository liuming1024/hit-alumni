<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>哈尔滨工业大学校友会</title>
    <link rel="stylesheet" type="text/css" href="http://res.wx.qq.com/open/libs/weui/1.1.2/weui.min.css">
    <link rel="stylesheet" type="text/css" href="../../resources/css/common.css">
</head>
<body>
<div class="container js_container">
    <div class="hd">我要捐款</div>
    <div class="weui-cells__title bd-m-t">筹款信息</div>
    <div class="weui-form-preview">
        <div class="weui-form-preview__bd">
            <p>
                <label class="weui-form-preview__label">筹款项目</label>
                <span class="weui-form-preview__value">${item.body}</span>
            </p>
            <p>
                <label class="weui-form-preview__label">筹款说明</label>
                <span class="weui-form-preview__value">${item.detail}</span>
            </p>
            <p>
                <label class="weui-form-preview__label">已筹金额</label>
                <span class="weui-form-preview__value">${item.raisedFund}元</span>
            </p>
            <p>
                <label class="weui-form-preview__label">目标金额</label>
                <span class="weui-form-preview__value">${item.targetFund}元</span>
            </p>
            <p style="height: 28px;">
                <label class="weui-form-preview__label">发起时间</label>
                <span class="weui-form-preview__value">
                    <fmt:formatDate value="${item.time_begin}" pattern="yyyy-MM-dd HH:mm:ss"/>
                </span>
            </p>
        </div>
    </div>
    <div class="weui-cells__title">我要捐款</div>
    <div class="weui-cells weui-cells_form">
        <div class="weui-cell">
            <div class="weui-cell__hd"><label class="weui-label">捐款金额</label></div>
            <div class="weui-cell__bd">
                <input class="weui-input" id="donateMoney" type="number" pattern="[0-9]*" placeholder="捐款金额，单位元"/>
            </div>
        </div>
    </div>
    <div class="weui-btn-area" style="text-align: center;">
        <button class="weui-btn weui-btn_mini weui-btn_primary btn-c" id="btn-sbt">捐助</button>
    </div>
</div>
<script src="http://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
<script>
    $("#btn-sbt").click(function () {
        var targetUrl = "${targetUrl}";
        var redirectUrl = "${redirectUrl}";
        redirectUrl = redirectUrl + "?itemInfo=${item.body}_${item.detail}_" + $("#donateMoney").val() + "_web_${item.id}";
        redirectUrl = encodeURI(redirectUrl);
        targetUrl = targetUrl.replace("REDIRECT_URI", redirectUrl);
        window.location.href = targetUrl;
    });
</script>
</body>
</html>
