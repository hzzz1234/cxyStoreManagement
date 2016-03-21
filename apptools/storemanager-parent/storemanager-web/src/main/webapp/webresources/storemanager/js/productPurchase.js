/**
 * Created by songbo on 2015/12/22.
 */

debugger;
var a=document.location.search.split("&")[1].split("=")[1];
setPage(document.getElementsByClassName("pagination")[0],parseInt(document.getElementById("pageCount").innerText),a);

function FarmatDateStyle(date){
    var datetemp=new Date(date);

    datetemp.formate("yyyy-mm-dd hh24:mm:ss");
    return datetemp
}
function WriteForm(url){
debugger;
    var diag = new Dialog();
    diag.Width = 600;
    diag.Height = 350;
    diag.URL = url;
    diag.ShowButtonRow=false;

    diag.show();
}

//app.controller(
//    "purchaseCtl",
//    function($scope, $http, $timeout) {
//
//        $scope.deleteOnePurchase = function(id) {
//            debugger;
//            if(!confirm("确认要删除？,数据不可恢复！")){
//                window.event.returnValue = false;
//            }else{
//
//                console.log(id);
//                $http.get(ctx + "/productpurchase/purchaseDelete").success(function(response){
//                    console.log(response);
//                    alert("删除成功！");
//                }).error(function(error){
//                    console.log(error)
//                });
//            }
//
//
//        }
//    }
//);
function deleteOne(id){
    debugger;
    if(!confirm("确认要删除？,数据不可恢复！")){
        window.event.returnValue = false;
    }else{
        $.ajax({
            type:"GET",
            url:"/productpurchase/purchaseDeleteOne",
            data:{id:id},
            dataType:"json",
            beforeSend:function(){
                debugger;
            },
            success:function(data){
                debugger;
                if(data){
                    var ids=[id];
                    deleteDom(ids);
                    alert("删除成功！");
                }else{
                    alert("删除失败！");
                }

               // document.location.reload();

            },
            error:function(){
                alert("出现异常，删除失败！");
            }
        });
    }

}
function deleteMulti(){
    debugger;
    var ids=selectedCheckBoxsValues();
    if(ids.length==0){
      return;
    }
    if(!confirm("确认要删除？,数据不可恢复！")){
        window.event.returnValue = false;
    }else{
        $.ajax({
            type:"POST",
            url:"/productpurchase/purchaseDeleteMulti",
            data:{ids:ids},
            dataType:"json",
            beforeSend:function(){
                debugger;
            },
            success:function(data){
                debugger;
                if(data){
                    var num=toArray(ids);
                    deleteDom(num);
                    if(($("#end_span").val()-num.length)>0){
                        $("#end_span").val(($("#end_span").val()-num.length));
                    }else{
                        $("#end_span").val(0);
                        $("#start_span").val(0);
                    }

                    alert("删除成功！");
                }else{
                    alert("删除失败！");
                }

                // document.location.reload();

            },
            error:function(){
                alert("出现异常，删除失败！");
            }
        });
    }

}
function deleteDom(ids){
    for(var i=0;i<ids.length;i++){
        $("#"+ids[i]).remove();
    }

}
//查找已选复选框
function selectedCheckBoxsValues(){ //jquery获取复选框值
    var chk_value =[];
    $('input[name="tbody_checkItem"]:checked').each(function(){
        chk_value.push($(this).val());
    });
    if(chk_value.length==0){
        alert('你还没有选择任何内容！');
    }
return chk_value.join(",");
}

function reQuery(){
    document.location.assign("/productpurchase/purchaseQueryLikeKeys?"+"keys=&activePage=1"+"&startNum=1&pageSize="+$("#selectValue").val());
}

function toArray(ids){

    if(typeof(ids)!="undefined"){
       return ids.split(",");
    }else{
        return "";
    }
}
//模糊查询
function queryByKeys(){
    debugger;
     var keys= $("#search-input").val();
    document.location.assign("/productpurchase/purchaseQueryLikeKeys?"+"keys="+$("#search-input").val()+"&activePage=1"+"&startNum=1&pageSize="+$("#selectValue").val());
    //queryLikeKeys($("#search-input").val());
}
//模糊查询
//function queryLikeKeys(keys){
//    debugger;
//    if(typeof(keys)=="undefined"||keys=="" ){
//       return;
//    }
//    $.ajax({
//        type:"POST",
//        url:"/productpurchase/purchaseQueryLikeKeys",
//        data:{keys:keys},
//        dataType:"json",
//        beforeSend:function(){
//            debugger;
//        },
//        success:function(data){
//            debugger;
//                 if(typeof(data)=="undefined"){
//
//                     return;
//                 }else{
//
//                 }
//
//        },
//        error:function(){
//            alert("出现异常，查询失败！");
//        }
//    });
//}
function selectChange(){
    document.location.assign("/productpurchase/purchaseQueryLikeKeys?"+"keys="+$("#search-input").val()+"&activePage=1"+"&startNum=1&pageSize="+$("#selectValue").val());
}

