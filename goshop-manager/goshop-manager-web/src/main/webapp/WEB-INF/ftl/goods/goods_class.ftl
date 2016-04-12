<#assign S_URL=request.contextPath />
<!DOCTYPE html>
<html>
<head>
    <meta content="IE=edge;chrome=1" http-equiv="X-UA-Compatible">
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <title>商品分类列表</title>

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
            <ul class="tab-base">
                <li><a class="current"><span>管理</span></a></li>
                <li><a href="${S_URL}/goods_class/save"><span>新增</span></a></li>
                <li><a href="#"><span>导出</span></a></li>
                <li><a href="#"><span>导入</span></a></li>
                <li><a href="#"><span>TAG管理</span></a></li>
            </ul>
        </div>
    </div>
    <div class="fixed-empty"></div>
    <table id="prompt" class="table tb-type2">
        <tbody>
        <tr class="space odd" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
            <th colspan="12" class="nobg"><div class="title"><h5>操作提示</h5><span class="arrow"></span></div></th>
        </tr>
        <tr class="odd" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
            <td>
                <ul>
                    <li>当店主添加商品时可选择商品分类，用户可根据分类查询商品列表</li>
                    <li>点击分类名前“+”符号，显示当前分类的下级分类</li>
                    <li><a>对分类作任何更改后，都需要到 设置 -&gt; 清理缓存 清理商品分类，新的设置才会生效</a></li>
                </ul></td>
        </tr>
        </tbody>
    </table>
    <form method="post">
        <input type="hidden" value="ok" name="form_submit">
        <input type="hidden" value="" id="submit_type" name="submit_type">
        <table class="table tb-type2">
            <thead>
            <tr class="thead">
                <th></th>
                <th>排序</th>
                <th>分类名称</th>
                <th>类型</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr class="hover edit" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="w48"><input type="checkbox" class="checkitem" value="1" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="1">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="1" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable" nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="1" required="1" title="可编辑">服饰鞋帽6</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=1" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=1">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=1';">删除</a></td>
            </tr>
            <tr class="hover edit" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="w48"><input type="checkbox" class="checkitem" value="2" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="2">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="2" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable" nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="2" required="1" title="可编辑">礼品箱包</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=2" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=2">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=2';">删除</a></td>
            </tr>
            <tr class="hover edit" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="w48"><input type="checkbox" class="checkitem" value="3" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="3">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="3" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable" nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="3" required="1" title="可编辑">家居家装</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=3" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=3">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=3';">删除</a></td>
            </tr>
            <tr class="hover edit" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="w48"><input type="checkbox" class="checkitem" value="256" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="256">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="256" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable" nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="256" required="1" title="可编辑">数码办公</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=256" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=256">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=256';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="308" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="308">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="308" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="308" required="1" title="可编辑">家用电器</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=308" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=308">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=308';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="470" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="470">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="470" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="470" required="1" title="可编辑">个护化妆</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=470" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=470">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=470';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="530" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="530">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="530" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="530" required="1" title="可编辑">珠宝手表</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=530" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=530">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=530';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="593" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="593">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="593" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="593" required="1" title="可编辑">食品饮料</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=593" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td>食品通用</td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=593">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=593';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="662" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="662">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="662" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="662" required="1" title="可编辑">运动健康</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=662" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=662">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=662';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="730" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="730">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="730" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="730" required="1" title="可编辑">汽车用品</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=730" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=730">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=730';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="825" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="825">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="825" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="825" required="1" title="可编辑">玩具乐器</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=825" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=825">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=825';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="888" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="888">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="888" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="888" required="1" title="可编辑">厨具</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=888" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=888">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=888';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="959" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="959">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="959" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="959" required="1" title="可编辑">母婴用品</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=959" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=959">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=959';">删除</a></td>
            </tr>
            <tr class="hover edit">
                <td class="w48"><input type="checkbox" class="checkitem" value="1037" name="check_gc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="1037">
                </td>
                <td class="w48 sort"><span class="editable " nc_type="inline_edit" fieldname="gc_sort" fieldid="1037" datatype="number" ajax_branch="goods_class_sort" title="可编辑">255</span></td>
                <td class="w50pre name">
                    <span class="editable " nc_type="inline_edit" fieldname="gc_name" ajax_branch="goods_class_name" fieldid="1037" required="1" title="可编辑">虚拟充值</span>
                    <a href="index.php?act=goods_class&amp;op=goods_class_add&amp;gc_parent_id=1037" class="btn-add-nofloat marginleft"><span>新增下级</span></a>
                </td>
                <td></td>
                <td class="w84"><a href="index.php?act=goods_class&amp;op=goods_class_edit&amp;gc_id=1037">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=goods_class&amp;op=goods_class_del&amp;gc_id=1037';">删除</a></td>
            </tr>
            </tbody>
            <tfoot>
            <tr class="tfoot">
                <td><input type="checkbox" id="checkall_2" class="checkall"></td>
                <td colspan="15" id="batchAction"><span class="all_checkbox">
            <label for="checkall_2">全选</label>
            </span>&nbsp;&nbsp;<a onclick="if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗')){$('#submit_type').val('del');$('form:first').submit();}" class="btn" href="JavaScript:void(0);"><span>删除</span></a>
                </td>
            </tr>
            </tfoot>
        </table>
    </form>
</div>
<script charset="utf-8" src="http://localhost/shopnc/data/resource/js/jquery.edit.js" type="text/javascript"></script>
<script charset="utf-8" src="http://localhost/shopnc/data/resource/js/jquery.goods_class.js" type="text/javascript"></script>

</body>

</html>