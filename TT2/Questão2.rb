CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL
);

CREATE TABLE event_registrations (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    event_id INT REFERENCES events(id) ON DELETE CASCADE,
    UNIQUE(user_id, event_id)  #Garante que um usuário não se inscreva mais de uma vez no mesmo evento
);

CREATE TABLE prizes (
    id SERIAL PRIMARY KEY,
    event_id INT REFERENCES events(id) ON DELETE CASCADE,
    user_id INT REFERENCES users(id) ON DELETE SET NULL,  #O prêmio pode não ter ganhador definido ainda
    description VARCHAR(255) NOT NULL,
    UNIQUE(event_id, id)  #Garante no máximo 3 prêmios por evento
);
