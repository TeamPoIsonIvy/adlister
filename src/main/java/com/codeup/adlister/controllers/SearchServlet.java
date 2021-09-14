package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String searchTerm = request.getParameter("search");
        if (DaoFactory.getAdsDao().getBySearchTerm(searchTerm) == null) {
            response.sendRedirect("/ads/create");
            return;
        }

        request.setAttribute("ads", DaoFactory.getAdsDao().getBySearchTerm(searchTerm));
        request.getRequestDispatcher("/WEB-INF/search.jsp")
                .forward(request, response);
    }

}
