CREATE TABLE categorie (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL
);

INSERT INTO categorie(libelle) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

ALTER TABLE plat ADD COLUMN id_categorie INTEGER REFERENCES categorie(id);

UPDATE plat SET id_categorie=1 WHERE nom ILIKE 'Romazava';
UPDATE plat SET id_categorie=1 WHERE nom ILIKE 'Ravitoto sy henakisoa';
UPDATE plat SET id_categorie=1 WHERE nom ILIKE 'Akoho sy voanio';

UPDATE plat SET id_categorie=2 WHERE nom ILIKE 'Mi sao';

UPDATE plat SET id_categorie=3 WHERE nom ILIKE 'Soupe chinoise';

UPDATE plat SET id_categorie=4 WHERE nom ILIKE 'Mofo gasy';

UPDATE plat SET id_categorie=5 WHERE nom ILIKE 'Ranon ampango';

ALTER TABLE plat ALTER COLUMN id_categorie SET NOT NULL;

ALTER TABLE plat ADD CONSTRAINT fk_plat_categorie FOREIGN KEY (id_categorie) REFERENCES categorie(id);