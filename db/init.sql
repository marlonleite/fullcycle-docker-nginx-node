CREATE DATABASE nodedb;

\c nodedb;

CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    username character varying(255) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

INSERT INTO people (id, username) VALUES 
(1, 'zeuxis'),
(2, 'valter'),
(3, 'victor');
