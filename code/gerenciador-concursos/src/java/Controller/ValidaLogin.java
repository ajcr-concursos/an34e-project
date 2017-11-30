/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author André Rodrigues
 */
@WebServlet(name = "ValidaLogin", urlPatterns = {"/ValidaLogin"})
public class ValidaLogin extends HttpServlet {
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
        String email = request.getParameter("txtEmail");
        String senha = request.getParameter("txtSenha");
        String radio = request.getParameter("tipoLogin");
        CandidatoDAO cDAO;
        InstituicaoDAO iDAO;
        Usuario u;
        if("candidato".equals(radio)){
            cDAO = new CandidatoDAO();
            u = cDAO.getCandidato(email, senha);
        }else{
            iDAO = new InstituicaoDAO();
            u=iDAO.getInstituicao(email, senha);
        }
        if(u != null){
            HttpSession session = request.getSession();
            if(u instanceof Candidato){
                session.removeAttribute("sessionEmpresa");
                session.setAttribute("sessionCandidato", u.getEmail());
            }
            else{
                session.removeAttribute("sessionCandidato");
                session.setAttribute("sessionEmpresa", u.getEmail());
            }
                
            response.sendRedirect("./Inicio");
        }else{
            response.sendRedirect("./Login");
        }
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
