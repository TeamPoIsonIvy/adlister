USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);

CREATE TABLE mainCategory (
                         id INT UNSIGNED AUTO_INCREMENT,
                         category VARCHAR(100) NOT NULL,
                         PRIMARY KEY(id),
                         UNIQUE (category)
);

CREATE TABLE subCategory (
                        id INT UNSIGNED AUTO_INCREMENT,
                        main_id INT UNSIGNED NOT NULL,
                        category VARCHAR(100) NOT NULL,
                        PRIMARY KEY(id),
                        FOREIGN KEY (main_id) REFERENCES mainCategory(id)
);
CREATE TABLE adCategories (
                              ad_id INT UNSIGNED NOT NULL,
                              mainCat_id INT UNSIGNED NOT NULL,
                              subCat_id INT UNSIGNED NOT NULL,
                              FOREIGN KEY (ad_id) REFERENCES ads(id),
                              FOREIGN KEY (mainCat_id) REFERENCES mainCategory(id),
                              FOREIGN KEY (subCat_id) REFERENCES subCategory(id)
);

