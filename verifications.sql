-- Etape 1:

SELECT * FROM plat ORDER BY plat.prix DESC;

-- Etape 2:
SELECT categorie.libelle,count(plat.id)
FROM categorie
LEFT JOIN plat
ON plat.id_categorie=categorie.id
GROUP BY categorie.id,categorie.libelle;

--Etape 3:

SELECT SUM(p.prix*cd.quantite) AS total, c.date_commande,c.id
FROM commande c
JOIN commande_details  cd ON c.id=cd.id_commande
JOIN plat p ON cd.id_plat=p.id
GROUP By c.id,c.date_commande
ORDER BY c.date_commande DESC;

--Etape 4:

SELECT
    c.id AS id_commande,
    c.date_commande,
    cl.nom AS nom_client,
    ct.libelle AS type_client
FROM commande AS c
JOIN client AS cl ON cl.id = c.id_client
JOIN client_detail AS cd ON cd.id_client = cl.id
JOIN client_type AS ct ON ct.id = cd.id_client_type
ORDER BY c.date_commande DESC;
