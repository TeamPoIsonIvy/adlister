package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "AdShowServlet", urlPatterns = "/ads/show" )

public class AdShowServlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
        Long id = Long.parseLong(req.getParameter("id"));

        Ad ad = DaoFactory.getAdsDao().getAd(id);

        req.getRequestDispatcher("/WEB-INF/ads/index.jsp");
    }

}
