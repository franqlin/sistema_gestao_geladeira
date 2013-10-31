<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Sistema de Gest&amacr;o de Geladeira - 2GE 1.0</title>
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="assets/styles.css" rel="stylesheet" media="screen">
     <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
  </head>
  <body id="login" onload='document.f.j_username.focus();'>
    <div class="container">

      <form name='f' class="form-signin" action='/vraptor-security/j_spring_security_check' method='POST'>
          <h2 class="form-signin-heading">2GE 1.0</h2>
        <input type="text" id="j_username" name="j_username" class="input-block-level" placeholder="Usu&aacute;rio">
        <input type="password"  name='j_password' class="input-block-level" placeholder="Senha">

        <button class="btn btn-large btn-primary" type="submit" value="Login">Entrar</button>
      </form>

    </div> <!-- /container -->
    <script src="vendors/jquery-1.9.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>

