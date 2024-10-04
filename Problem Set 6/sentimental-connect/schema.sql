CREATE TABLE `users`(
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(35) NOT NULL,
    `username` VARCHAR(80) NOT NULL UNIQUE,
    `password` VARCHAR(100) NOT NULL,
    PRIMARY KEY(`id`)
);


CREATE TABLE `schools`(
    `id` INT AUTO_INCREMENT,
    `school_name` VARCHAR(100) NOT NULL,
    `school_type` ENUM(`Primary`,`Secondary`,`Higher Education`) NOT NULL,
    `school_location` VARCHAR(150),
    `school_founded_year` INT,
    PRIMARY KEY(`id`)
);

CREATE TABLE `companies`(
    `id` INT AUTO_INCREMENT,
    `company_name` VARCHAR(200) NOT NULL,
    `company_industry` ENUM(`Technology`,`Education`,`Business`) NOT NULL,
    `company_location` VARCHAR(200),
    PRIMARY KEY(`id`)
);


CREATE TABLE `connections_people`(
    `user_id_1` INT NOT NULL,
    `user_id_2` INT NOT NULL,
    PRIMARY KEY(`user_id_1`,`user_id_2`),
    FOREIGN KEY(`user_id_1`) REFERENCES `users`(`id`),
    FOREIGN KEY(`user_id_2`) REFERENCES `users`(`id`)

);

CREATE TABLE `connections_schools`(
    `user_id` INT NOT NULL,
    `school_id` INT NOT NULL,
    `start_date` DATE,
    `end_date` DATE,
    `status` ENUM(`earned`,`pursued`) NOT NULL,
    `type` VARCHAR(25) NOT NULL,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`schools_id`) REFERENCES `schools`(`id`)

);

CREATE TABLE `connections_companies`(
    `user_id` INT NOT NULL,
    `company_id` INT NOT NULL,
    `start_date` DATE,
    `end_date` DATE,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
);
