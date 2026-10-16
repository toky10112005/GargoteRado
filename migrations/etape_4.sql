CREATE TABLE client(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

CREATE TABLE client_type(
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(20) NOT NULL
);

CREATE TABLE client_detail(
    id SERIAL PRIMARY KEY,
    id_client INTEGER NOT NULL,
    id_client_type INTEGER NOT NULL DEFAULT 2,
    FOREIGN KEY (id_client) REFERENCES client(id),
    FOREIGN KEY (id_client_type) REFERENCES client_type(id)
);

INSERT INTO client (nom) VALUES ('John'), ('Smith');
INSERT INTO client_type(libelle) VALUES ('Particulier'), ('Passage');
INSERT INTO client_detail(id_client, id_client_type) VALUES (1, 1), (2, 2);

ALTER TABLE commande ADD COLUMN id_client INTEGER REFERENCES client(id);

UPDATE commande SET id_client=1 WHERE id=1;
UPDATE commande SET id_client=2 WHERE id=2;

ALTER TABLE commande ALTER COLUMN id_client SET NOT NULL;
ALTER TABLE commande ADD CONSTRAINT fk_commande_client FOREIGN KEY (id_client) REFERENCES client(id);