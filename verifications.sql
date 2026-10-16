-- Etape 1:

SELECT * FROM plat ORDER BY plat.prix DESC;

-- Etape 2:
SELECT categorie.libelle,count(plat.id)
FROM categorie
LEFT JOIN plat
ON plat.id_categorie=categorie.id
GROUP BY categorie.id,categorie.libelle;

--Etape 3:
commande,commande_details

SELECT SUM(p.prix*cd.quantite) AS total, c.date_commande,c.id
FROM commande c
JOIN commande_details  cd ON c.id=cd.id_commande
JOIN plat p ON cd.id_plat=p.id
GROUP By c.id,c.date_commande
ORDER BY c.date_commande DESC;
