<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/11/12
  Time: 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" ng-app="productDefine" >
<head>
    <title>Main</title>
    <%@ include file="/common/common.jsp"%>
    <link href="${rc.contextPath}/webresources/storemanager/css/test.css" rel="stylesheet" />
</head>

<body ng-controller="productCtrl">
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

                <div class="col-xs-2">
                    <div class="widget-box">
                        <div class="widget-header header-color-blue2">
                            <h4 class="lighter smaller">产品</h4>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main padding-8">
                                <div id="tree1" class="tree"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-10">
                    <div class="col-xs-12">
                        <form class="form-horizontal" role="form">
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="branchname">品牌名</label>

                                <div class="col-sm-9">
                                    <input type="text" id="branchname" placeholder="品牌名" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="branchname">产品类型名</label>

                                <div class="col-sm-9">
                                    <input type="text" id="productcategory" placeholder="产品类型名" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="productcategory">货号</label>

                                <div class="col-sm-9">
                                    <input type="text" id="stockno" placeholder="货号" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="stockno">近期购买价格</label>

                                <div class="col-sm-9">
                                    <input type="text" id="purchaseprice" placeholder="0.00" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="purchaseprice">近期销售价格</label>

                                <div class="col-sm-9">
                                    <input type="text" id="sellprice" placeholder="0.00" class="col-xs-10 col-sm-5">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="sellprice">产品图片</label>

                                <div class="col-sm-9">
                                    <div class="col-xs-4">
                                        <input type="file" id="pic1" class="cxy-input-file">
                                        <!-- /section:custom/file-input -->
                                    </div>
                                    <div class="col-xs-4">
                                        <input type="file" id="pic2" class="cxy-input-file">
                                        <!-- /section:custom/file-input -->
                                    </div>
                                    <div class="col-xs-4">
                                        <input type="file" id="pic3" class="cxy-input-file">
                                        <!-- /section:custom/file-input -->
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                    <button class="btn btn-info" type="button">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        提交
                                    </button>

                                    &nbsp; &nbsp; &nbsp;
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

            var DataSourceTree = function(options) {
                this._data 	= options.data;
                this._delay = options.delay;
            }

            DataSourceTree.prototype.data = function(options, callback) {
                var self = this;
                var $data = null;

                if(!("name" in options) && !("type" in options)){
                    $data = this._data;//the root tree
                    callback({ data: $data });
                    return;
                }
                else if("type" in options && options.type == "folder") {
                    if("additionalParameters" in options && "children" in options.additionalParameters)
                        $data = options.additionalParameters.children;
                    else $data = {}//no data
                }

                if($data != null)//this setTimeout is only for mimicking some random delay
                    setTimeout(function(){callback({ data: $data });} , parseInt(Math.random() * 500) + 200);

                //we have used static data here
                //but you can retrieve your data dynamically from a server using ajax call
                //checkout examples/treeview.html and examples/treeview.js for more info
            };

            var tree_data = {
                'for-sale' : {name: 'For Sale', type: 'folder'}	,
                'vehicles' : {name: 'Vehicles', type: 'folder'}	,
                'rentals' : {name: 'Rentals', type: 'folder'}	,
                'real-estate' : {name: 'Real Estate', type: 'folder'}	,
                'pets' : {name: 'Pets', type: 'folder'}	,
                'tickets' : {name: 'Tickets', type: 'item'}	,
                'services' : {name: 'Services', type: 'item'}	,
                'personals' : {name: 'Personals', type: 'item'}
            }
            tree_data['for-sale']['additionalParameters'] = {
                'children' : {
                    'appliances' : {name: 'Appliances', type: 'item'},
                    'arts-crafts' : {name: 'Arts & Crafts', type: 'item'},
                    'clothing' : {name: 'Clothing', type: 'item'},
                    'computers' : {name: 'Computers', type: 'item'},
                    'jewelry' : {name: 'Jewelry', type: 'item'},
                    'office-business' : {name: 'Office & Business', type: 'item'},
                    'sports-fitness' : {name: 'Sports & Fitness', type: 'item'}
                }
            }
            tree_data['vehicles']['additionalParameters'] = {
                'children' : {
                    'cars' : {name: 'Cars', type: 'folder'},
                    'motorcycles' : {name: 'Motorcycles', type: 'item'},
                    'boats' : {name: 'Boats', type: 'item'}
                }
            }
            tree_data['vehicles']['additionalParameters']['children']['cars']['additionalParameters'] = {
                'children' : {
                    'classics' : {name: 'Classics', type: 'item'},
                    'convertibles' : {name: 'Convertibles', type: 'item'},
                    'coupes' : {name: 'Coupes', type: 'item'},
                    'hatchbacks' : {name: 'Hatchbacks', type: 'item'},
                    'hybrids' : {name: 'Hybrids', type: 'item'},
                    'suvs' : {name: 'SUVs', type: 'item'},
                    'sedans' : {name: 'Sedans', type: 'item'},
                    'trucks' : {name: 'Trucks', type: 'item'}
                }
            }

            tree_data['rentals']['additionalParameters'] = {
                'children' : {
                    'apartments-rentals' : {name: 'Apartments', type: 'item'},
                    'office-space-rentals' : {name: 'Office Space', type: 'item'},
                    'vacation-rentals' : {name: 'Vacation Rentals', type: 'item'}
                }
            }
            tree_data['real-estate']['additionalParameters'] = {
                'children' : {
                    'apartments' : {name: 'Apartments', type: 'item'},
                    'villas' : {name: 'Villas', type: 'item'},
                    'plots' : {name: 'Plots', type: 'item'}
                }
            }
            tree_data['pets']['additionalParameters'] = {
                'children' : {
                    'cats' : {name: 'Cats', type: 'item'},
                    'dogs' : {name: 'Dogs', type: 'item'},
                    'horses' : {name: 'Horses', type: 'item'},
                    'reptiles' : {name: 'Reptiles', type: 'item'}
                }
            }

            var treeDataSource = new DataSourceTree({data: tree_data});

            $('#tree1').ace_tree({
                dataSource: remoteSource ,
                multiSelect:false,
                loadingHTML:'<div class="tree-loading"><i class="ace-icon fa fa-refresh fa-spin blue"></i></div>',
                'open-icon' : 'ace-icon tree-minus',
                'close-icon' : 'ace-icon tree-plus',
                'selectable' : true,
                'selected-icon' : 'ace-icon fa fa-check',
                'unselected-icon' : 'ace-icon fa fa-times'
            });
        });
    </script>

</body>
</html>
