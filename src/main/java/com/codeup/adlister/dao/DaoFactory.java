package com.codeup.adlister.dao;


import com.codeup.adlister.models.Ad;
import com.codeup.adlister.util.Config;

public class DaoFactory<show> {
    private static Ads adsDao;
    private static Users usersDao;
    private static Ad adDao;
    private static final Config config = new Config();


    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

    public static Ad getAd() {
        if (adDao == null) {
            adDao = new Ad(config);
        }
        return adDao;
    }
}
