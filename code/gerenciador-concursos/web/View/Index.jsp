<%-- 
    Document   : newjsp
    Created on : 29/10/2017, 02:21:00
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
        <div class="jumbotron text-center">
            <h1>Sistema Gerenciador de concursos</h1>
            <p>AJCR Concursos</p>
        </div>

        <div class="container">
            <div class="row"> 
                <div class="col-sm-4">
                    <h3>Concursos</h3>
                    <p>Aqui concurso mais acessado</p>
                </div>
                <div class="col-sm-4">
                    <h3>Empresas</h3>
                    <p>Aqui empresa mais acessada</p>
                </div>
                <div class="col-sm-4">
                    <h3>Áreas de Interesse</h3>
                    <p>Aqui área de interesse mais acessada</p>
                </div>
            </div>
        </div>
        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>