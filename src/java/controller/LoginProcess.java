/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UserDao;

/**
 *
 * @author demonslight998
 */
public class LoginProcess extends HttpServlet {

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
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      UserDao userDao = new UserDao();
      boolean existedUser = userDao.checkExistedUser(username);
      if (existedUser) {
        boolean checkPass = userDao.checkPassword(username, password);
        if (checkPass) {
          request.setAttribute("user", new User(username, password));
          request.getRequestDispatcher("").forward(request, response);
        } else {
          request.setAttribute("error", "Wrong password");
          request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
      } else {
        request.setAttribute("error", "User not found !");
        request.getRequestDispatcher("Login.jsp").forward(request, response);
      }
    } catch (Exception ex) {
      ex.printStackTrace();
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