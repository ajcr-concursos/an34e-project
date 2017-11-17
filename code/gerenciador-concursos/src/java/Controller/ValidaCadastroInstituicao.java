/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Candidato;
import Model.CandidatoDAO;
import Model.Instituicao;
import Model.InstituicaoDAO;
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
@WebServlet(name = "ValidaCadastroInstituicao", urlPatterns = {"/ValidaCadastroInstituicao"})
public class ValidaCadastroInstituicao extends HttpServlet {
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
        String nome = request.getParameter("txtNomeCadastroInstituicao");
        String email = request.getParameter("txtEmailCadastroInstituicao");
        String senha = request.getParameter("txtSenhaCadastroInstituicao");
        String CNPJ = request.getParameter("txtCNPJCadastro");
        Instituicao inst = new Instituicao();
        inst.setNome(nome);
        inst.setCNPJ(CNPJ);
        inst.setSenha(senha);
        inst.setEmail(email);
        InstituicaoDAO dao = new InstituicaoDAO();
        dao.insert(inst);
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
