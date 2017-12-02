<%-- 
    Document   : Concursos
    Created on : 24/11/2017, 03:12:50
    Author     : Rafael Andrade
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Concursos</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script src="js/jquery-3.2.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.mask.js"></script>
        <script>
            $("document").ready(function () {
                $("#btnNovoConcurso").click(function () {
                    $("#frmCadastroConcurso").modal();
                });

            });
        </script>
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
        <div class="container">
            <h2>Meus concursos cadastrados</h2>

            <div class="row ">
                <div class="col-sm-6 text-left"></div>
                <div class="col-sm-6 text-right">
                    <button class="btn btn-primary" id="btnNovoConcurso"><span class="glyphicon glyphicon-plus"></span>Novo</button>
                </div>
            </div>
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


                            <th>Opções</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach items="${lstConcursos}" var="item" >
                            <tr>
                                <td>${item.nome}</td>
                                <td>${item.qtdVagas} vaga(s)</td>
                                <td>${item.dataProva}</td>

                                <td><a href=""><input type="submit" class="btn btn-default" value="Veja Mais"/></td>
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

</body>
</html>
