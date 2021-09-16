package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AdShowServlet", urlPatterns = "/AdShowPage")
public class AdShowPageServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
long getAdId = Long.parseLong(request.getParameter("id"));
        try {
        Ad addToShow =  DaoFactory.getAdsDao().findOneAd(getAdId);
        long userId = addToShow.getUserId();
        User user = DaoFactory.getUsersDao().findByID(userId);
            request.setAttribute("ad", addToShow);
            request.setAttribute("user", user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/WEB-INF/ads/AdShowPage.jsp").forward(request, response);
    }
}
