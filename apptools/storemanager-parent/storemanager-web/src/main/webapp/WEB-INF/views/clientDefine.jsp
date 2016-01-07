<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/12
  Time: 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" ng-app="clientDefine" >
<head>
    <title>client</title>
    <%@ include file="/common/common.jsp"%>
    <link href="${rc.contextPath}/webresources/storemanager/css/tree.css" rel="stylesheet" />

</head>

<body ng-controller="clientCtrl">
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
                                <li>
                                    <span><i class="glyphicon glyphicon-folder-open"></i> Parent</span> <a href="">Goes somewhere</a>
                                    <ul>
                                        <li>
                                            <span><i class="glyphicon glyphicon-minus-sign"></i> Child</span> <a href="">Goes somewhere</a>
                                            <ul>
                                                <li>
                                                    <span><i class="glyphicon glyphicon-leaf"></i> Grand Child</span> <a href="">Goes somewhere</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <span><i class="glyphicon glyphicon-minus-sign"></i> Child</span> <a href="">Goes somewhere</a>
                                            <ul>
                                                <li>
                                                    <span><i class="glyphicon glyphicon-leaf"></i> Grand Child</span> <a href="">Goes somewhere</a>
                                                </li>
                                                <li>
                                                    <span><i class="glyphicon glyphicon-minus-sign"></i> Grand Child</span> <a href="">Goes somewhere</a>
                                                    <ul>
                                                        <li>
                                                            <span><i class="glyphicon glyphicon-minus-sign"></i> Great Grand Child</span> <a href="">Goes somewhere</a>
                                                            <ul>
                                                                <li>
                                                                    <span><i class="glyphicon glyphicon-leaf"></i> Great great Grand Child</span> <a href="">Goes somewhere</a>
                                                                </li>
                                                                <li>
                                                                    <span><i class="glyphicon glyphicon-leaf"></i> Great great Grand Child</span> <a href="">Goes somewhere</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <span><i class="glyphicon glyphicon-leaf"></i> Great Grand Child</span> <a href="">Goes somewhere</a>
                                                        </li>
                                                        <li>
                                                            <span><i class="glyphicon glyphicon-leaf"></i> Great Grand Child</span> <a href="">Goes somewhere</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <span><i class="glyphicon glyphicon-leaf"></i> Grand Child</span> <a href="">Goes somewhere</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <span><i class="glyphicon glyphicon-folder-open"></i> Parent2</span> <a href="">Goes somewhere</a>
                                    <ul>
                                        <li>
                                            <span><i class="glyphicon glyphicon-leaf"></i> Child</span> <a href="">Goes somewhere</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xs-8">
                    <div class="col-xs-12">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="clientname">客户名</label>

                                <div class="col-sm-9">
                                    <input type="text" id="clientname" placeholder="客户名" class="col-xs-10 col-sm-5">
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
                                    <button class="btn btn-info" type="button">
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

            <%@ include file="/common/settings.jsp"%>
        </div>

        <!--置顶-->
        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="icon-double-angle-up icon-only bigger-110"></i>
        </a>
    </div><!-- /.main-container -->
    <%@ include file="/common/foot.jsp"%>

    <script src="${rc.contextPath}/webresources/storemanager/js/productDefine.js"></script>
    <script type="text/javascript">
        jQuery(function($) {
            $('.cxy-input-file').ace_file_input({
                style:'well',
                btn_choose:'Drop files here or click to choose',
                btn_change:null,
                no_icon:'icon-cloud-upload',
                droppable:true,
                thumbnail:'fit'//large | fit
                //,icon_remove:null//set null, to hide remove/reset button
                /**,before_change:function(files, dropped) {
                //Check an example below
                //or examples/file-upload.html
                return true;
                }*/
                            /**,before_remove : function() {
                return true;
                }*/
                ,
                preview_error : function(filename, error_code) {
                    //name of the file that failed
                    //error_code values
                    //1 = 'FILE_LOAD_FAILED',
                    //2 = 'IMAGE_LOAD_FAILED',
                    //3 = 'THUMBNAIL_FAILED'
                    //alert(error_code);
                }

            }).on('change', function(){
                console.log($(this).data('ace_input_files'));
                console.log($(this).data('ace_input_method'));
            });

            $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
            $('.tree li.parent_li > span').on('click', function (e) {
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