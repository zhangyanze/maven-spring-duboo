<#assign S_URL=request.contextPath />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <title>会员中心</title>
    <script type="text/javascript">
        var SITEURL = '${S_URL}';
    </script>
    <link type="text/css" rel="stylesheet" href="${S_COMMON_URL}/styles/shop/base.css">
    <link type="text/css" rel="stylesheet" href="${S_URL}/static/styles/member.css">
    <link type="text/css" rel="stylesheet" href="${S_URL}/static/styles/home_login.css">
    <link type="text/css" rel="stylesheet" href="${S_COMMON_URL}/scripts/dialog/dialog.css">
    <link type="text/css" rel="stylesheet" href="${S_COMMON_URL}/scripts/jquery-ui/themes/ui-lightness/jquery.ui.css">
    <script src="${S_COMMON_URL}/scripts/jquery/jquery.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery/jquery-browser.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery/waypoints.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery/jquery.validation.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery-ui/jquery.ui.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery-ui/i18n/zh-CN.js"></script>
    <script src="${S_COMMON_URL}/scripts/utils/area_array.js"></script>
    <script src="${S_COMMON_URL}/scripts/shop/common.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery/jquery.masonry.js"></script>
    <script src="${S_COMMON_URL}/scripts/shop/common_select.js"></script>
    <script src="${S_COMMON_URL}/scripts/qtip/jquery.qtip.min.js"></script>
    <script src="${S_URL}/static/scripts/shop.js"></script>
    <script src="${S_URL}/static/scripts/member.js"></script>
    <script charset="utf-8" id="dialog_js" src="${S_COMMON_URL}/scripts/dialog/dialog.js" type="text/javascript"></script>
    <link type="text/css" rel="stylesheet" href="${S_COMMON_URL}/scripts/dialog/dialog.css">
</head>
<body>
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>
<#include "../top.ftl"/>
<#include "../member_header.ftl"/>
<div id="container" class="wrapper">
    <div class="layout">
    <#include "set_sidebar.ftl"/>
        <div class="right-content">

            <div class="path">
                <div><a href="${S_URL}">我的商城</a><span>»</span>
                    <a href="${S_URL}/member/base_set.html">个人资料</a><span>»</span>修改密码</div>
            </div>

            <div class="main">
                <style type="text/css">
                    dl dd span {
                        display: inline-block;
                    }
                </style>

                <div class="wrap">
                <#include "tabmenu.ftl" />

                    <div class="ncu-form-style">
                        <form action="member/password.html?for=xml" name="password_form" id="password_form" method="post">
                            <input type="hidden" value="ok" name="form_submit">
                            <dl>
                                <dt class="required"><em class="pngFix"></em>您的密码：</dt>
                                <dd>
                                    <input type="password" id="orig_password" name="orig_password" class="text" maxlength="40">
                                    <label class="error" generated="true" for="orig_password"></label>
                                </dd>
                            </dl>
                            <dl>
                                <dt class="required"><em class="pngFix"></em>新密码：</dt>
                                <dd>
                                    <input type="password" id="new_password" name="new_password" class="password" maxlength="40">
                                    <label class="error" generated="true" for="new_password"></label>
                                </dd>
                            </dl>
                            <dl>
                                <dt class="required"><em class="pngFix"></em>确认密码：</dt>
                                <dd>
                                    <input type="password" id="confirm_password" name="confirm_password" class="password" maxlength="40">
                                    <label class="error" generated="true" for="confirm_password"></label>
                                </dd>
                            </dl>
                            <dl class="bottom">
                                <dt>&nbsp;</dt>
                                <dd>
                                    <input type="submit" value="确认提交" class="submit">
                                </dd>
                            </dl>
                        </form>
                    </div>
                    <script type="text/javascript">
                        $(function(){
                            $('#password_form').validate({
                                submitHandler:function(form){
                                    ajaxpost('password_form', '', '', 'onerror')
                                },
                                rules : {
                                    orig_password : {
                                        required : true
                                    },
                                    new_password : {
                                        required   : true,
                                        minlength  : 6,
                                        maxlength  : 20
                                    },
                                    confirm_password : {
                                        required   : true,
                                        equalTo    : '#new_password'
                                    }
                                },
                                messages : {
                                    orig_password : {
                                        required : '原始密码不能为空'
                                    },
                                    new_password  : {
                                        required   : '新密码不能为空',
                                        minlength  : '密码长度大于等于6位小于等于20位'
                                    },
                                    confirm_password : {
                                        required   : '确认密码不能为空',
                                        equalTo    : '新密码与确认密码不相同'
                                    }
                                }
                            });
                        });
                    </script>
                </div><!-- end wrap-->
            </div><!-- end main-->
        </div><!-- end right-content-->
    </div><!-- end container-->
<#include "../footer.ftl"/>
</body>

</html>