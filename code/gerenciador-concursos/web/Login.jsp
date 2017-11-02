<%-- 
    Document   : Login
    Created on : 02/11/2017, 15:28:33
    Author     : André Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>	</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <meta charset="utf-8">
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <div class="navbar-brand">
                        <a href="Index.html">AJCR Concursos</a>
                    </div>
                </div>
                <ul class="nav navbar-nav">
                    <li>
                        <a id="btnCadastroColaborador" href="/Projetos/CadastroColaborador">
                            Item 1
                        </a>
                    </li>
                    <li>
                        <a id="btnCadastroProjeto" href="/Projetos/CadastroProjeto">
                            Item 2
                        </a>
                    </li>
                    <li>
                        <a id="btnListarProjetos" href="/Projetos/ListarProjetos">
                            Item 3
                        </a>
                    </li>
                    <li>
                        <a id="btnListarColaboradores" href="/Projetos/ListarColaboradores">
                            Item 4
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
        <div class="row">

            <div class="col-lg-6"> 
                <div class="row">
                    <h2 class="text-center col-sm-10">Login</h2>
                </div>
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="txtEmail" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="txtEmail" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtSenha" class="col-sm-2 control-label">Senha</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="txtSenha" placeholder="Senha">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> Lembrar-me
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Entrar</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <h2 class="text-center col-sm-10">Cadastro</h2>
                </div>
                <form class="form-horizontal" action="./ValidaCadastro" method="POST">
                    <div class="form-group">
                        <label for="txtNomeCadastro" class="col-sm-2 control-label">Nome</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="txtNomeCadastro" placeholder="Nome">
                        </div>                       
                    </div>
                    <div class="form-group">
                        <label for="txtEmailCadastro" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="txtEmailCadastro" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtEmailCadastro" class="col-sm-2 control-label">CPF</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="txtCPFCadastro">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtSenhaCadastro" class="col-sm-2 control-label">Senha</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="txtSenhaCadastro" placeholder="Senha">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtSenha" class="col-sm-2 control-label">Repita a senha</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="txtConfirmaSenhaCadastro" placeholder="Repita a senha">
                        </div>                       
                    </div>



                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="submit" class="btn btn-default">Cadastrar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <footer class="footer bd-footer">
            <div class="container">
                <p class="text-center">AJCR Concursos ®</p>
            </div>
        </footer>
    </body>
</html>