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
            <h2>Concursos Disponiveis</h2>
            <br></br>
            <br></br>
            <div class="row ">
                <div class="col-sm-6 text-left"></div>
            </div>
            <form method="post" action="./SeInscreva">
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
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            String url = "jdbc:mysql://localhost:3306/gerenciaconcurso";
                            String username = "root";
                            String password = "1234";
                            String query = "select * from concurso order by nome";
                            Connection conn = DriverManager.getConnection(url, username, password);
                            Statement stmt = conn.createStatement();
                            ResultSet rs = stmt.executeQuery(query);
                            while (rs.next()) {
                    %>
                    <tbody>
                    <c:forEach items="${lstConcursos}" var="item" >
                        <tr>
                            <td><%out.println(rs.getString("nome")); %></td>
                            <td><%out.println(rs.getString("qtd_vagas")); %></td>
                            <td><%out.println(rs.getString("data_prova")); %></td>
                            <td><a href="./SeIncreva"><button class="btn btn-primary" id="btnBuscar" name="btnInscricao"></span>Inscreva-se</button></a></td>
                        </tr>
                    </c:forEach>
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
            </form>
        </div>
        <jsp:include page="Shared/Footer.jsp"/>
    </body>
</html>