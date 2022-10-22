/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Dao.AccountDAO;
import Model.Account;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

/**
 *
 * @author Admin
 */
public class LoginServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        boolean flag = false;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean rememberMe = request.getParameter("rememberme") != null;
        
        
        // lay file trong web.xml
        AccountDAO dao = new AccountDAO();
        Account a = null;
        a = dao.getAccountLogin(username, password);
        List<Account> list = dao.getAllAccount();
        try {
                //ko nhập gì cả
                if (username == null || username.equals("") || password == null | password.equals("")) {
                    request.setAttribute("mess", "User name or passwwor has wrong!");
                    request.setAttribute("username", username);
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    if (rememberMe) {
                        for (Account acc : list) {
                            if (username.equals(acc.getUsername()) && password.equals(acc.getPass())
                                    && acc.getRole().getId() == 0) {//admin role
                                session.setAttribute("email", acc.getEmail());
                                session.setAttribute("fullname", acc.getFullname());
                                session.setAttribute("username", acc.getUsername());
                                session.setAttribute("password", acc.getPass());
                                session.setAttribute("rememberme", rememberMe);
                                //cookie
                                Cookie cUsername = new Cookie("cusername", acc.getUsername());
                                Cookie cPassword = new Cookie("cpassword", acc.getPass());
                                cUsername.setMaxAge(60 * 60 * 24);
                                cPassword.setMaxAge(60 * 60 * 24);
                                response.addCookie(cUsername);
                                response.addCookie(cPassword);
                                response.sendRedirect("AdminIndex.jsp");
                                flag = true;
                            }
                            else if (username.equals(acc.getUsername()) && password.equals(acc.getPass())
                                    && acc.getRole().getId() == 2) {//customer
                                if(a.getStatus() == 1){
                                    session.setAttribute("email", acc.getEmail());
                                    session.setAttribute("fullname", acc.getFullname());
                                session.setAttribute("username", acc.getUsername());
                                session.setAttribute("password", acc.getPass());
                                session.setAttribute("rememberme", rememberMe);
                                //cookie
                                Cookie cUsername = new Cookie("cusername", acc.getUsername());
                                Cookie cPassword = new Cookie("cpassword", acc.getPass());
                                cUsername.setMaxAge(60 * 60 * 24);
                                cPassword.setMaxAge(60 * 60 * 24);
                                response.addCookie(cUsername);
                                response.addCookie(cPassword);
                                response.sendRedirect("persionalpage.jsp");
                                flag = true;
                                }
                                else{
                                       response.sendRedirect("Error.jsp");
                                   }
                            }
                        }
                    } else {

                        for (Account acc : list) {
                            if (username.equals(acc.getUsername()) && password.equals(acc.getPass())
                                    && acc.getRole().getId() == 0) {
                                session.setAttribute("email", acc.getEmail());
                                session.setAttribute("fullname", acc.getFullname());
                                session.setAttribute("username", acc.getUsername());
                                session.setAttribute("password", acc.getPass());
                                session.setAttribute("rememberme", rememberMe);
                                response.sendRedirect("AdminIndex.jsp");
                                flag = true;
                            }
                            else if (username.equals(acc.getUsername()) && password.equals(acc.getPass())
                                    && acc.getRole().getId() == 2) {//customer
                                   if(a.getStatus() == 1){
                                       session.setAttribute("email", acc.getEmail());
                                       session.setAttribute("status", acc.getStatus());
                                session.setAttribute("fullname", acc.getFullname());
                                session.setAttribute("username", acc.getUsername());
                                session.setAttribute("password", acc.getPass());
                                session.setAttribute("rememberme", rememberMe);
                                response.sendRedirect("persionalpage.jsp");
                                flag = true;
                                   }
                                   else{
                                       response.sendRedirect("Error.jsp");
                                   }
                            }
                        }
                    }
                    if (!flag) {
                        session.setAttribute("mess", "Wrong username or password!!!");
                        response.sendRedirect("login.jsp");
                    }
                }

        } catch (Exception e) {
            System.out.println("error: " + e);
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
