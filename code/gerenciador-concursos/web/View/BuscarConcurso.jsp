<%-- 
    Document   : Login
    Created on : 02/11/2017, 15:28:33
    Author     : André Rodrigues
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
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
                    <%
                        try {
                            String query = "select * from concurso order by nome";
                            Connection conn = new BD.BancoDados().getConnection();
                            Statement stmt = conn.createStatement();
                            ResultSet rs = stmt.executeQuery(query);
                            while (rs.next()) {
                    %>
                    <tbody>

                        <tr>
                            <td><%out.println(rs.getString("nome")); %></td>
                            <td><%out.println(rs.getString("qtd_vagas")); %></td>
                            <td><%out.println(rs.getString("data_prova")); %></td>
                            <td><a href="./SeInscreva?idConcurso=<%=rs.getInt("id")%>"><button class="btn btn-primary" id="btnBuscar" name="btnInscricao"></span>Inscreva-se</button></a></td>

                        </tr>
                    <%
                        }
                    %>
                    </tbody>
                    <%
                            rs.close();
                            stmt.close();
                            conn.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </table>
            
        </div>
        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>