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
    <script src="${S_COMMON_URL}/scripts/jquery.Jcrop/jquery.Jcrop.js" type="text/javascript"></script>
    <link id="cssfile2" type="text/css" rel="stylesheet" href="${S_COMMON_URL}/scripts/jquery.Jcrop/jquery.Jcrop.min.css">

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

                    <form method="post" id="form_cut" action="avatar.html">
                        <input type="hidden" value="ok" name="form_submit">
                        <input type="hidden" name="x1" id="x1" >
                        <input type="hidden" name="x2" id="x2" >
                        <input type="hidden" name="w" id="w" >
                        <input type="hidden" name="y1" id="y1">
                        <input type="hidden" name="y2" id="y2" >
                        <input type="hidden" name="h" id="h" >
                        <input type="hidden" value="${P_USER_IMAGE}" name="newfile" id="newfile">
                        <div class="pic-cut-120">
                            <div class="work-title">工作区域</div>
                            <div class="work-layer">
                                <p><img src="${S_URL}/att.html?path=${P_USER_IMAGE}" id="nccropbox" /></p>
                            </div>
                            <div class="thumb-title">裁切预览</div>
                            <div class="thumb-layer">
                                <p><img src="${S_URL}/att.html?path=${P_USER_IMAGE}" id="preview" ></p>
                            </div>
                            <div class="cut-help">
                                <h4>操作帮助</h4>
                                <p>请在工作区域放大缩小及移动选取框，选择要裁剪的范围，裁切宽高比例固定；裁切后的效果为右侧预览图所显示；保存提交后生效。</p>
                            </div>
                            <div class="cut-btn">
                                <input type="button" value="提交" class="submit" id="ncsubmit">
                            </div>
                        </div>
                    </form>
                    <script type="text/javascript">
                        $(function(){
                            function showPreview(coords)
                            {
                                if (parseInt(coords.w) > 0){
                                    var rx = 120 / coords.w;
                                    var ry = 120 / coords.h;
                                    $('#preview').css({
                                        width: Math.round(rx * ${P_IMAGE_WIDTH}) + 'px',
                                        height: Math.round(ry * ${P_IMAGE_HEIGHT}) + 'px',
                                        marginLeft: '-' + Math.round(rx * coords.x) + 'px',
                                        marginTop: '-' + Math.round(ry * coords.y) + 'px'
                                    });
                                }
                                $('#x1').val(coords.x);
                                $('#y1').val(coords.y);
                                $('#x2').val(coords.x2);
                                $('#y2').val(coords.y2);
                                $('#w').val(coords.w);
                                $('#h').val(coords.h);
                            }
                            $('#nccropbox').Jcrop({
                                aspectRatio:1,
                                setSelect: [ 0, 0, 120, 120 ],
                                minSize:[50, 50],
                                allowSelect:0,
                                onChange: showPreview,
                                onSelect: showPreview
                            });
                            $('#ncsubmit').click(function() {
                                var x1 = $('#x1').val();
                                var y1 = $('#y1').val();
                                var x2 = $('#x2').val();
                                var y2 = $('#y2').val();
                                var w = $('#w').val();
                                var h = $('#h').val();
                                if(x1=="" || y1=="" || x2=="" || y2=="" || w=="" || h==""){
                                    alert("You must make a selection first");
                                    return false;
                                }else{
                                    $('#form_cut').submit();
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