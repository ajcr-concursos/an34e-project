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
                    <h2 class="text-center col-sm-10">Buscar Conscursos</h2>
                    <table class = "tabela">
                        <tr>
                            <th>Concursos</th>
                            <th>Area     </th> 
                            <th>data      </th>
                        </tr>
                        <tr>
                            <td>concurso1 </td>
                            <td>area </td>
                            <td>dd/mm/aaaa</td>
                        </tr>
                        <tr>
                            <td>consurso2 </td>
                            <td>area</td>
                            <td>dd/mm/aaaa</td>
                        </tr>
                        <tr>
                            <td>concurso3 </td>
                            <td>area</td>
                            <td>dd/mm/aaaa</td>
                        </tr>
                    </table>
                </div>
                
                <form action="./BuscarConcursos" method="POST">
                    <h4 class="text-center col-sm-10"><input type="checkbox" name="area1" value="area1">Area1</h4>
                    <h4 class="text-center col-sm-10"><input type="checkbox" name="area2" value="area1">Area2</h4>
                    <h4 class="text-center col-sm-10"><input type="checkbox" name="area3" value="area1">Area3</h4>
                    <h4 class="text-center col-sm-10"><input type="checkbox" name="area4" value="area1">Area4</h4>
                </form> 
                <div class="row">
                    <form class="form-horizontal" action="./BuscarConcursos" method="POST">
                        <h4 class="text-center col-sm-10"><input type=submit name="busca" value="Buscar"></h4>
                    </form>
                </div>
                
            </div>
        </div> 
        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>