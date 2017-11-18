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
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <div class="navbar-brand">
                        <a href="./Inicio">AJCR Concursos</a>
                    </div>
                </div>
                <ul class="nav navbar-nav">
                    <li>
                        <a id="btnCadastroProjeto" href="/Projetos/">
                            Concursos
                        </a>
                    </li>
                    <li>
                        <a id="btnListarProjetos" href="/Projetos/">
                            Empresas
                        </a>
                    </li>
                    <li>
                        <a id="btnListarColaboradores" href="/Projetos/">
                            Lista de Interesses
                        </a>
                    </li>
                </ul
                <ul class="nav navbar-nav">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-registration">
                            <a href="./Login">
                                Login
                            </a>                      
                        </li>
                    </ul>
                </ul>

            </div>

        </nav>
        <div class="jumbotron text-center">
            <h1>Sistema Gerenciador de concursos</h1>
            <p>AJCR Concursos</p>
        </div>

        <div class="container">
            <div class="row"> 
                <div class="col-sm-4">
                    <h3>Concurso</h3>
                    <p>Aqui concurso mais acessado</p>
                </div>
                <div class="col-sm-4">
                    <h3>Empresa</h3>
                    <p>Aqui empresa mais acessada</p>
                </div>
                <div class="col-sm-4">
                    <h3>Área de Interesse</h3>
                    <p>Aqui área de interesse mais acessada</p>
                </div>
            </div>
        </div>

        <footer class="footer bd-footer">
            <div class="container">
                <p class="text-center">AJCR Concursos ®</p>
            </div>
        </footer>
    </body>
</html>