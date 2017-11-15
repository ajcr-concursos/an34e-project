<%-- 
    Document   : CadastroConcurso
    Created on : 10/11/2017, 04:21:22
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de concursos</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <div class="navbar-brand">
                        <a href="Index.html">Projetos</a>
                    </div>
                </div>
                <ul class="nav navbar-nav">
                    <li>
                        <a id="btnCadastroColaborador" href="/Projetos/CadastroColaborador">
                            Inicio
                        </a>
                    </li>
                    <li>
                        <a id="btnCadastroProjeto" href="/Projetos/CadastroProjeto">
                            Concursos
                        </a>
                    </li>
                    <li>
                        <a id="btnListarProjetos" href="/Projetos/ListarProjetos">
                            Empresas
                        </a>
                    </li>
                    <li>
                        <a id="btnListarColaboradores" href="/Projetos/ListarColaboradores">
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
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-3">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <input type="text"/>
                        </div>
                    </form>
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
