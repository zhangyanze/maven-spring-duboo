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
                    <a href="${S_URL}/member/base_set.html">个人资料</a><span>»</span>修改头像</div>
            </div>

            <div class="main">
                <style type="text/css">
                    dl dd span {
                        display: inline-block;
                    }
                </style>

                <div class="wrap">
                <#include "tabmenu.ftl" />

                    <form method="post" id="form_avaster" enctype="multipart/form-data" action="upload.html">
                        <div class="ncu-form-style">
                            <dl>
                                <dt>头像预览：</dt>
                                <dd>
                                    <div class="member-avatar-thumb"><img nc_type="avatar" alt="" src="<#if P_MEMBER.memberAvatar??>${S_URL}/att.html?path=${P_MEMBER.memberAvatar}<#else>${S_COMMON_URL}/images/default_user_portrait.gif</#if>"></div>
                                    <p class="hint mt5">完善个人信息资料，上传头像图片有助于您结识更多的朋友。<br><span style="color:orange;">头像默认尺寸为120x120像素，请根据系统操作提示进行裁剪并生效。</span></p>
                                </dd>
                            </dl>
                            <dl>
                                <dt>更换头像：</dt>
                                <dd>
                                    <div class="upload-btn"> <a href="javascript:void(0);"> <span>
            <input type="file" maxlength="0" hidefocus="true" size="1" class="file" file_id="0" multiple="" id="pic" name="pic">
            </span>
                                        <div class="upload-button">图片上传</div>
                                        <input type="button" onclick="submit_form($(this))" value="&nbsp;" style="display:none" id="submit_button">
                                    </a></div>
                                </dd>
                            </dl>
                        </div>
                    </form>
                    <script type="text/javascript">
                        $(function(){
                            $('#pic').change(function(){
                                var filepatd=$(this).val();
                                var extStart=filepatd.lastIndexOf(".");
                                var ext=filepatd.substring(extStart,filepatd.lengtd).toUpperCase();
                                if(ext!=".PNG"&&ext!=".GIF"&&ext!=".JPG"&&ext!=".JPEG"){
                                    alert("file type error");
                                    $(this).attr('value','');
                                    return false;
                                }
                                if ($(this).val() == '') return false;
                                $("#form_avaster").submit();
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