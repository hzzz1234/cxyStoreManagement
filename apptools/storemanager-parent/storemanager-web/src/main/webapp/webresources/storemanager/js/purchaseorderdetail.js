function ShowElement(element)
{
    var oldhtml = element.innerHTML;
    var newobj = document.createElement('input');
    //创建新的input元素
    newobj.type = 'text';
    //为新增元素添加类型
    newobj.onblur = function() {
        element.innerHTML = this.value ? this.value : oldhtml;
        //当触发时判断新增元素值是否为空，为空则不修改，并返回原有值
    }
    element.innerHTML = '';
    element.appendChild(newobj);
    newobj.focus();
}