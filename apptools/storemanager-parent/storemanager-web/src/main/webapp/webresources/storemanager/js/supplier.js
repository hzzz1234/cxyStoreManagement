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
            url:"/supplier/addnode",
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
                        template="<span onclick=\"viewsupplier("+json1+")\"spid=\"sp"+json1+"\"><i class=\"glyphicon glyphicon-leaf\"></i>"+name
                            +"</span><i class=\"ace-icon glyphicon glyphicon-minus\" onclick=\"deletenode("+json1+",1)\"></i>";

                    }else{
                        //非叶子节点
                        template="<span spid=\"sp"+json1+"\"><i class=\"glyphicon glyphicon-minus-sign tag\"></i>"+name
                            +"</span><i class=\"ace-icon glyphicon glyphicon-plus\" onclick=\"add("+json1+",0)\"></i>"
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


function deletenode(id,t){
    console.log(id+" "+t)

}

function updatesupplier(){
    var supplierid = $("#supplierid").val()
    if(supplierid==undefined || supplierid==''){
        alert("供应商id不能为空")
    }else{
        var supplier={}

        supplier['supplierid']= $("#supplierid").val()
        supplier['suppliername']= $("#suppliername").val()
        supplier['contactname']= $("#contactname").val()
        supplier['contactphone']= $("#contactphone").val()
        supplier['fax']= $("#fax").val()
        supplier['qq']= $("#qq").val()
        supplier['address']= $("#address").val()
        supplier['post']= $("#post").val()
        supplier['email']= $("#email").val()
        supplier['comment']= $("#comment").val()
        supplier['status']= $("#status").val()
        supplier['suppliercategoryid']= $("#suppliercategoryid").val()
        supplier['createTime']= $("#createTime").val()
        $.ajax({
            type:"POST",
            url:"/supplier/updatesupplier",
            data:supplier,
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

function viewsupplier(supplierid){
    $.ajax({
        type:"GET",
        url:"/supplier/viewsupplier",
        data:{id:supplierid},
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
                $("#supplierid").val(json1['supplierid'])
                $("#suppliername").val(json1['suppliername'])
                $("#contactname").val(json1['contactname'])
                $("#contactphone").val(json1['contactphone'])
                $("#fax").val(json1['fax'])
                $("#qq").val(json1['qq'])
                $("#address").val(json1['address'])
                $("#post").val(json1['post'])
                $("#email").val(json1['email'])
                $("#comment").val(json1['comment'])
                $("#status").val(json1['status'])
                $("#suppliercategoryid").val(json1['suppliercategoryid'])
                $("#createTime").val( json1['createTime'])
            }
        },
        error:function(){
            alert("出现异常，删除失败！");
        }
    });
}



function rename(id,name,t){
    console.log(id+" "+t)

}