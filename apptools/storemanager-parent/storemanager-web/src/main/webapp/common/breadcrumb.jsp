<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="breadcrumbs" id="breadcrumbs">
    <script type="text/javascript">
        try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
    </script>

    <!-- .breadcrumb -->
    <ul class="breadcrumb">
        <li>
            <i class="icon-home home-icon"></i>
            <a href="${rc.contextPath}/">首页</a>
        </li>
        <li class="active">
            ${basevo.barname}
        </li>
    </ul><!-- .breadcrumb -->

    <div class="nav-search" id="nav-search">
        <form class="form-search">
		    <span class="input-icon">
			    <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off">
			    <i class="icon-search nav-search-icon"></i>
			</span>
        </form>
    </div><!-- #nav-search -->
</div>