<%-- 
    Document   : Layout
    Created on : 18/11/2017, 14:37:32
    Author     : André Rodrigues
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <div class="navbar-brand">
                <a href="./Inicio">AJCR Concursos</a>
            </div>
        </div>
        <ul class="nav navbar-nav">
            <c:choose>
                <c:when test="${sessionScope.sessionCandidato != null && sessionScope.sessionEmpresa == null}">
                    <li>
                        <a id="btnListarProjetos" href="./Empresas">
                            Empresas
                        </a>
                    </li>
                    <li>
                        <a id="btnCadastroProjeto" href="./BuscarConcurso">
                            Concursos
                        </a>
                    </li>
                    <li>
                        <a id="btnMinhasInscricoes" href="./MinhasInscricoes">
                            Minhas inscrições
                        </a>
                    </li>

                </c:when>
                <c:otherwise>
                    <li>
                        <a id="btnCadastroProjeto" href="./MeusConcursos">
                            Meus Concursos
                        </a>
                    </li>
                </c:otherwise>
            </c:choose>
            <li>
                <a id="btnListarProjetos" href="./Perfil">
                    Meu Perfil
                </a>
            </li>
        </ul>
        <ul class="nav navbar-nav">
            <ul class="nav navbar-nav navbar-right">
                <li class="nav-registration">
                    <c:choose>
                        <c:when test="${sessionScope.sessionCandidato == null && sessionScope.sessionEmpresa == null}">
                            <a href="./Login">Login</a>
                        </c:when>    
                        <c:otherwise>
                           <a href="./Logout">Logout</a>
                        </c:otherwise>
                    </c:choose>
                </li>
            </ul>
        </ul>
    </div>
</nav>

