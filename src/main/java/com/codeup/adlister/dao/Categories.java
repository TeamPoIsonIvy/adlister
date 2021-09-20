package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;

import java.sql.SQLException;
import java.util.List;

public interface Categories {
    List<Category> all();
    // insert a new ad and return the new ad's id
    Long insert(Category category);

    List<Category>getBySearchTerm(String searchTerm);


    void deleteCategories(long categoryId);


}
