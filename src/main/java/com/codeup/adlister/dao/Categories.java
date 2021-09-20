package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Categories {
    List<Categories> all();

    List<Ad>getBySearchTerm(String searchTerm);

}
