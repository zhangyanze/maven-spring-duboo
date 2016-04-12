<#assign S_URL=request.contextPath />
<!DOCTYPE html>
<html>
<head>
    <meta content="IE=edge;chrome=1" http-equiv="X-UA-Compatible">
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <title>商品分类新增</title>

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
            <h3>商品分类</h3>
            <ul class="tab-base"><li><a href="index.php?act=goods_class&amp;op=goods_class"><span>管理</span></a></li><li><a class="current"><span>新增</span></a></li><li><a href="index.php?act=goods_class&amp;op=goods_class_export"><span>导出</span></a></li><li><a href="index.php?act=goods_class&amp;op=goods_class_import"><span>导入</span></a></li><li><a href="index.php?act=goods_class&amp;op=tag"><span>TAG管理</span></a></li></ul>    </div>
    </div>
    <div class="fixed-empty"></div>
    <form method="post" enctype="multipart/form-data" id="goods_class_form">
        <input type="hidden" value="ok" name="form_submit">
        <table class="table tb-type2">
            <tbody>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2"><label for="gc_name" class="validation">分类名称:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><input type="text" class="txt" maxlength="20" id="gc_name" name="gc_name" value=""></td>
                <td class="vatop tips"></td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td colspan="2"><label for="pic">分类图片:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><span class="type-file-box"><input type="text" class="type-file-text" id="textfield1" name="textfield">
            <input type="button" class="type-file-button" value="" id="button1" name="button">
            <input type="file" nc_type="change_pic" hidefocus="true" size="30" id="pic" class="type-file-file" name="pic">
            </span></td>
                <td class="vatop tips">只有第一级分类可以上传图片，建议用16px * 16px，超出后自动隐藏</td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2"><label for="parent_id">上级分类:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><select id="gc_parent_id" name="gc_parent_id">
                    <option value="0">请选择...</option>
                <#list P_GOODS_CLASS_LIST as goodsClass>
                    <option value="${goodsClass.gcId}">&nbsp;&nbsp;${goodsClass.gcName}</option>
                    <#if (goodsClass.children?size>0) >
                        <#list goodsClass.children as cGc>
                            <option value="${cGc.gcId}">&nbsp;&nbsp;&nbsp;&nbsp;${cGc.gcName}</option>
                        </#list>
                    </#if>
                </#list>
                    <option value="1">&nbsp;&nbsp;服饰鞋帽6</option>
                    <option value="1059">&nbsp;&nbsp;&nbsp;&nbsp;1</option>
                    <option value="4">&nbsp;&nbsp;&nbsp;&nbsp;女装</option>
                    <option value="5">&nbsp;&nbsp;&nbsp;&nbsp;男装</option>
                    <option value="6">&nbsp;&nbsp;&nbsp;&nbsp;内衣</option>
                    <option value="7">&nbsp;&nbsp;&nbsp;&nbsp;运动</option>
                    <option value="8">&nbsp;&nbsp;&nbsp;&nbsp;女鞋</option>
                    <option value="9">&nbsp;&nbsp;&nbsp;&nbsp;男鞋</option>
                    <option value="10">&nbsp;&nbsp;&nbsp;&nbsp;配饰</option>
                    <option value="11">&nbsp;&nbsp;&nbsp;&nbsp;童装</option>
                    <option value="2">&nbsp;&nbsp;礼品箱包</option>
                    <option value="151">&nbsp;&nbsp;&nbsp;&nbsp;潮流女包</option>
                    <option value="152">&nbsp;&nbsp;&nbsp;&nbsp;时尚男包</option>
                    <option value="153">&nbsp;&nbsp;&nbsp;&nbsp;功能箱包</option>
                    <option value="154">&nbsp;&nbsp;&nbsp;&nbsp;礼品</option>
                    <option value="155">&nbsp;&nbsp;&nbsp;&nbsp;奢侈品</option>
                    <option value="3">&nbsp;&nbsp;家居家装</option>
                    <option value="200">&nbsp;&nbsp;&nbsp;&nbsp;家纺</option>
                    <option value="201">&nbsp;&nbsp;&nbsp;&nbsp;灯具</option>
                    <option value="202">&nbsp;&nbsp;&nbsp;&nbsp;生活日用</option>
                    <option value="203">&nbsp;&nbsp;&nbsp;&nbsp;家装软饰</option>
                    <option value="204">&nbsp;&nbsp;&nbsp;&nbsp;清洁日用</option>
                    <option value="205">&nbsp;&nbsp;&nbsp;&nbsp;宠物生活</option>
                    <option value="256">&nbsp;&nbsp;数码办公</option>
                    <option value="258">&nbsp;&nbsp;&nbsp;&nbsp;手机配件</option>
                    <option value="259">&nbsp;&nbsp;&nbsp;&nbsp;摄影摄像</option>
                    <option value="260">&nbsp;&nbsp;&nbsp;&nbsp;数码配件</option>
                    <option value="261">&nbsp;&nbsp;&nbsp;&nbsp;时尚影音</option>
                    <option value="390">&nbsp;&nbsp;&nbsp;&nbsp;电脑整机</option>
                    <option value="391">&nbsp;&nbsp;&nbsp;&nbsp;电脑配件</option>
                    <option value="392">&nbsp;&nbsp;&nbsp;&nbsp;外设产品</option>
                    <option value="393">&nbsp;&nbsp;&nbsp;&nbsp;网络产品</option>
                    <option value="394">&nbsp;&nbsp;&nbsp;&nbsp;办公打印</option>
                    <option value="395">&nbsp;&nbsp;&nbsp;&nbsp;办公文仪</option>
                    <option value="1034">&nbsp;&nbsp;&nbsp;&nbsp;手机通讯</option>
                    <option value="308">&nbsp;&nbsp;家用电器</option>
                    <option value="309">&nbsp;&nbsp;&nbsp;&nbsp;大家电</option>
                    <option value="310">&nbsp;&nbsp;&nbsp;&nbsp;生活电器</option>
                    <option value="311">&nbsp;&nbsp;&nbsp;&nbsp;厨房电器</option>
                    <option value="312">&nbsp;&nbsp;&nbsp;&nbsp;个护健康</option>
                    <option value="313">&nbsp;&nbsp;&nbsp;&nbsp;五金家装</option>
                    <option value="470">&nbsp;&nbsp;个护化妆</option>
                    <option value="471">&nbsp;&nbsp;&nbsp;&nbsp;面部护理</option>
                    <option value="472">&nbsp;&nbsp;&nbsp;&nbsp;身体护理</option>
                    <option value="473">&nbsp;&nbsp;&nbsp;&nbsp;口腔护理</option>
                    <option value="474">&nbsp;&nbsp;&nbsp;&nbsp;女性护理</option>
                    <option value="475">&nbsp;&nbsp;&nbsp;&nbsp;男士护理</option>
                    <option value="476">&nbsp;&nbsp;&nbsp;&nbsp;魅力彩妆</option>
                    <option value="477">&nbsp;&nbsp;&nbsp;&nbsp;香水SPA</option>
                    <option value="530">&nbsp;&nbsp;珠宝手表</option>
                    <option value="531">&nbsp;&nbsp;&nbsp;&nbsp;时尚饰品</option>
                    <option value="532">&nbsp;&nbsp;&nbsp;&nbsp;纯金K金饰品</option>
                    <option value="533">&nbsp;&nbsp;&nbsp;&nbsp;金银投资</option>
                    <option value="534">&nbsp;&nbsp;&nbsp;&nbsp;银饰</option>
                    <option value="535">&nbsp;&nbsp;&nbsp;&nbsp;钻石饰品</option>
                    <option value="536">&nbsp;&nbsp;&nbsp;&nbsp;翡翠玉石</option>
                    <option value="537">&nbsp;&nbsp;&nbsp;&nbsp;水晶玛瑙</option>
                    <option value="538">&nbsp;&nbsp;&nbsp;&nbsp;宝石珍珠</option>
                    <option value="539">&nbsp;&nbsp;&nbsp;&nbsp;婚庆</option>
                    <option value="540">&nbsp;&nbsp;&nbsp;&nbsp;钟表手表</option>
                    <option value="593">&nbsp;&nbsp;食品饮料</option>
                    <option value="594">&nbsp;&nbsp;&nbsp;&nbsp;进口食品</option>
                    <option value="595">&nbsp;&nbsp;&nbsp;&nbsp;地方特产</option>
                    <option value="596">&nbsp;&nbsp;&nbsp;&nbsp;休闲食品</option>
                    <option value="597">&nbsp;&nbsp;&nbsp;&nbsp;粮油调味</option>
                    <option value="598">&nbsp;&nbsp;&nbsp;&nbsp;中外名酒</option>
                    <option value="599">&nbsp;&nbsp;&nbsp;&nbsp;饮料冲调</option>
                    <option value="600">&nbsp;&nbsp;&nbsp;&nbsp;营养健康</option>
                    <option value="601">&nbsp;&nbsp;&nbsp;&nbsp;亚健康调理</option>
                    <option value="602">&nbsp;&nbsp;&nbsp;&nbsp;健康礼品</option>
                    <option value="603">&nbsp;&nbsp;&nbsp;&nbsp;生鲜食品</option>
                    <option value="662">&nbsp;&nbsp;运动健康</option>
                    <option value="663">&nbsp;&nbsp;&nbsp;&nbsp;户外鞋服</option>
                    <option value="664">&nbsp;&nbsp;&nbsp;&nbsp;户外装备</option>
                    <option value="665">&nbsp;&nbsp;&nbsp;&nbsp;运动器械</option>
                    <option value="666">&nbsp;&nbsp;&nbsp;&nbsp;纤体瑜伽</option>
                    <option value="667">&nbsp;&nbsp;&nbsp;&nbsp;体育娱乐</option>
                    <option value="668">&nbsp;&nbsp;&nbsp;&nbsp;成人用品</option>
                    <option value="669">&nbsp;&nbsp;&nbsp;&nbsp;保健器械</option>
                    <option value="670">&nbsp;&nbsp;&nbsp;&nbsp;急救卫生</option>
                    <option value="730">&nbsp;&nbsp;汽车用品</option>
                    <option value="731">&nbsp;&nbsp;&nbsp;&nbsp;电子电器</option>
                    <option value="732">&nbsp;&nbsp;&nbsp;&nbsp;系统养护</option>
                    <option value="733">&nbsp;&nbsp;&nbsp;&nbsp;改装配件</option>
                    <option value="734">&nbsp;&nbsp;&nbsp;&nbsp;汽车美容</option>
                    <option value="735">&nbsp;&nbsp;&nbsp;&nbsp;座垫脚垫</option>
                    <option value="736">&nbsp;&nbsp;&nbsp;&nbsp;内饰精品</option>
                    <option value="737">&nbsp;&nbsp;&nbsp;&nbsp;安全自驾</option>
                    <option value="1054">&nbsp;&nbsp;&nbsp;&nbsp;整车</option>
                    <option value="825">&nbsp;&nbsp;玩具乐器</option>
                    <option value="826">&nbsp;&nbsp;&nbsp;&nbsp;适用年龄</option>
                    <option value="827">&nbsp;&nbsp;&nbsp;&nbsp;遥控/电动</option>
                    <option value="828">&nbsp;&nbsp;&nbsp;&nbsp;毛绒布艺</option>
                    <option value="829">&nbsp;&nbsp;&nbsp;&nbsp;娃娃玩具</option>
                    <option value="830">&nbsp;&nbsp;&nbsp;&nbsp;模型玩具</option>
                    <option value="831">&nbsp;&nbsp;&nbsp;&nbsp;健身玩具</option>
                    <option value="832">&nbsp;&nbsp;&nbsp;&nbsp;动漫玩具</option>
                    <option value="833">&nbsp;&nbsp;&nbsp;&nbsp;益智玩具</option>
                    <option value="834">&nbsp;&nbsp;&nbsp;&nbsp;积木拼插</option>
                    <option value="835">&nbsp;&nbsp;&nbsp;&nbsp;DIY玩具</option>
                    <option value="836">&nbsp;&nbsp;&nbsp;&nbsp;创意减压</option>
                    <option value="837">&nbsp;&nbsp;&nbsp;&nbsp;乐器相关</option>
                    <option value="888">&nbsp;&nbsp;厨具</option>
                    <option value="889">&nbsp;&nbsp;&nbsp;&nbsp;烹饪锅具</option>
                    <option value="890">&nbsp;&nbsp;&nbsp;&nbsp;刀剪菜板</option>
                    <option value="891">&nbsp;&nbsp;&nbsp;&nbsp;收纳保鲜</option>
                    <option value="892">&nbsp;&nbsp;&nbsp;&nbsp;水具酒具</option>
                    <option value="893">&nbsp;&nbsp;&nbsp;&nbsp;餐具</option>
                    <option value="935">&nbsp;&nbsp;&nbsp;&nbsp;茶具/咖啡具</option>
                    <option value="959">&nbsp;&nbsp;母婴用品</option>
                    <option value="960">&nbsp;&nbsp;&nbsp;&nbsp;奶粉</option>
                    <option value="961">&nbsp;&nbsp;&nbsp;&nbsp;营养辅食</option>
                    <option value="962">&nbsp;&nbsp;&nbsp;&nbsp;尿裤湿巾</option>
                    <option value="963">&nbsp;&nbsp;&nbsp;&nbsp;喂养用品</option>
                    <option value="964">&nbsp;&nbsp;&nbsp;&nbsp;洗护用品</option>
                    <option value="965">&nbsp;&nbsp;&nbsp;&nbsp;童车童床</option>
                    <option value="966">&nbsp;&nbsp;&nbsp;&nbsp;服饰寝居</option>
                    <option value="967">&nbsp;&nbsp;&nbsp;&nbsp;妈妈专区</option>
                    <option value="1037">&nbsp;&nbsp;虚拟充值</option>
                    <option value="1041">&nbsp;&nbsp;&nbsp;&nbsp;充值</option>
                    <option value="1042">&nbsp;&nbsp;&nbsp;&nbsp;游戏</option>
                    <option value="1043">&nbsp;&nbsp;&nbsp;&nbsp;票务</option>
                </select></td>
                <td class="vatop tips">如果选择上级分类，那么新增的分类则为被选择上级分类的子分类</td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td id="gcategory" class="required" colspan="2">
                    <label for="gc_name">类型:</label>
                    <select class="class-select valid">
                        <option value="0">请选择...</option>
                        <#list P_GOODS_CLASS_LIST as goodsClass>
                            <option value="${goodsClass.gcId}">${goodsClass.gcName}</option>
                        </#list>
                    </select>
                    （快捷定位）          </td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><input type="hidden" value="" id="t_name" name="t_name">
                    <div id="type_div" style="position:relative; max-height:240px; overflow: hidden;" class="ps-container">
                        <div>
                            <dl style="margin:10px 0;">
                                <dd style="display:inline-block; margin-right:10px;">
                                    <input type="radio" checked="checked" value="0" name="t_id">
                                    <span>无类型</span>
                                </dd>
                            </dl>
                            <#list P_GOODS_TYPE_LIST as goodsType>
                            <dl style="margin:10px 0;"><dt style="font-weight:600;" id="type_dt_14">${goodsType.className}</dt>
                                <dd style="display:inline-block; margin-right:10px;">
                                    <input type="radio" value="${goodsType.typeId}" name="t_id">
                                    <span>${goodsType.typeName}</span>
                                </dd>
                            </dl>
                            </#list>
                        </div><div class="ps-scrollbar-x" style="left: 0px; bottom: 3px; width: 0px;"></div><div class="ps-scrollbar-y" style="top: 0px; right: 3px; height: 0px;"></div></div>
                </td>
                <td class="vatop tips">如果当前下拉选项中没有适合的类型，可以去<a href="JavaScript:void(0);" onclick="window.parent.openItem('type,type,goods')">类型管理</a>功能中添加新的类型</td>
            </tr>
            <tr>
                <td class="required" colspan="2"><label>排序:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><input type="text" class="txt" id="gc_sort" name="gc_sort" value="0"></td>
                <td class="vatop tips">数字范围为0~255，数字越小越靠前</td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <td colspan="2"><a id="submitBtn" class="btn" href="JavaScript:void(0);"><span>提交</span></a></td>
            </tr>
            </tfoot>
        </table>
    </form>
</div>
<script charset="utf-8" src="http://localhost/shopnc/data/resource/js/common_select.js" type="text/javascript"></script>
<script src="http://localhost/shopnc/data/resource/js/perfect-scrollbar.min.js" type="text/javascript"></script>
<script src="http://localhost/shopnc/data/resource/js/jquery.mousewheel.js" type="text/javascript"></script>
<script>
    //按钮先执行验证再提交表单
    $(function(){

        $('#type_div').perfectScrollbar();

        $("#submitBtn").click(function(){
            if($("#goods_class_form").valid()){
                $("#goods_class_form").submit();
            }
        });

        $("#pic").change(function(){
            $("#textfield1").val($(this).val());
        });
        $('input[type="radio"][name="t_id"]').click(function(){
            if($(this).val() == '0'){
                $('#t_name').val('');
            }else{
                $('#t_name').val($(this).next('span').html());
            }
        });

        $('#goods_class_form').validate({
            errorPlacement: function(error, element){
                error.appendTo(element.parent().parent().prev().find('td:first'));
            },
            rules : {
                gc_name : {
                    required : true,
                    remote   : {
                        url :'index.php?act=goods_class&amp;op=ajax&amp;branch=check_class_name',
                        type:'get',
                        data:{
                            gc_name : function(){
                                return $('#gc_name').val();
                            },
                            gc_parent_id : function() {
                                return $('#gc_parent_id').val();
                            },
                            gc_id : ''
                        }
                    }
                },
                gc_sort : {
                    number   : true
                }
            },
            messages : {
                gc_name : {
                    required : '分类名称不能为空',
                    remote   : '该分类名称已经存在了，请您换一个'
                },
                gc_sort  : {
                    number   : '分类排序仅能为数字'
                }
            }
        });

        // 所属分类
        $("#gc_parent_id").live('change',function(){
            type_scroll($(this));
        });
        // 类型搜索
        $("#gcategory &gt; select").live('change',function(){
            type_scroll($(this));
        });
    });
    var typeScroll = 0;
    function type_scroll(o){
        var id = o.val();
        if(!$('#type_dt_'+id).is('dt')){
            return false;
        }
        $('#type_div').scrollTop(-typeScroll);
        var sp_top = $('#type_dt_'+id).offset().top;
        var div_top = $('#type_div').offset().top;
        $('#type_div').scrollTop(sp_top-div_top);
        typeScroll = sp_top-div_top;
    }
    gcategoryInit('gcategory');
</script>
</body>

</html>