<%-- 
    Document   : Login
    Created on : 02/11/2017, 15:28:33
    Author     : André Rodrigues
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>	</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
        <script type="text/javascript" src="js/jquery.mask.js"></script>
        <script type="text/javascript" src="js/login.js"></script>
        <script src="js/script.js" type="text/javascript"></script>
        <meta charset="utf-8">
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
        <div class="container">
            <h2>Buscar Concursos</h2>
            <form action="./BuscarConcurso" id="frmBuscaConcurso" method="GET">
                <div class="row ">
                    <div class="col-sm-6 text-left"></div>
                    <div class="col-sm-6 text-right">
                        <input type="text" name="txtNome" id="nome"/><button class="btn btn-primary" id="btnBuscar"> <span class="glyphicon glyphicon-zoom-in"> </span>Buscar</button>
                    </div>
                </div>
            </form>

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
                        <c:forEach items="${lstConcursos}" var="item" >
                            <tr>
                            <td>${item.nome}</td>
                            <td>${item.qtdVagas} vaga(s)</td>
                            <td>${item.dataProva}</td>
                            <td><td><a href="./SeInscreva?idConcurso=${item.id}"><button class="btn btn-primary" id="btnBuscar" name="btnInscricao"></span>Inscreva-se</button></a></td></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            
        </div>
        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>