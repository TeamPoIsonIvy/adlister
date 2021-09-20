package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);


    List<Ad>getBySearchTerm(String searchTerm);

    List<Ad> getUserAds(long id) throws SQLException;


    void updateAds(Ad ad);

    void deleteAds(long adId);

    Ad findOneAd(long id) ;





}
