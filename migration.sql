USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username),
    UNIQUE (email)
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

CREATE TABLE Categories (
                            id INT UNSIGNED NOT NULL AUTO_INCREMENT,

                            title VARCHAR(240) NOT NULL,
                            PRIMARY KEY (id)


);

CREATE TABLE ads_categories (
                             ads_id INTEGER UNSIGNED NOT NULL,
                             categories_id INTEGER UNSIGNED NOT NULL,
                             FOREIGN KEY (ads_id) REFERENCES ads(id),
                             FOREIGN KEY (categories_id) REFERENCES Categories(id)
);



