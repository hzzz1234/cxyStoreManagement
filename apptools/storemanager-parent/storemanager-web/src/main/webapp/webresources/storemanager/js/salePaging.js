
/**
 * Created by songbo on 2016/3/6.
 */
function setPage(container, count, pageindex) {
    var container = container;//装载该分页的容器
    var count = count;//总页数
    var pageindex = pageindex;//当前页
    var a = [];
    //总页数少于10 全部显示,大于10 显示前3 后3 中间3 其余....
    if (pageindex == 1) {
        a[a.length] = "<li class=\"prev disabled\"> <a class='pageA' href=\"#\"><i class=\"icon-fast-backward\"></i></a></li>"+
        "<li class=\"prev disabled\"><a class='pageA' href=\"#\"><i class=\" icon-step-backward\"></i></a> </li>";
    } else {
        a[a.length] = "<li class=\"prev\"> <a class='pageA' href=\"#\"><i class=\"icon-fast-backward\"></i></a></li>" +
        "<li class=\"prev\"><a class='pageA' href=\"#\"><i class=\" icon-step-backward\"></i></a> </li>";
    }
    function setPageList() {
        if (pageindex == i) {
            a[a.length] ="<li class=\"active\"><a class='pageA' href=\"#\">"+i+"</a></li>";
        } else {
            a[a.length] = "<li><a class='pageA' href=\"#\">"+i+"</a></li>";
        }
    }
    //总页数小于10
    if (count <= 10) {
        for (var i = 1; i <= count; i++) {
            setPageList();
        }
    }
    //总页数大于10页
    else {
        if (pageindex <= 4) {
            for (var i = 1; i <= 5; i++) {
                setPageList();
            }
            a[a.length] = "...<li><a class='pageA' href=\"#\">" + count + "</a></li>";
        } else if (pageindex >= count - 3) {
            a[a.length] = "<li><a class='pageA' href=\"#\">1</a></li>...";
            for (var i = count - 4; i <= count; i++) {
                setPageList();
            }
        }
        else { //当前页在中间部分
            a[a.length] = "<li><a class='pageA' href=\"#\">1</a></li>...";
            for (var i = pageindex - 2; i <= pageindex + 2; i++) {
                setPageList();
            }
            a[a.length] = "...<li><a class='pageA' href=\"#\">" + count + "</a></li>";
        }
    }
    if (pageindex == count) {
        a[a.length] = "<li class=\"next disabled\"><a class='pageA' href=\"#\"><i class=\"icon-step-forward\"></i></li>"+
        "<li class=\"next disabled\"><a class='pageA' href=\"#\"><i class=\"icon-fast-forward\"></i></a> </li>";
    } else {
        a[a.length] = "<li class=\"next\"><a class='pageA' href=\"#\"><i class=\"icon-step-forward\"></i></li>"+
        "<li class=\"next\"><a class='pageA' href=\"#\"><i class=\"icon-fast-forward\"></i></a> </li>";
    }
    container.innerHTML = a.join("");
    //事件点击
    var pageClick = function() {
        var oAlink = container.getElementsByClassName("pageA");
        var inx = pageindex; //初始的页码
        oAlink[0].onclick = function() { //点击首页
            debugger;
            if (inx == 1) {
                return false;
            }
            var selectedValue=parseInt($("#selectValue").val());
            document.location.assign("/productsale/saleQueryLikeKeys?"+"keys="+$("#search-input").val()+"&activePage=1&startNum=1&pageSize="+selectedValue);
            //setPage(container, count, 1);
            return false;
        }
        oAlink[1].onclick = function() { //点击上一页
            debugger;
            if (inx == 1) {
                return false;
            }
            var selectedValue=parseInt($("#selectValue").val());
            inx--;
            document.location.assign("/productsale/saleQueryLikeKeys?"+"keys="+$("#search-input").val()+"&activePage="+inx+"&startNum="+((inx-1)*selectedValue+1)+"&pageSize="+selectedValue);
            //setPage(container, count, inx);

            return false;
        }
        for (var i = 2; i < oAlink.length - 2; i++) { //点击页码
            oAlink[i].onclick = function() {
                inx = parseInt(this.innerHTML);
                debugger;
                var selectedValue=parseInt($("#selectValue").val());
                document.location.assign("/productsale/saleQueryLikeKeys?"+"keys="+$("#search-input").val()+"&activePage="+inx+"&startNum="+((inx-1)*selectedValue+1)+"&pageSize="+selectedValue);
                //setPage(container, count, inx);
                return false;
            }
        }
        oAlink[oAlink.length - 2].onclick = function() { //点击下一页
            debugger;
            if (inx == count) {
                return false;
            }
            var selectedValue=parseInt($("#selectValue").val());
            document.location.assign("/productsale/saleQueryLikeKeys?"+"keys="+$("#search-input").val()+"&activePage="+(parseInt(inx)+1)+"&startNum="+(inx*selectedValue+1)+"&pageSize="+selectedValue);
            //setPage(container, count, inx);
            return false;
        }
        oAlink[oAlink.length - 1].onclick = function() { //点击末页
            debugger;
            if (inx == count) {
                return false;
            }
            var selectedValue=parseInt($("#selectValue").val());
            document.location.assign("/productsale/saleQueryLikeKeys?"+"keys="+$("#search-input").val()+"&activePage="+count+"&startNum="+((count-1)*selectedValue+1)+"&pageSize="+selectedValue);
            //setPage(container, count, count);
            return false;
        }
    } ()
}
//setPage(document.getElementsByTagName("div")[0],10,1);
//setPage(document.getElementsByTagName("div")[1],13,5);