<#assign S_URL=request.contextPath />
<!DOCTYPE html>
<html>
<head>
    <meta content="IE=edge;chrome=1" http-equiv="X-UA-Compatible">
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <title>文章分类</title>

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
            <h3>文章管理</h3>
            <ul class="tab-base">
                <li><a href="#"><span>管理</span></a></li>
                <li><a class="current" href="JavaScript:void(0);"><span>新增</span></a></li>
            </ul>
        </div>
    </div>
    <div class="fixed-empty"></div>
    <form name="articleForm" method="post" id="article_form">
        <table class="table tb-type2 nobdb">
            <tbody>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2"><label class="validation">标题:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><input type="text" class="txt" id="article_title" name="article_title" value=""></td>
                <td class="vatop tips"></td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2"><label for="cate_id" class="validation">所属分类:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><select id="ac_id" name="ac_id">
                    <option value="">请选择...</option>
                <#list P_CLASS_LIST as articleClass>
                    <option value="${articleClass.classId}" >&nbsp;&nbsp;${articleClass.className}</option>
                    <#if (articleClass.children?size>0) >
                        <#list articleClass.children as cGc>
                            <option value="${cGc.classId}" >&nbsp;&nbsp;&nbsp;&nbsp;${cGc.className}</option>
                        </#list>
                    </#if>
                </#list>
                </select></td>
                <td class="vatop tips"></td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2"><label for="articleForm">链接:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><input type="text" class="txt" id="article_url" name="article_url" value=""></td>
                <td class="vatop tips">当填写"链接"后点击文章标题将直接跳转至链接地址，不显示文章内容。链接格式请以http://开头</td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2"><label>显示:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform onoff"><label class="cb-enable selected" for="article_show1"><span>是</span></label>
                    <label class="cb-disable" for="article_show0"><span>否</span></label>
                    <input type="radio" value="1" checked="checked" name="article_show" id="article_show1">
                    <input type="radio" value="0" name="article_show" id="article_show0"></td>
                <td class="vatop tips"></td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2">排序:
                </td></tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform"><input type="text" class="txt" id="article_sort" name="article_sort" value="255"></td>
                <td class="vatop tips"></td>
            </tr>
            <tr>
                <td class="required" colspan="2"><label class="validation">文章内容:</label></td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="vatop rowform" colspan="2">
                    <textarea style="width: 700px; height: 300px; visibility: hidden; display: none;" name="article_content" id="article_content"></textarea>
                    <script charset="utf-8" src="${S_COMMON_URL}/scripts/kindeditor/kindeditor-min.js"></script>
                    <script charset="utf-8" src="${S_COMMON_URL}/scripts/kindeditor/lang/zh_CN.js"></script>
                    <script>
                        var KE;
                        KindEditor.ready(function(K) {
                            KE = K.create("textarea[name='article_content']", {
                                items : ['source', '|', 'fullscreen', 'undo', 'redo', 'print', 'cut', 'copy', 'paste',
                                    'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
                                    'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
                                    'superscript', '|', 'selectall', 'clearhtml','quickformat','|',
                                    'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
                                    'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 'table', 'hr', 'emoticons', 'link', 'unlink', '|', 'about'],
                                cssPath : "${S_COMMON_URL}/scripts/kindeditor/themes/default/default.css",
                                allowImageUpload : true,
                                allowFlashUpload : false,
                                allowMediaUpload : false,
                                allowFileManager : false,
                                syncType:"form",
                                afterCreate : function() {
                                    var self = this;
                                    self.sync();
                                },
                                afterChange : function() {
                                    var self = this;
                                    self.sync();
                                },
                                afterBlur : function() {
                                    var self = this;
                                    self.sync();
                                }
                            });
                            KE.appendHtml = function(id,val) {
                                this.html(this.html() + val);
                                if (this.isCreated) {
                                    var cmd = this.cmd;
                                    cmd.range.selectNodeContents(cmd.doc.body).collapse(false);
                                    cmd.select();
                                }
                                return this;
                            }
                        });
                    </script>
                </td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2">图片上传:</td>
            </tr>
            <tr class="noborder" style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td id="divComUploadContainer" colspan="3"><input type="file" name="fileupload" id="fileupload" multiple="multiple"></td>
            </tr>
            <tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td class="required" colspan="2">已传图片:</td>
            </tr><tr style="background: rgb(255, 255, 255) none repeat scroll 0% 0%;">
                <td colspan="2"><ul class="thumblists" id="thumbnails">
                </ul><div class="tdare">

                </div></td>
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
<script charset="utf-8" src="${S_COMMON_URL}/scripts/fileupload/jquery.iframe-transport.js" type="text/javascript"></script>
<script charset="utf-8" src="${S_COMMON_URL}/scripts/fileupload/jquery.ui.widget.js" type="text/javascript"></script>
<script charset="utf-8" src="${S_COMMON_URL}/scripts/fileupload/jquery.fileupload.js" type="text/javascript"></script>
<script>
    //按钮先执行验证再提交表单
    $(function(){$("#submitBtn").click(function(){
        if($("#article_form").valid()){
            $("#article_form").submit();
        }
    });
    });
    //
    $(document).ready(function(){
        $('#article_form').validate({
            errorPlacement: function(error, element){
                error.appendTo(element.parent().parent().prev().find('td:first'));
            },
            rules : {
                article_title : {
                    required   : true
                },
                ac_id : {
                    required   : true
                },
                article_url : {
                    url : true
                },
                article_content : {
                    required   : true
                },
                article_sort : {
                    number   : true
                }
            },
            messages : {
                article_title : {
                    required   : '文章标题不能为空'
                },
                ac_id : {
                    required   : '文章分类不能为空'
                },
                article_url : {
                    url : '链接格式不正确'
                },
                article_content : {
                    required   : '文章内容不能为空'
                },
                article_sort  : {
                    number   : '文章排序仅能为数字'
                }
            }
        });
        // 图片上传
        $('#fileupload').each(function(){
            $(this).fileupload({
                dataType: 'json',
                url: 'article_pic_upload',
                done: function (e,data) {
                    if(data != 'error'){
                        add_uploadedfile(data.result);
                    }
                }
            });
        });
    });


    function add_uploadedfile(file_data)
    {
        var newImg = '<li id="' + file_data.file_id + '" class="picture"><input type="hidden" name="file_id" value="' + file_data.file_id + '" /><div class="size-64x64"><span class="thumb"><i></i><img src="${S_URL}/att?path=' + file_data.file_name + '" alt="' + file_data.file_name + '" width="64px" height="64px"/></span></div><p><span><a href="javascript:insert_editor(\'${S_URL}/att?path=' + file_data.file_name + '\');">插入</a></span><span><a href="javascript:del_file_upload(' + file_data.file_id + ');">删除</a></span></p></li>';
        $('#thumbnails').prepend(newImg);
    }
    function insert_editor(file_path){
        KE.appendHtml('article_content', '<img src="'+ file_path + '" alt="'+ file_path + '">');
    }
    function del_file_upload(file_id)
    {
        if(!window.confirm('您确定要删除吗?')){
            return;
        }
        $.getJSON('index.php?act=article&amp;op=ajax&amp;branch=del_file_upload&amp;file_id=' + file_id, function(result){
            if(result){
                $('#' + file_id).remove();
            }else{
                alert('删除失败');
            }
        });
    }


</script>
</body>
</html>