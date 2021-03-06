/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
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
 * @author POM
 */
public class FavServlet extends HttpServlet {

    @PersistenceUnit(unitName = "WebApplication3PU")
    EntityManagerFactory emf;
    @Resource
    UserTransaction utx;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        HttpSession session = request.getSession();
        if (session == null || session.getAttribute("account") == null) {
            getServletContext().getRequestDispatcher("/Login").forward(request, response);
            return;
        }

        String name = request.getParameter("name");
        String photo = request.getParameter("photo");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String idStr = request.getParameter("id");
        
        int id = Integer.parseInt(idStr);

        int value = Integer.parseInt(price);

        Account acc = (Account) session.getAttribute("account");
        Favorite fav = new Favorite();
        FavoriteJpaController fCtrl = new FavoriteJpaController(utx, emf);
        fav.setAccid(acc.getAccid());
        fav.setProductid(value);
        fav.setProductdescription(description);
        fav.setProductname(name);
        fav.setProductphoto(photo);
        fav.setProductprice(value);
        fCtrl.create(fav);
        
        
        getServletContext().getRequestDispatcher("/newIndex").forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(FavServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(FavServlet.class.getName()).log(Level.SEVERE, null, ex);
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
