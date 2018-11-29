/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.UserTransaction;
import model.Account;
import model.Favorite;
import model.controller.FavoriteJpaController;

/**
 *
 * @author SarinratBeauty
 */
public class RemoveFavServlet extends HttpServlet {

    @PersistenceUnit(unitName = "WebApplication3PU")
    EntityManagerFactory emf;
    @Resource
    UserTransaction utx;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (session == null || session.getAttribute("account") == null) {
            getServletContext().getRequestDispatcher("/Login").forward(request, response);
            return;
        }
        Account acc = (Account) session.getAttribute("account");
        FavoriteJpaController fCtrl = new FavoriteJpaController(utx, emf);
        String pId = request.getParameter("id");
        int id = Integer.parseInt(pId);
        List<Favorite> favList = fCtrl.findFavoriteEntities();
        List<Favorite> favorite = new ArrayList<>();

        for (Favorite favorite1 : favList) {
            if (Objects.equals(favorite1.getProductid(), id))  {
                favorite.remove(favorite1);
            }
        }

        request.setAttribute("fav", favorite);
        getServletContext().getRequestDispatcher("/Fav.jsp").forward(request, response);
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
