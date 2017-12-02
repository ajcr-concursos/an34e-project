<%-- 
    Document   : MinhasInscricoes
    Created on : 30/11/2017, 20:20:31
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minhas Inscrições</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <script src="js/jquery-3.2.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.mask.js"></script>
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
                <div class="container">
            <h2>Minhas inscrições</h2>
            
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
                        <c:forEach items="${lstInscricoes}" var="item" >
                        <tr>
                            <td>${item.concurso.getNome()}</td>
                            <td>${item.concurso.getQtdVagas()} vaga(s)</td>
                            <td>${item.concurso.dataProva}</td>
                            
                            <td><a href=""><input type="submit" class="btn btn-default" value="Veja Mais"/></td>
                        </tr>
                        </c:forEach>
                    </tbody>
            
                </table>
           </form>
        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>
