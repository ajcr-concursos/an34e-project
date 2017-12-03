<%-- 
    Document   : Empresas
    Created on : 24/11/2017, 04:01:47
    Author     : Rafael Andrade
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="BD.BancoDados" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresas</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
        <div class="col-sm-4conc">
            <h2>Empresas</h2>
            <form method="post">
   
                <table class="table table-hover">
                    <thead class="thead-inverse">
                        <tr>
                            <th>
                                Nome
                            </th>
                            <th>
                                Email
                            </th>
                            <th>
                                Rua
                            </th>
                            <th>
                                Bairro
                            </th>

                            <th>Numero</th>
                            <th>Numero</th>
                        </tr>
                    </thead>
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            String url = "jdbc:mysql://localhost:3306/gerenciaconcurso";
                            String username = "root";
                            String password = "1234";
                            String query = "select * from empresa order by nome";
                            Connection conn = DriverManager.getConnection(url, username, password);
                            Statement stmt = conn.createStatement();
                            ResultSet rs = stmt.executeQuery(query);
                            while (rs.next()) {
                    %>
                    <tbody>
                        <tr>
                            <td><a href="#"><p><%out.println(rs.getString("nome")); %></a></td>
                            <td><%out.println(rs.getString("email")); %></td>
                            <td><%out.println(rs.getString("rua") == null ? "" : rs.getString("rua")); %></td>
                            <td><%out.println(rs.getString("bairro")); %></td>
                            <td>
                                <%out.println("Numero "); %>
                            </td>
                            <td>
                                <%out.println(rs.getString("numero")); %>
                            </td>
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
            </form>
        </div>
    </body>
</html>
