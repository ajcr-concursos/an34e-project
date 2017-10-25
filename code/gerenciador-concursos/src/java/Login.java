/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author André Rodrigues
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("    <head>");
            out.println("        <title>	</title>");
            out.println("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">");
            out.println("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\">");
            out.println("        <meta charset=\"utf-8\">");
            out.println("    </head>");
            out.println("    <body>");
            out.println("        <nav class=\"navbar navbar-inverse\">");
            out.println("            <div class=\"container-fluid\">");
            out.println("                <div class=\"navbar-header\">");
            out.println("                    <div class=\"navbar-brand\">");
            out.println("                        <a href=\"Index.html\">AJCR Concursos</a>");
            out.println("                    </div>");
            out.println("                </div>");
            out.println("                <ul class=\"nav navbar-nav\">");
            out.println("                    <li>");
            out.println("                        <a id=\"btnCadastroColaborador\" href=\"/Projetos/CadastroColaborador\">");
            out.println("                            Item 1");
            out.println("                        </a>");
            out.println("                    </li>");
            out.println("                    <li>");
            out.println("                        <a id=\"btnCadastroProjeto\" href=\"/Projetos/CadastroProjeto\">");
            out.println("                            Item 2");
            out.println("                        </a>");
            out.println("                    </li>");
            out.println("                    <li>");
            out.println("                        <a id=\"btnListarProjetos\" href=\"/Projetos/ListarProjetos\">");
            out.println("                            Item 3");
            out.println("                        </a>");
            out.println("                    </li>");
            out.println("                    <li>");
            out.println("                        <a id=\"btnListarColaboradores\" href=\"/Projetos/ListarColaboradores\">");
            out.println("                            Item 4");
            out.println("                        </a>");
            out.println("                    </li>");
            out.println("                </ul");
            out.println("                <ul class=\"nav navbar-nav\">");
            out.println("                    <ul class=\"nav navbar-nav navbar-right\">");
            out.println("                        <li class=\"nav-registration\">");
            out.println("                            <a href=\"./Login\">");
            out.println("                                Login");
            out.println("                            </a>                      ");
            out.println("                        </li>");
            out.println("");
            out.println("                    </ul>");
            out.println("                </ul>");
            out.println("");
            out.println("            </div>");
            out.println("");
            out.println("        </nav>");
            out.println("        <div class=\"row\">");
            out.println("            ");
            out.println("            <div class=\"col-lg-6\"> ");
            out.println("                <div class=\"row\">");
            out.println("                    <h2 class=\"text-center col-sm-10\">Login</h2>");
            out.println("                </div>");
            out.println("                <form class=\"form-horizontal\">");
            out.println("                  <div class=\"form-group\">");
            out.println("                    <label for=\"txtEmail\" class=\"col-sm-2 control-label\">Email</label>");
            out.println("                    <div class=\"col-sm-10\">");
            out.println("                      <input type=\"email\" class=\"form-control\" id=\"txtEmail\" placeholder=\"Email\">");
            out.println("                    </div>");
            out.println("                  </div>");
            out.println("                  <div class=\"form-group\">");
            out.println("                    <label for=\"txtSenha\" class=\"col-sm-2 control-label\">Senha</label>");
            out.println("                    <div class=\"col-sm-10\">");
            out.println("                      <input type=\"password\" class=\"form-control\" id=\"txtSenha\" placeholder=\"Senha\">");
            out.println("                    </div>");
            out.println("                  </div>");
            out.println("                  <div class=\"form-group\">");
            out.println("                    <div class=\"col-sm-offset-2 col-sm-10\">");
            out.println("                      <div class=\"checkbox\">");
            out.println("                        <label>");
            out.println("                          <input type=\"checkbox\"> Lembrar-me");
            out.println("                        </label>");
            out.println("                      </div>");
            out.println("                    </div>");
            out.println("                  </div>");
            out.println("                  <div class=\"form-group\">");
            out.println("                    <div class=\"col-sm-offset-2 col-sm-10\">");
            out.println("                      <button type=\"submit\" class=\"btn btn-default\">Entrar</button>");
            out.println("                    </div>");
            out.println("                  </div>");
            out.println("                </form>");
            out.println("            </div>");
            out.println("            <div class=\"col-lg-6\">");
            out.println("                <div class=\"row\">");
            out.println("                    <h2 class=\"text-center col-sm-10\">Cadastro</h2>");
            out.println("                </div>");
            out.println("                <form class=\"form-horizontal\">");
            out.println("                    <div class=\"form-group\">");
            out.println("                        <label for=\"txtNomeCadastro\" class=\"col-sm-2 control-label\">Nome</label>");
            out.println("                        <div class=\"col-sm-10\">");
            out.println("                            <input type=\"text\" class=\"form-control\" id=\"txtNomeCadastro\" placeholder=\"Nome\">");
            out.println("                        </div>                       ");
            out.println("                    </div>");
            out.println("                    <div class=\"form-group\">");
            out.println("                        <label for=\"txtEmailCadastro\" class=\"col-sm-2 control-label\">Email</label>");
            out.println("                        <div class=\"col-sm-10\">");
            out.println("                          <input type=\"email\" class=\"form-control\" id=\"txtEmailCadastro\" placeholder=\"Email\">");
            out.println("                        </div>");
            out.println("                    </div>");
            out.println("                    <div class=\"form-group\">");
            out.println("                        <label for=\"txtSenhaCadastro\" class=\"col-sm-2 control-label\">Senha</label>");
            out.println("                        <div class=\"col-sm-10\">");
            out.println("                          <input type=\"password\" class=\"form-control\" id=\"txtSenhaCadastro\" placeholder=\"Senha\">");
            out.println("                        </div>");
            out.println("                    </div>");
            out.println("                    <div class=\"form-group\">");
            out.println("                        <label for=\"txtSenha\" class=\"col-sm-2 control-label\">Repita a senha</label>");
            out.println("                        <div class=\"col-sm-10\">");
            out.println("                            <input type=\"password\" class=\"form-control\" id=\"txtEmail\" placeholder=\"Repita a senha\">");
            out.println("                        </div>                       ");
            out.println("                    </div>");
            out.println("");
            out.println("");
            out.println("");
            out.println("                  <div class=\"form-group\">");
            out.println("                    <div class=\"col-sm-offset-2 col-sm-10\">");
            out.println("                      <button type=\"submit\" class=\"btn btn-default\">Cadastrar</button>");
            out.println("                    </div>");
            out.println("                  </div>");
            out.println("                </form>");
            out.println("            </div>");
            out.println("        </div>");
            out.println("        <footer class=\"footer bd-footer\">");
            out.println("            <div class=\"container\">");
            out.println("                <p class=\"text-center\">AJCR Concursos ®</p>");
            out.println("            </div>");
            out.println("        </footer>");
            out.println("    </body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
