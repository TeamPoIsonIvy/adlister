package com.codeup.adlister.dao;

<<<<<<< HEAD
import com.codeup.adlister.util.Config;
=======
import com.codeup.adlister.Config;
>>>>>>> 41acc754373e96c5c76ce3b668015b4d4a45f7b1

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
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
}
