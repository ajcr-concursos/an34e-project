<%-- 
    Document   : Concursos
    Created on : 24/11/2017, 03:12:50
    Author     : Rafael Andrade
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Concursos</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
        <div class="col-sm-4conc">
            <h2>Concursos Disponíveis</h2>
            <form method="post">
                <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        String url = "jdbc:mysql://localhost:3306/gerenciaconcurso";
                        String username = "root";
                        String password = "1234";
                        String query = "select * from concurso join empresa on concurso.id_empresa = empresa.id order by concurso.nome";
                        Connection conn = DriverManager.getConnection(url, username, password);
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery(query);
                        while (rs.next()) {
                %>
                <div class="jumbotron text-center">
                    <p>
                        <a href="#"><p><%out.println(rs.getString("nome")); %></p></a>
                        <p><%out.println(rs.getInt("qtd_vagas")); %> vaga(s)</p>
                        <p><%out.println(rs.getDate("data_prova")); %></p>
                        <p><%out.println(rs.getString("empresa.nome")); %></p>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-8">
                                <a href=""><input type="submit" class="btn btn-default" value="Veja Mais"/>
                            </div>
                        </div>
                    </p>
                </div>
                <%
                    }
                %>
                <%
                        rs.close();
                        stmt.close();
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </form>
        </div>
    </body>
</html>
