<%-- 
    Document   : Perfil
    Created on : 02/12/2017, 14:46:28
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <title>Meu perfil</title>
        <style>
            .custom-container{
                padding-left: 100px;
                padding-right: 100px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title text-center"><c:out value = "${sessionCandidato != null ? sessionCandidato.nome : sessionEmpresa.nome}"/></h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-3 col-lg-3 " align="center"></div>
                                <div class=" col-md-9 col-lg-9 "> 
                                    <table class="table table-user-information">
                                        <tbody>
                                            <tr>
                                                <td>Nome: </td>
                                                <td><c:out value = "${sessionCandidato != null ? sessionCandidato.nome : sessionEmpresa.nome}"/></td>

                                            </tr>
                                            <tr>
                                                <td>Email:</td> 
                                                <td><c:out value = "${sessionCandidato != null ? sessionCandidato.email : sessionEmpresa.email}"/> </td>
                                            </tr>
                                            <tr>
                                                <td>(CPF/CNPJ): </td>
                                                <td><c:out value = "${sessionCandidato != null ? sessionCandidato.CPF : sessionEmpresa.CNPJ}"/></td>

                                            </tr>
                                            <c:choose>
                                                <c:when test="${sessionScope.sessionCandidato != null}">
                                                    <tr>
                                                        <td>Data de Nascimento</td>
                                                        <td>${sessionScope.sessionCandidato.getDataNascimentoString()}</td>
                                                    </tr>
                                                </c:when>    
                                                <c:otherwise>
                                                    <tr>
                                                        <td>Rua</td>
                                                        <td>${sessionScope.sessionEmpresa.rua}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Bairro</td>
                                                        <td>${sessionScope.sessionEmpresa.bairro}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Numero</td>
                                                        <td>${sessionScope.sessionEmpresa.numero}</td>
                                                    </tr>
                                                </c:otherwise>
                                            </c:choose>
                                        </tbody>
                                    </table>

                                    <a href="#" class="btn btn-primary">Editar perfil</a>
                                </div>
                            </div>
                        </div>
                        <div class="panel-footer">
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>
