<#assign P_CURRENT_TOP='goods' />
<#assign P_NAV1="商家管理中心" />
<#assign P_NAV2="商品" />
<#assign P_NAV3="商品发布" />
<#assign P_CURRENT_OP="GoodsAdd" />
<#assign P_STEP=2 />
<@override name="main">
<script src="${S_URL}/static/scripts/goods/store_goods_add.step2.js"></script>
<div class="ncsc-layout wrapper">
    <#include "layout_goods.ftl"/>
    <div class="ncsc-layout-right" id="layoutRight">
        <#include "../nav.ftl"/>
        <div id="mainContent" class="main-content">
            <#include "setp.ftl" />


        </div>
    </div>
</div>
</@override>

<@extends name="../framework.ftl"/>