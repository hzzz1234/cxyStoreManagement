function add(id,t){
    //为0添加叶子节点，
    if(t==0){
        $('#cat').attr('disabled',true);

    }else{
        $('#cat').removeAttr('disabled');

    }
    $('#pcateid').val(id)
    $('#sname').val('')
    $('#addnode').modal()

}
function addnode(){
    var name = $('#sname').val()
    var pcateid = $('#pcateid').val()
    var cat = $('input[name="cate"]:checked').val()
    if(name==undefined || name==''){
        alert('必须填写名字')
    }else{

        $.ajax({
            type:"POST",
            url:"/client/addnode",
            data:{name:name,id:pcateid,t:cat},
            dataType:"json",
            beforeSend:function(){
                debugger;
            },
            success:function(data){
                debugger;
                var json = eval('(' + data + ')');
                if(json['code']!=0){
                    alert(json['msg'])
                }else{
                    var json1 = eval('(' + json['data'] + ')');
                    var children = $("span[spid='sp"+pcateid+"']").parent().children();
                    var pa = children[children.length-1];
                    var template="";
                    var li= document.createElement("li");
                    if(cat=="1"){
                        //叶子节点
                        template="<span onclick=\"viewclient("+json1+")\"spid=\"sp"+json1+"\"><i class=\"glyphicon glyphicon-leaf\"></i><span  style=\"border:1px\" ondblclick=\"ShowElement(this,("+json1+"),1)\">"+name
                            +"</span></span><i class=\"ace-icon glyphicon glyphicon-minus\" onclick=\"deletenode("+json1+",1)\"></i>";

                    }else{
                        //非叶子节点
                        template="<span spid=\"sp"+json1+"\"><i class=\"glyphicon glyphicon-minus-sign tag\"></i><span  style=\"border:1px\" ondblclick=\"ShowElement(this,("+json1+"),0)\">"+name
                            +"</span></span><i class=\"ace-icon glyphicon glyphicon-plus\" onclick=\"add("+json1+",0)\"></i>"
                                +"<i class=\"ace-icon glyphicon glyphicon-minus\" onclick=\"deletenode("+json1+",0)\"></i><ul></ul>";
                    }
                    li.innerHTML=template;
                    pa.appendChild(li)
                }
                $('#addnode').modal('hide')
            },
            error:function(){
                alert("出现异常，添加失败！");
            }
        });
    }

}


function deletenode(id,t,obj){
    console.log(id+" "+t+" "+obj)
    //alert(id+" "+ t+" "+obj);
    debugger;
    if(!confirm("确认要删除？,数据不可恢复！")){
        window.event.returnValue = false;
    }else {
        $.ajax({
            type: "POST",
            url: "/client/deletenode",
            data: {id:id,t:t},
            dataType: "json",
            beforeSend: function () {
                debugger;
            },
            success: function (data) {
                debugger;
                if(data){
                    obj.parentNode.remove();
                }
            },
            error: function () {
                alert("出现异常，删除失败！");
            }
        });
    }

}

function updateclient(){
    var clientid = $("#clientid").val()
    if(clientid==undefined || clientid==''){
        alert("供应商id不能为空")
    }else{
        var client={}

        client['clientid']= $("#clientid").val()
        client['clientname']= $("#clientname").val()
        client['contactname']= $("#contactname").val()
        client['contactphone']= $("#contactphone").val()
        client['fax']= $("#fax").val()
        client['qq']= $("#qq").val()
        client['address']= $("#address").val()
        client['post']= $("#post").val()
        client['email']= $("#email").val()
        client['comment']= $("#comment").val()
        client['status']= $("#status").val()
        client['clientcategoryid']= $("#clientcategoryid").val()
        client['createTime']= $("#createTime").val()
        $.ajax({
            type:"POST",
            url:"/client/updateclient",
            data:client,
            dataType:"json",
            beforeSend:function(){
                debugger;
            },
            success:function(data){
                debugger;
                var json = eval('(' + data + ')');
                alert(json['msg'])
            },
            error:function(){
                alert("出现异常，删除失败！");
            }
        });
    }
}

function viewclient(clientid){
    $.ajax({
        type:"GET",
        url:"/client/viewclient",
        data:{id:clientid},
        dataType:"json",
        beforeSend:function(){
            debugger;
        },
        success:function(data){
            debugger;
            var json = eval('(' + data + ')');
            if(json['code']!=0){
                alert(json['msg'])
            }else{
                var json1 = eval('(' + json['data'] + ')');
                $("#clientid").val(json1['clientid'])
                $("#clientname").val(json1['clientname'])
                $("#contactname").val(json1['contactname'])
                $("#contactphone").val(json1['contactphone'])
                $("#fax").val(json1['fax'])
                $("#qq").val(json1['qq'])
                $("#address").val(json1['address'])
                $("#post").val(json1['post'])
                $("#email").val(json1['email'])
                $("#comment").val(json1['comment'])
                $("#status").val(json1['status'])
                $("#clientcategoryid").val(json1['clientcategoryid'])
                $("#createTime").val( json1['createTime'])
            }
        },
        error:function(){
            alert("出现异常，删除失败！");
        }
    });
}



function ShowElement(element,id,t)
{

    var oldhtml = element.innerHTML;
    var newobj = document.createElement('input');
    //创建新的input元素
    newobj.type = 'text';
    newobj.style.width="100px";
    //newobj.width='20px';
    //为新增元素添加类型
    newobj.onblur = function() {
        element.innerHTML = this.value ? this.value : oldhtml;
        //当触发时判断新增元素值是否为空，为空则不修改，并返回原有值
        if(this.value==element.innerHTML){
            var name=element.innerHTML;
            debugger;
            $.ajax({
                type:"GET",
                url:"/client/rename",
                data:{id:id,name:name,t:t},
                dataType:"json",
                success:function(data){
                    debugger;
                    var json = eval('(' + data + ')');
                    alert(json['msg']);
                    //alert(json['code']);
                    if(json['code']==2){
                        element.innerHTML=oldhtml;
                    }
                },
                error:function(){
                    alert("出现异常，删除失败！");
                }

            });
            //window.location.href="/supplier/supplierDefine?id=0";
        }
    }
    element.innerHTML = '';
    element.appendChild(newobj);
    newobj.focus();

}