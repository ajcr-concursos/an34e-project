<%-- 
    Document   : Layout
    Created on : 18/11/2017, 14:37:32
    Author     : André Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <div class="navbar-brand">
                <a href="./Inicio">AJCR Concursos</a>
            </div>
        </div>
        <ul class="nav navbar-nav">
            <li>
                <a id="btnCadastroProjeto" href="./Concursos">
                    Concursos
                </a>
            </li>
            <li>
                <a id="btnListarProjetos" href="./Empresas">
                    Empresas
                </a>
            </li>
        </ul
        <ul class="nav navbar-nav">
            <ul class="nav navbar-nav navbar-right">
                <li class="nav-registration">
                    <!--<if (session.getAttribute("session") != null) {
                                out.println(
                                        "<a href=\"./Sair\""
                                        + "Sair"
                                        + "</a>"
                                );
                            } else {
                                out.println(
                                        "<a href=\"./Login\""
                                        + "Login"
                                        + "</a>"
                                );
                            }
                        }>--> 
                    <a href="./Login">
                        Login
                    </a>
                </li>
            </ul>
        </ul>
    </div>
</nav>

