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
        <div class="container">
            <h2>Buscar Concursos</h2>
            <form action="btnBuscar" method="POST">
                <div class="row ">
                    <div class="col-sm-6 text-left"></div>
                    <div class="col-sm-6 text-right">
                        <button class="btn btn-primary" id="btnBuscar" name="btnBuscar"> <span class="glyphicon glyphicon-zoom-in"> </span>Buscar</button>
                    </div>
                </div>

                <div>
                    <h4>Escolha as areas de seu interesse</h4>
                </div>
                <div>
                    <select name="txtInteresse" id="txtAreaId" class="form-control selecao" >
                        <option class="form-control selecao" value="geral">Geral (todas as areas)</option>
                        <option class="form-control selecao" value=eletrica">Eletrica</option>
                        <option class="form-control selecao" value="mecanica">Mecanica</option>
                        <option class="form-control selecao" value="Administracao">Administração </option>
                        <option class="form-control selecao" value="computacao">Computação</option>
                        <option class="form-control selecao" value="direito">Direito</option>
                    </select>
                </div>
            </form>
           <form method="post" action="./CadastraConcurso">
                <table class="table table-hover">
                    <thead class="thead-inverse">
                        <tr>
                            <th>
                                Nome
                            </th>
                            <th>
                                Qtd vagas
                            </th>
                            <th>
                                Data prova
                            </th>
                    

                           
                        </tr>
                    </thead>
                
                    <tbody>
                        <c:forEach items="${lstBusca}" var="item" >
                        <tr>
                            <td>${item.nome}</td>
                            <td>${item.qtdVagas} vaga(s)</td>
                            <td>${item.dataProva.getTime()}</td>
                        </tr>
                        </c:forEach>
                    </tbody>
            
                </table>
            </form>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="frmCadastroConcurso" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Cadastrar concurso</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" method="POST" action="./CadastraConcurso">
                            <div class="form-group">
                                <label class="control-label col-sm-2" >Nome</label>
                                <input type="text" class="form-control" name="txtNome"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" >Qtd. Vagas</label>
                                <input type="text" class="form-control" name="txtQtdVagas"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" >Data prova</label>
                                <input type="text" class="form-control" name="txtDataProva"/>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                     
                                </div>
                                <div class="col-lg-6">
                                      <input type="submit" class="form-control btn btn-default" value="salvar"/>
                                </div>
                            </div>
                           
                        </form>
                    </div>  
                    <div class="modal-footer">
                        <span class="text-right"><button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button></span>
                    </div>
                </div>

            </div>
        </div>

    </div>
        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>