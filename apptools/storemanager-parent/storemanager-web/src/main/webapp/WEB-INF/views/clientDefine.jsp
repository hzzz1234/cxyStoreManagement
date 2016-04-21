<%@ page import="com.cxy.apptools.web.storemanager.vo.page.ClientDefineVo" %>
<%@ page import="com.cxy.apptools.web.storemanager.vo.page.beans.CategoryLeafNode" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/12
  Time: 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" >
<head>
    <title>client</title>
    <%@ include file="/common/common.jsp"%>
    <link href="${rc.contextPath}/webresources/storemanager/css/tree.css" rel="stylesheet" />

</head>

<body >
<!--头框-->
<%@ include file="/common/header.jsp"%>
<!--主框架-->
<div class="main-container" id="main-container" >
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>
    <div class="main-container-inner">
        <a class="menu-toggler display" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>
        <!--左边栏-->
        <%@ include file="/common/leftside.jsp"%>

        <!--主内容-->
        <div class="main-content">
            <%@include file="/common/breadcrumb.jsp"%>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        ${basevo.barname}
                        <small>
                            <i class="icon-double-angle-right"></i>
                            Common form elements and layouts
                        </small>
                    </h1>
                </div><!--page-header-->

                <div class="col-xs-4">
                    <div class="widget-box">
                        <div class="widget-header header-color-blue2" >
                            <h4 class="lighter smaller">产品</h4>
                        </div>
                        <div class="tree well" >
                            <ul>
                                <%
                                    ClientDefineVo clientDefineVo =(com.cxy.apptools.web.storemanager.vo.page.ClientDefineVo) request.getAttribute("basevo");
                                    Map<Integer,List<CategoryLeafNode>> tree = clientDefineVo.getClientTree();
                                    CategoryLeafNode root = tree.get(0).get(0);
                                %>
                                <li>
                                    <span spid="sp<%=root.getId()%>">
                                        <i class="glyphicon glyphicon-folder-open"></i>
                                        <%=root.getName()%>
                                    </span>
                                    <i class="ace-icon glyphicon glyphicon-plus" onclick="add(<%=root.getId()%>,1)"></i>
                                    <ul>
                                        <%
                                            int rootid = root.getId();
                                            if(null!=tree.get(rootid)){
                                            for(CategoryLeafNode secondnode:tree.get(rootid)){
                                                int secondid = secondnode.getId();

                                        %>
                                        <li>
                                            <%
                                                if(!secondnode.isLeaf()){
                                            %>
                                                    <span spid="sp<%=secondid%>">
                                                        <i class="glyphicon glyphicon-minus-sign tag"></i>
                                                        <span  style="border:1px" ondblclick="ShowElement(this,<%=secondid%>,0)"><%=secondnode.getName()%></span>
                                                    </span>
                                            <i class="ace-icon glyphicon glyphicon-plus" onclick="add(<%=secondnode.getId()%>,0)"></i>
                                            <i class="ace-icon glyphicon glyphicon-minus" onclick="deletenode(<%=secondnode.getId()%>,0,this)"></i>
                                            <ul></ul>
                                            <%
                                            }else{
                                            %>
                                                    <span onclick="viewclient(<%=secondnode.getId()%>)" spid="sp<%=secondid%>">
                                                        <i class="glyphicon glyphicon-leaf"></i>
                                                        <span style="border:1px" ondblclick="ShowElement(this,<%=secondnode.getId()%>,1)"><%=secondnode.getName()%></span>
                                                    </span>
                                            <i class="ace-icon glyphicon glyphicon-minus" onclick="deletenode(<%=secondnode.getId()%>,1,this)"></i>
                                            <%
                                                }
                                            %>
                                            <%
                                                if(!tree.containsKey(secondid) || secondnode.isLeaf()){
                                                    continue;
                                                }
                                            %>
                                            <ul>

                                                <%
                                                    for (CategoryLeafNode thirdnode:tree.get(secondid)){
                                                %>
                                                <li>
                                                        <span onclick="viewclient(<%=thirdnode.getId()%>)" spid="sp<%=thirdnode.getId()%>">
                                                            <i class="glyphicon glyphicon-leaf"></i>
                                                            <span style="border:1px" ondblclick="ShowElement(this,<%=thirdnode.getId()%>,1)"><%=thirdnode.getName()%></span>
                                                        </span>
                                                    <i class="ace-icon glyphicon glyphicon-minus" onclick="deletenode(<%=thirdnode.getId()%>,1,this)"></i>
                                                </li>

                                                <%
                                                    }
                                                %>

                                            </ul>

                                        </li>
                                        <%
                                            }}
                                        %>

                                    </ul>

                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xs-8">
                    <div class="col-xs-12">
                        <form class="form-horizontal" role="form">
                            <input type="text" id="status" placeholder="status" class="col-xs-10 col-sm-5" readonly style="display:none" >
                            <input type="text" id="clientcategoryid" placeholder="clientcategoryid" class="col-xs-10 col-sm-5" readonly style="display:none" >
                            <input type="text" id="createTime" placeholder="createTime" class="col-xs-10 col-sm-5" readonly style="display:none" >

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="clientid">客户号</label>
                                <div class="col-sm-9">
                                    <input type="text" id="clientid" placeholder="客户号" class="col-xs-10 col-sm-5" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="clientname">客户名</label>

                                <div class="col-sm-9">
                                    <input type="text" id="clientname" placeholder="客户名" class="col-xs-10 col-sm-5" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="contactname">联系人</label>

                                <div class="col-sm-9">
                                    <input type="text" id="contactname" placeholder="联系人" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="contactphone">联系电话</label>

                                <div class="col-sm-9">
                                    <input type="text" id="contactphone" placeholder="联系电话" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="contactphone">fax</label>

                                <div class="col-sm-9">
                                    <input type="text" id="fax" placeholder="fax" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="qq">qq</label>

                                <div class="col-sm-9">
                                    <input type="text" id="qq" placeholder="qq" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="address">地址</label>

                                <div class="col-sm-9">
                                    <input type="text" id="address" placeholder="地址" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="post">邮编</label>

                                <div class="col-sm-9">
                                    <input type="text" id="post" placeholder="邮编" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="email">email</label>

                                <div class="col-sm-9">
                                    <input type="text" id="email" placeholder="email" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="comment">备注</label>

                                <div class="col-sm-9">
                                    <input type="text" id="comment" placeholder="备注" class="col-xs-10 col-sm-5">
                                </div>
                            </div>

                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info" type="button" onclick="updateclient();">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        提交
                                    </button>

                                      
                                    <button class="btn" type="reset">
                                        <i class="ace-icon fa fa-undo bigger-110"></i>
                                        重置
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div><!--page-content-->
            <!-- 模态框（Modal） -->
            <div class="modal fade" id="addnode" tabindex="-1" role="dialog"
                 aria-labelledby="addGroupLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close"
                                    data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title" id="addGroupLabel">
                                客户(类别)添加<input type="text" id="pcateid" class="col-xs-10 col-sm-5" readonly style="display: none">
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" role="form">
                                <div class="form-group">

                                    <label class="col-sm-3 control-label no-padding-right" for="sname">客户(类别)名</label>
                                    <div class="col-sm-9">
                                        <input type="text" id="sname" placeholder="客户(类别)名" class="col-xs-10 col-sm-5">
                                    </div>
                                    <label class="col-sm-3 control-label no-padding-right" for="cate">类型</label>
                                    <div class="col-sm-9">

                                        <input type="radio" checked="checked" name="cate" value="1" />客户

                                        <input type="radio" name="cate" value="0" id="cat"/>客户类别
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                    data-dismiss="modal">关闭
                            </button>
                            <button type="button" class="btn btn-primary" onclick="addnode()">
                                添加
                            </button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>
            <%@ include file="/common/settings.jsp"%>
        </div>

        <!--置顶-->
        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="icon-double-angle-up icon-only bigger-110"></i>
        </a>
    </div><!-- /.main-container -->
    <%@ include file="/common/foot.jsp"%>

    <script src="${rc.contextPath}/webresources/storemanager/js/client.js"></script>
    <script type="text/javascript">
        jQuery(function($) {
            $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
            $('.tree li.parent_li > span').on('click', function (e) {
                //alert(123);
                var children = $(this).parent('li.parent_li').find(' > ul > li');
                if (children.is(":visible")) {
                    children.hide('fast');
                    $(this).attr('title', 'Expand this branch').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
                } else {
                    children.show('fast');
                    $(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
                }
                e.stopPropagation();
            });
        });
    </script>

</body>
</html>
