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
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
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
                                            <td>Nome: <c:out value = "${sessionCandidato != null ? sessionCandidato.nome : sessionEmpresa.nome}"/></td>
                                            <td>Email: <c:out value = "${sessionCandidato != null ? sessionCandidato.email : sessionEmpresa.email}"/></td>
                                        </tr>
                                        <tr>
                                            <td>Hire date:</td>
                                            <td>06/23/2013</td>
                                        </tr>
                                        <tr>
                                            <td>Date of Birth</td>
                                            <td>01/24/1988</td>
                                        </tr>

                                        <tr>
                                        <tr>
                                            <td>Gender</td>
                                            <td>Female</td>
                                        </tr>
                                        <tr>
                                            <td>Home Address</td>
                                            <td>Kathmandu,Nepal</td>
                                        </tr>
                                        <tr>
                                            <td>Email</td>
                                            <td><a href="mailto:info@support.com">info@support.com</a></td>
                                        </tr>
                                    <td>Phone Number</td>
                                    <td>123-4567-890(Landline)<br><br>555-4567-890(Mobile)
                                    </td>

                                    </tr>

                                    </tbody>
                                </table>

                                <a href="#" class="btn btn-primary">My Sales Performance</a>
                                <a href="#" class="btn btn-primary">Team Sales Performance</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                    </div>

                </div>
            </div>
        </div>

        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>
