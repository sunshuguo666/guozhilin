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
                        <marquee behavior="" direction="right">欢迎光临果之林餐厅</marquee>
                        <form class="pt-3" id="loginform" name="loginform"  role="form" method="post">
                            <div class="form-group">
                                <input type="email" class="form-control form-control-lg" id="username" name="username" placeholder="用户名">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control form-control-lg" id="password" name="password" placeholder="密码">
                            </div>
                            <div class="mt-3">
                                <a class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" onclick="signIn()">登录</a>
                            </div>
                            <div class="my-2 d-flex justify-content-between align-items-center">
                                <div class="form-check">
                                    <label class="form-check-label text-muted">
                                        <input type="checkbox" class="form-check-input">
                                        记住密码
                                    </label>
                                </div>
                                <a href="#" class="auth-link text-black">忘记密码?</a>
                            </div>
                            <div class="mb-2">
                                <button type="button" class="btn btn-block btn-facebook auth-form-btn">
                                    QQ账号授权登录
                                </button>
                            </div>
                            <div class="text-center mt-4 font-weight-light">
                                还没有用户? <a href="register" class="text-primary">注册</a>
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
    if ("${error}" != "") {
        layer.msg("${error}");
    };
    function signIn() {
        var form = document.getElementById("loginform");
        form.submit();
    }
</script>
</html>
