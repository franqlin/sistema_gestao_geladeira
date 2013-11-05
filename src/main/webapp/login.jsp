<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <title>Sistema de Gest&amacr;o de Geladeira</title>

    <!-- Bootstrap  CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!-- css externo-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Estilo do template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

</head>

  <body class="login-body" id="login" onload='document.f.j_username.focus();'>

    <div class="container">

      <form name='f' class="form-signin" action='${pageContext.request.contextPath}/j_spring_security_check'  method='POST'>
          <h4 class="form-signin-heading">SGG</h4>
        <div class="login-wrap">
            <input type="text" id="j_username" name="j_username" class="form-control" placeholder="Usu&aacute;rio" autofocus>
            <input type="password"  name='j_password'  class="form-control" placeholder="Senha">
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Lembrar senha
                <span class="pull-right"> <a href="#"> Perdeu senha?</a></span>
            </label>
            <button class="btn btn-lg btn-login btn-block" type="submit" value="Login">Entrar</button>
            <!--p>or you can sign in via social network</p>
            <div class="login-social-link">
                <a href="index.html" class="facebook">
                    <i class="icon-facebook"></i>
                    Facebook
                </a>
                <a href="index.html" class="twitter">
                    <i class="icon-twitter"></i>
                    Twitter
                </a>
            </div-->

        </div>

      </form>

    </div>


  </body>
</html>