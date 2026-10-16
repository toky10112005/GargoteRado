-- Etape 1:

SELECT * FROM plat ORDER BY plat.prix DESC;

-- Etape 2:
SELECT categorie.libelle,count(plat.id)
FROM categorie
LEFT JOIN plat
ON plat.id_categorie=categorie.id
GROUP BY categorie.id,categorie.libelle;