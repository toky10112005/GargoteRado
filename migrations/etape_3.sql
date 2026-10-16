
CREATE TABLE commande (
    id SERIAL PRIMARY KEY,
    date_commande TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE commande_details (
    id SERIAL PRIMARY KEY,
    id_commande INTEGER NOT NULL REFERENCES commande(id) ON DELETE CASCADE,
    id_plat INTEGER NOT NULL REFERENCES plat(id),
    quantite INTEGER NOT NULL CHECK (quantite > 0)
);

INSERT INTO commande(date_commande) VALUES 
('2026-10-16 12:00:00'),
('2026-10-16 13:00:00');

INSERT INTO commande_details(id_commande, id_plat, quantite) VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 1, 3);
