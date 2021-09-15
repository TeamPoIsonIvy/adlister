<%--
  Created by IntelliJ IDEA.
  User: kennethvincent
  Date: 9/15/21
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>


import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


@WebServlet(name = "controllers.AdShowServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setAttribute("ads", DaoFactory.getAdsDao().all());
request.getRequestDispatcher("/WEB-INF/ads/show.jsp").forward(request, response);
}
}
