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
        <div class="jumbotron text-center">
            <h1>Sistema Gerenciador de concursos</h1>
            <p>AJCR Concursos</p>
        </div>

        <div class="container">
            <div class="row"> 
                <div class="col-sm-4">
<<<<<<< HEAD:code/gerenciador-concursos/web/Index.html
                    <h3>Concurso 1</h3>
                    <p>Aqui concurso mais acessado na área de interesse do usuário</p>
=======
                    <h3>${nome}</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
>>>>>>> e338cf32935c44e85020821ec61667872634cf7f:code/gerenciador-concursos/web/Index.jsp
                </div>
                <div class="col-sm-4">
                    <h3>Empresa 1</h3>
                    <p>Aqui empresa mais acessada na área de interesse do usuário</p>
                </div>
                <div class="col-sm-4">
                    <h3>Concurso 2</h3>
                    <p>Aqui concurso que falta menos tempo pra chegar</p>
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
