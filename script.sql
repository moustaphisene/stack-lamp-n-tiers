CREATE DATABASE IF NOT EXISTS tdsi;

CREATE USER IF NOT EXISTS 'admin' IDENTIFIED BY 'votre de passe';

GRANT ALL PRIVILEGES ON tdsi.* TO 'admin';

USE tdsi;

CREATE TABLE IF NOT EXISTS pages (
                                     id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    content TEXT,
    INDEX(title)
    ) engine=InnoDB;

INSERT IGNORE INTO pages VALUES (1, 'Bienvenue', 'Bienvenue sur la nouvelle page de votre nouveau site web institutionnel');
