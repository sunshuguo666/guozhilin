<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="/WEB-INF/pages/static.jsp"/>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="zh">

<body>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
            <div class="row w-100">
                <div class="col-lg-4 mx-auto">
                    <div class="auth-form-light text-left p-5">
                        <div class="brand-logo">
                            <img src="${ctx}/static/images/logo.svg">
                        </div>
                        <form class="pt-3" id="dataForm">
                            <div class="form-group">
                                <input type="text" class="form-control form-control-lg" id="account" name="account" placeholder="*真实姓名">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-lg" id="username" name="username" placeholder="*用户名">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control form-control-lg" id="password1" name="password1" placeholder="*密码">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control form-control-lg" id="password2" name="password2" placeholder="*确认密码">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control form-control-lg" id="email" name="email" placeholder="*邮箱">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control form-control-lg" id="phone" name="phone" placeholder="*电话号码">
                            </div>
                            <div class="mt-3">
                                <a class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" onclick="register()">注册</a>
                            </div>
                            <div class="text-center mt-4 font-weight-light">
                                已经有账户? <a href="login" class="text-primary">登录</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
</body>
<script type="text/javascript">
function register() {
    if($("#username").val()==""||$("#account").val()==""||$("#email").val()==""||$("#phone").val()==""||$("#password1").val()==""||$("#password2").val()==""){
        layer.msg("请填写必要信息.");
        return;
    }
    if ($("#password1").val()!=$("#password2").val()){
        layer.msg("密码不一致");
        return;
    }

}
</script>
</html>
