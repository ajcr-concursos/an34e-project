/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Valida;

import Model.Candidato;
import Model.CandidatoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author André Rodrigues
 */
@WebServlet(name = "ValidaCadastro", urlPatterns = {"/ValidaCadastro"})
public class ValidaCadastro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet ValidaCadastro</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet ValidaCadastro at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }


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
        String nome = request.getParameter("txtNomeCadastro");
        String email = request.getParameter("txtEmailCadastro");
        String senha = request.getParameter("txtSenhaCadastro");
        String CPF = request.getParameter("txtCPFCadastro");
        Calendar dataNasc = Util.ValidaDataNascimento( request.getParameter("txtDataNascimento"));
        Candidato c = new Candidato();
        c.setNome(nome);
        c.setCPF(CPF);
        c.setSenha(senha);
        c.setEmail(email);
        c.setDataNascimento(Calendar.getInstance());
        CandidatoDAO dao = new CandidatoDAO();
        dao.insert(c);
        response.sendRedirect("./Inicio");
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
