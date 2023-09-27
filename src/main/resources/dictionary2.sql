DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS statistic;
DROP TABLE IF EXISTS qae;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id int GENERATED ALWAYS AS IDENTITY NOT NULL,
    u_login varchar(16) NOT NULL,
    u_pass varchar(16) NOT NULL,
    first_name varchar(32),
    last_name varchar(32),
    email varchar(64) NOT NULL,
    CONSTRAINT pk_users_user_id PRIMARY KEY (user_id)
);

CREATE TABLE qae (
    record_id int GENERATED ALWAYS AS IDENTITY NOT NULL,
    eng_word varchar(256) NOT NULL,
    rus_word varchar(256) NOT NULL,
    example varchar(512),
    CONSTRAINT pk_qae_record_id PRIMARY KEY (record_id)
);

CREATE TABLE statistic (
    session_id int GENERATED ALWAYS AS IDENTITY NOT NULL,
    user_id int NOT NULL,
    number_of_questions int NOT NULL,
    number_of_true_answer int NOT NULL,
    session_date date NOT NULL,
    CONSTRAINT pk_statistic_session_id PRIMARY KEY (session_id),
    CONSTRAINT fk_statistic_user_id FOREIGN KEY (user_id)
        REFERENCES users(user_id) ON DELETE RESTRICT
);

CREATE TABLE address (
    address_id int GENERATED ALWAYS AS IDENTITY NOT NULL,
    country_id int NOT NULL,
    city_id int NOT NULL,
    street_id int NOT NULL,
    building varchar(8) NOT NULL,
    flat varchar(8) NOT NULL,
    build_extension varchar(8),
    user_id int NOT NULL,
    CONSTRAINT pk_address_address_id PRIMARY KEY (address_id)
);