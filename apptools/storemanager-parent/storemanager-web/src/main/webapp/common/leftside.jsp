<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar display" id="sidebar">
    <script type="text/javascript">
        try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <i class="icon-signal"></i>
            </button>

            <button class="btn btn-info">
                <i class="icon-pencil"></i>
            </button>

            <button class="btn btn-warning">
                <i class="icon-group"></i>
            </button>

            <button class="btn btn-danger">
                <i class="icon-cogs"></i>
            </button>
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div><!-- #sidebar-shortcuts -->

    <ul class="nav nav-list">

        <c:choose>
            <c:when test="${basevo.leftsideIdentifier== 'main'}">
                <li class="active">
            </c:when>
            <c:otherwise>
                <li>
            </c:otherwise>
        </c:choose>
            <a href="${rc.contextPath}/">
                <i class="icon-dashboard"></i>
                <span class="menu-text"> DashBoard </span>
            </a>
        </li>

        <li>
            <a href="#" class="dropdown-toggle">
                <i class="icon-text-width"></i>
                <span class="menu-text"> 元数据定义 </span>

                <b class="arrow icon-angle-down"></b>
            </a>

            <c:choose>
                <c:when test="${basevo.leftsideIdentifier== 'left_spec_attr_define' || basevo.leftsideIdentifier== 'left_product_define'}">
                    <ul class="submenu" style="display: block;">
                </c:when>
                <c:otherwise>
                    <ul class="submenu">
                </c:otherwise>
            </c:choose>
                <c:choose>
                    <c:when test="${basevo.leftsideIdentifier== 'left_product_define'}">
                        <li class="active">
                    </c:when>
                    <c:otherwise>
                        <li>
                    </c:otherwise>
                </c:choose>
                    <a href="${rc.contextPath}/metaDefine/productDefine">
                        <i class="icon-double-angle-right"></i>
                        产品定义
                    </a>
                </li>

                <c:choose>
                    <c:when test="${basevo.leftsideIdentifier== 'left_spec_attr_define'}">
                        <li class="active">
                    </c:when>
                    <c:otherwise>
                        <li>
                    </c:otherwise>
                </c:choose>
                    <a href="${rc.contextPath}/metaDefine/specAttrDefine">
                        <i class="icon-double-angle-right"></i>
                        特殊类型定义
                    </a>
                </li>
            </ul>
        </li>

            <c:choose>
            <c:when test="${basevo.leftsideIdentifier== 'product_purchase'}">
            <li class="active">
                </c:when>
                <c:otherwise>
            <li>
                </c:otherwise>
                </c:choose>
            <a href="${rc.contextPath}/productpurchase/purchaseQueryLikeKeys?keys=&activePage=1&startNum=1&pageSize=10" class="dropdown-toggle">
                <i class="ace-icon glyphicon glyphicon-book"></i>
                <span class="menu-text">采购列表</span>
            </a>
        </li>

            <c:choose>
            <c:when test="${basevo.leftsideIdentifier== 'product_in_store'}">
            <li class="active">
                </c:when>
                <c:otherwise>
            <li>
                </c:otherwise>
                </c:choose>
            <a href="${rc.contextPath}/productinstore/houseInQueryLikeKeys?keys=&activePage=1&startNum=1&pageSize=10" class="dropdown-toggle">
                <i class="ace-icon glyphicon glyphicon-edit"></i>
                <span class="menu-text">入库列表</span>
            </a>
        </li>
            <c:choose>
            <c:when test="${basevo.leftsideIdentifier== 'product_sale'}">
            <li class="active">
                </c:when>
                <c:otherwise>
            <li>
                </c:otherwise>
                </c:choose>
            <a href="${rc.contextPath}/productsale/saleQueryLikeKeys?keys=&activePage=1&startNum=1&pageSize=10" class="dropdown-toggle">
                <i class="ace-icon glyphicon glyphicon-file"></i>
                <span class="menu-text">售卖列表</span>
            </a>
        </li>

        <c:choose>
            <c:when test="${basevo.leftsideIdentifier== 'left_supplier_define'}">
                <li class="active">
            </c:when>
            <c:otherwise>
                <li>
            </c:otherwise>
         </c:choose>
            <a href="${rc.contextPath}/supplier/supplierDefine" class="dropdown-toggle">
                <i class="icon-group"></i>
                <span class="menu-text"> 供应商 </span>
            </a>
        </li>

        <c:choose>
            <c:when test="${basevo.leftsideIdentifier== 'left_client_define'}">
                <li class="active">
            </c:when>
            <c:otherwise>
                <li>
            </c:otherwise>
        </c:choose>
            <a href="${rc.contextPath}/client/clientDefine">
                <i class="ace-icon glyphicon glyphicon-user"></i>
                <span class="menu-text"> 客户 </span>
            </a>
        </li>

        <li>
            <a href="calendar.html">
                <i class="icon-calendar"></i>

								<span class="menu-text">
									日历
									<span class="badge badge-transparent tooltip-error" title="" data-original-title="2&nbsp;Important&nbsp;Events">
										<i class="icon-warning-sign red bigger-130"></i>
									</span>
								</span>
            </a>
        </li>


        <li>
            <a href="#" class="dropdown-toggle">
                <i class="icon-tag"></i>
                <span class="menu-text"> 控制管理 </span>

                <b class="arrow icon-angle-down"></b>
            </a>

            <c:choose>
                <c:when test="${basevo.leftsideIdentifier== 'left_user_group_admin' || basevo.leftsideIdentifier== 'left_user_group_authority_admin'}">
                    <ul class="submenu" style="display: block;">
                </c:when>
                <c:otherwise>
                    <ul class="submenu"></c:otherwise>
            </c:choose>
                <c:choose>
                    <c:when test="${basevo.leftsideIdentifier== 'left_user_group_admin'}">
                        <li class="active">
                    </c:when>
                    <c:otherwise>
                        <li>
                    </c:otherwise>
                </c:choose>
                    <a href="${rc.contextPath}/admin/userGroupAdmin">
                        <i class="icon-double-angle-right"></i>
                        用户管理
                    </a>
                </li>

                <c:choose>
                    <c:when test="${basevo.leftsideIdentifier== 'left_user_group_authority_admin'}">
                        <li class="active">
                    </c:when>
                    <c:otherwise>
                        <li>
                    </c:otherwise>
                </c:choose>
                    <a href="${rc.contextPath}/admin/userGroupAuthorityAdmin">
                        <i class="icon-double-angle-right"></i>
                        权限管理
                    </a>
                </li>

            </ul>
        </li>


    </ul><!-- /.nav-list -->

    <div class="sidebar-collapse" id="sidebar-collapse">
        <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
    </div>

    <script type="text/javascript">
        try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
    </script>
</div>