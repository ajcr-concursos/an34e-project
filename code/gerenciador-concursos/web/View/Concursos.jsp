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
        <script src="js/jquery-3.2.1.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.mask.js"></script>
        <script>
            $("document").ready(function(){
                $("#btnNovoConcurso").click(function(){
                    $("#frmCadastroConcurso").modal();
                });
                    
            });
        </script>
    </head>
    <body>
        <jsp:include page="Shared/Nav.jsp"/>
        <div class="container">
            <h2>Concursos Disponíveis</h2>
            
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
                            <th>
                                Empresa
                            </th>

                            <th>Opções</th>
                        </tr>
                    </thead>
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            String url = "jdbc:mysql://localhost:3306/gerenciaconcurso";
                            String username = "root";
                            String password = "49618";
                            String query = "select * from concurso join empresa on concurso.id_empresa = empresa.id order by concurso.nome";
                            Connection conn = DriverManager.getConnection(url, username, password);
                            Statement stmt = conn.createStatement();
                            ResultSet rs = stmt.executeQuery(query);
                            while (rs.next()) {
                    %>


                    <tbody>
                        <tr>
                            <td><%out.println(rs.getString("nome")); %></td>
                            <td><%out.println(rs.getInt("qtd_vagas")); %> vaga(s)</td>
                            <td><%out.println(rs.getDate("data_prova")); %></td>
                            <td><%out.println(rs.getString("empresa.nome")); %></td>
                            <td><a href=""><input type="submit" class="btn btn-default" value="Veja Mais"/></td>
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
        <!-- Modal -->
        <div class="modal fade" id="frmCadastroConcurso" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Cadastrar concurso</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" method="POST" action="./CadastraConcurso">
                            <div class="form-group">
                                <label class="control-label col-sm-2" >Nome</label>
                                <input type="text" class="form-control" name="txtNome"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" >Qtd. Vagas</label>
                                <input type="text" class="form-control" name="txtQtdVagas"/>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" >Data prova</label>
                                <input type="text" class="form-control" name="txtDataProva"/>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                     
                                </div>
                                <div class="col-lg-6">
                                      <input type="submit" class="form-control btn btn-default" value="salvar"/>
                                </div>
                            </div>
                           
                        </form>
                    </div>  
                    <div class="modal-footer">
                        <span class="text-right"><button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button></span>
                    </div>
                </div>

            </div>
        </div>

    </div>

</body>
</html>
