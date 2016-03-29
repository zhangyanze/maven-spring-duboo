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
                <li><a class="current" href="JavaScript:void(0);"><span>管理</span></a></li>
                <li><a href="${S_URL}/store_class/add_page"><span>新增</span></a></li>
                <li><a href="#"><span>导出</span></a></li>
                <li><a href="#"><span>导入</span></a></li>
            </ul>
        </div>
    </div>
    <div class="fixed-empty"></div>
    <table id="prompt" class="table tb-type2">
        <tbody>
        <tr class="space odd" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
            <th class="nobg" colspan="12"><div class="title">
                <h5>操作提示</h5>
                <span class="arrow"></span></div></th>
        </tr>
        <tr class="odd" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
            <td><ul>
                <li>在会员开通店铺时，可指定店铺分类</li>
                <li>在店铺列表页，可以通过选择店铺分类查询店铺列表,点击分类名前“+”符号，显示当前分类的下级分类</li>
                <li><a>提交保存后，需要到 工具 -&gt; 清理缓存 清理店铺分类，新的设置才会生效</a></li>
            </ul></td>
        </tr>
        </tbody>
    </table>
    <form method="post">
        <input type="hidden" value="ok" name="form_submit">
        <table class="table tb-type2 nobdb">
            <thead>
            <tr class="thead">
                <th><input type="checkbox" id="checkall_1" class="checkall"></th>
                <th>排序</th>
                <th>分类名称</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr class="hover edit" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="w36"><input type="checkbox" class="checkitem" value="4" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="4">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="4" datatype="number" ajax_branch="store_class_sort" title="可编辑">1</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="4" required="1" title="分类名称">服装鞋包</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=4" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=4">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=4';">删除</a> </span></td>
            </tr>
            <tr class="hover edit" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="w36"><input type="checkbox" class="checkitem" value="5" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="5">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="5" datatype="number" ajax_branch="store_class_sort" title="可编辑">2</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="5" required="1" title="分类名称">3C数码</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=5" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=5">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=5';">删除</a> </span></td>
            </tr>
            <tr class="hover edit" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="w36"><input type="checkbox" class="checkitem" value="6" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="6">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="6" datatype="number" ajax_branch="store_class_sort" title="可编辑">3</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="6" required="1" title="分类名称">美容护理</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=6" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=6">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=6';">删除</a> </span></td>
            </tr>
            <tr class="hover edit">
                <td class="w36"><input type="checkbox" class="checkitem" value="7" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="7">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="7" datatype="number" ajax_branch="store_class_sort" title="可编辑">4</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="7" required="1" title="分类名称">家居用品</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=7" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=7">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=7';">删除</a> </span></td>
            </tr>
            <tr class="hover edit">
                <td class="w36"><input type="checkbox" class="checkitem" value="8" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="8">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="8" datatype="number" ajax_branch="store_class_sort" title="可编辑">5</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="8" required="1" title="分类名称">食品/保健</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=8" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=8">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=8';">删除</a> </span></td>
            </tr>
            <tr class="hover edit" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="w36"><input type="checkbox" class="checkitem" value="9" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="9">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="9" datatype="number" ajax_branch="store_class_sort" title="可编辑">6</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="9" required="1" title="分类名称">母婴用品</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=9" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=9">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=9';">删除</a> </span></td>
            </tr>
            <tr class="hover edit" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="w36"><input type="checkbox" class="checkitem" value="10" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="10">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="10" datatype="number" ajax_branch="store_class_sort" title="可编辑">7</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="10" required="1" title="分类名称">文体/汽车</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=10" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=10">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=10';">删除</a> </span></td>
            </tr>
            <tr class="hover edit">
                <td class="w36"><input type="checkbox" class="checkitem" value="1" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="1">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="1" datatype="number" ajax_branch="store_class_sort" title="可编辑">8</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="1" required="1" title="分类名称">珠宝/首饰</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=1" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=1">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=1';">删除</a> </span></td>
            </tr>
            <tr class="hover edit">
                <td class="w36"><input type="checkbox" class="checkitem" value="11" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="11">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="11" datatype="number" ajax_branch="store_class_sort" title="可编辑">9</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="11" required="1" title="分类名称">收藏/爱好</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=11" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=11">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=11';">删除</a> </span></td>
            </tr>
            <tr class="hover edit">
                <td class="w36"><input type="checkbox" class="checkitem" value="12" name="check_sc_id[]">
                    <img src="http://localhost/shopnc/admin/templates/default/images/tv-expandable.gif" nc_type="flex" status="open" fieldid="12">
                </td>
                <td class="w48 sort"><span class="editable" nc_type="inline_edit" fieldname="sc_sort" fieldid="12" datatype="number" ajax_branch="store_class_sort" title="可编辑">10</span></td>
                <td class="name">
                    <span class="node_name editable" nc_type="inline_edit" fieldname="sc_name" ajax_branch="store_class_name" fieldid="12" required="1" title="分类名称">生活/服务</span>
                    <a href="index.php?act=store_class&amp;op=store_class_add&amp;sc_parent_id=12" class="btn-add-nofloat marginleft">新增下级</a>
                </td>
                <td class="w84"><span><a href="index.php?act=store_class&amp;op=store_class_edit&amp;sc_id=12">编辑</a> | <a href="javascript:if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗'))window.location = 'index.php?act=store_class&amp;op=store_class_del&amp;sc_id=12';">删除</a> </span></td>
            </tr>
            </tbody>
            <tfoot>
            <tr id="batchAction">
                <td><input type="checkbox" id="checkallBottom" class="checkall"></td>
                <td id="dataFuncs" colspan="16"><label for="checkallBottom">全选</label>
                    &nbsp;&nbsp;<a onclick="if(confirm('删除该分类将会同时删除该分类的所有下级分类，您确定要删除吗')){$('form:first').submit();}" class="btn" href="JavaScript:void(0);"><span>删除</span></a></td>
            </tr>
            </tfoot>
        </table>
    </form>
</div>
<script charset="utf-8" src="${S_URL}/static/scripts/jquery.edit.js" type="text/javascript"></script>
<script charset="utf-8" src="${S_URL}/static/scripts/jquery.store_class.js" type="text/javascript"></script>
</body></html>