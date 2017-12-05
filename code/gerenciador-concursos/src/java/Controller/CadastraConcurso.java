/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author andre
 */
@WebServlet(name = "CadastraConcurso", urlPatterns = {"/CadastraConcurso"})
public class CadastraConcurso extends HttpServlet {

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
        HttpSession session = request.getSession();
        String nome = request.getParameter("txtNome");
        int qtdVagas = Integer.parseInt(request.getParameter("txtQtdVagas"));
        Calendar dataProva = Util.ValidaDataNascimento(request.getParameter("txtDataProva"));
        String area = request.getParameter("txtArea");
        System.out.println("area do concurso "+ area +"\nnome Concurso "+ nome);
        Concurso c = new Concurso();
        c.setEmpresa((Instituicao)session.getAttribute("sessionEmpresa"));
        c.setNome(nome);
        c.setQtdVagas(qtdVagas);
        c.setDataProva(dataProva);
        ConcursoDAO cDao = new ConcursoDAO();
        cDao.insert(c);
        //area e o nome da area utilizada para dar insert em area concurso;
        cDao.insertAreaConcurso(nome, area);
        response.sendRedirect("./MeusConcursos");
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
