<#assign S_URL=request.contextPath />
<!DOCTYPE html>
<html>
<head>
    <meta content="IE=edge;chrome=1" http-equiv="X-UA-Compatible">
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <title>电商测试</title>

    <script src="${S_COMMON_URL}/scripts/jquery/jquery.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery/jquery-browser.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery/waypoints.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery/jquery.validation.js"></script>
    <script src="${S_COMMON_URL}/scripts/jquery-ui/jquery.ui.js"></script>
    <script src="${S_COMMON_URL}/scripts/utils/area_array.js"></script>
    <script src="${S_COMMON_URL}/scripts/shop/common.js"></script>
    <script src="${S_URL}/static/scripts/admincp.js"></script>
    <link id="cssfile2" type="text/css" rel="stylesheet" href="${S_URL}/static/styles/skin_0.css">
    <script type="text/javascript">
        SITEURL = '${S_URL}';
    </script>
</head>
<body>
<div id="append_parent"></div>
<div id="ajaxwaitid"></div>

<div class="page">
    <div class="fixed-bar">
        <div class="item-title">
            <h3>店铺分类</h3>
            <ul class="tab-base">
                <li><a href="${S_URL}/store_class/store_class"><span>管理</span></a></li>
                <li><a class="current" href="JavaScript:void(0);"><span>新增</span></a></li>
                <li><a href="#"><span>导出</span></a></li>
                <li><a href="#"><span>导入</span></a></li>
            </ul>
        </div>
    </div>
    <div class="fixed-empty"></div>
    <form method="post" id="store_class_form">
        <input type="hidden" value="ok" name="form_submit">
        <table class="table tb-type2">
            <tbody>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2"><label for="sc_name" class="validation">分类名称:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><input type="text" class="txt" id="sc_name" name="sc_name" value=""></td>
                <td class="vatop tips"></td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2"><label>上级分类:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><select id="sc_parent_id" name="sc_parent_id" class="valid">
                    <option value="0">请选择...</option>
                    <option value="4">&nbsp;&nbsp;服装鞋包</option>
                    <option value="5">&nbsp;&nbsp;3C数码</option>
                    <option value="6">&nbsp;&nbsp;美容护理</option>
                    <option value="7">&nbsp;&nbsp;家居用品</option>
                    <option value="8">&nbsp;&nbsp;食品/保健</option>
                    <option value="9">&nbsp;&nbsp;母婴用品</option>
                    <option value="10">&nbsp;&nbsp;文体/汽车</option>
                    <option value="1">&nbsp;&nbsp;珠宝/首饰</option>
                    <option value="11">&nbsp;&nbsp;收藏/爱好</option>
                    <option value="12">&nbsp;&nbsp;生活/服务</option>
                </select></td>
                <td class="vatop tips">如果选择上级分类，那么新增的分类则为被选择上级分类的子分类</td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2"><label for="sc_sort">排序:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><input type="text" class="txt" id="sc_sort" name="sc_sort" value="255"></td>
                <td class="vatop tips">数字范围为0~255，数字越小越靠前</td>
            </tr>
            </tbody>
            <tfoot>
            <tr class="tfoot">
                <td colspan="15"><a id="submitBtn" class="btn" href="JavaScript:void(0);"><span>提交</span></a></td>
            </tr>
            </tfoot>
        </table>
    </form>
</div>
<script>
    //按钮先执行验证再提交表单
    $(function(){$("#submitBtn").click(function(){
        if($("#store_class_form").valid()){
            $("#store_class_form").submit();
        }
    });
    });
    //
    $(document).ready(function(){
        $('#store_class_form').validate({
            errorPlacement: function(error, element){
                error.appendTo(element.parent().parent().prev().find('td:first'));
            },

            rules : {
                sc_name : {
                    required : true,
                    remote   : {
                        url :'index.php?act=store_class&amp;op=ajax&amp;branch=check_class_name',
                        type:'get',
                        data:{
                            sc_name : function(){
                                return $('#sc_name').val();
                            },
                            sc_parent_id : function() {
                                return $('#sc_parent_id').val();
                            },
                            sc_id : ''
                        }
                    }
                },
                sc_sort : {
                    number   : true
                }
            },
            messages : {
                sc_name : {
                    required : '分类名称不能为空',
                    remote   : '该分类名称已经存在了，请您换一个'
                },
                sc_sort  : {
                    number   : '分类排序仅能为数字'
                }
            }
        });
    });
</script>

</body></html>