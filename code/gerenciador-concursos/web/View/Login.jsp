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
        <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
        <meta charset="utf-8">
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
        <div class="row">
            <div class="col-lg-6"> 
                <div class="row">
                    <h2 class="text-center col-sm-10">Login</h2>
                </div>
                <form class="form-horizontal" action="./ValidaLogin" method="POST">
                    <div class="form-group">
                        <label for="txtEmail" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="txtEmail" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtSenha" class="col-sm-2 control-label">Senha</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="txtSenha" placeholder="Senha">
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
                            <input type="submit" class="btn btn-default" value="Entrar"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <h2 class="text-center col-sm-10">Cadastro</h2>
                </div>
                <div class="row">
                    <input type="radio" id="radioCandidato" name="tipoCadastro" checked> Sou candidato <br/>
                    <input type="radio" id="radioInstituicao" name="tipoCadastro"> Sou instituição
                </div>
                <div class="row">
                <form class="form-horizontal" action="./ValidaCadastro" method="POST" id="frmCadastroCandidato">
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
                            <input type="text" class="form-control" name="txtCPFCadastro" placeholder="CPF">
                        </div>
                    </div>
         
                    <div class="form-group">
                        <label for="txtEmailCadastro" class="col-sm-2 control-label" >Data de Nascimento</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="txtDataNascimento" placeholder="AAAA-MM-DD">
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
                            <input type="submit" class="btn btn-default" value="Cadastrar">
                        </div>
                    </div>
                </form>
                </div>
                <div class="row">
                <form class="form-horizontal" action="./ValidaCadastroInstituicao" method="POST" id="frmCadastroInstituicao">
                     <div class="form-group">
                        <label for="txtNomeCadastroInstituicao" class="col-sm-2 control-label">Nome</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="txtNomeCadastroInstituicao" placeholder="Nome">
                        </div>                       
                    </div>
                    <div class="form-group">
                        <label for="txtEmailCadastroInstituicao" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" name="txtEmailCadastroInstituicao" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtCNPJCadastro" class="col-sm-2 control-label">CNPJ</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="txtCNPJCadastro">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtSenhaCadastroInstituicao" class="col-sm-2 control-label">Senha</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="txtSenhaCadastroInstituicao" placeholder="Senha">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtConfirmaSenhaCadastroInstituicao" class="col-sm-2 control-label">Repita a senha</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="txtConfirmaSenhaCadastroInstituicao" placeholder="Repita a senha">
                        </div>                       
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="submit" class="btn btn-default" value="Cadastrar">
                        </div>
                    </div>
                </form>
                </div>
            </div>
        </div>
        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>