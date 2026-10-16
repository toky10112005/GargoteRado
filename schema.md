## Etape1
plat(**id**, nom, prix, #id_categorie);

Piège:Pour le type du prix on utilise DECIMAL(10,2),

## Etape2
categorie(**id_categorie**, libelle); (nouveau)
plat(**id**, nom, prix, #id_categorie); (modifié)

Piège:On ne peut pas simplement ajouter categorie VARCHAR(50) à la table plat car celà nous permet d'avoir une performance maximal(niveau maintenabilité et rapidité).
exemple concret:Ici on nous demande d'ajouter des catégorie au plat existant.il serais préférable de créer un table et d'associer les plats au catégorie correspondant au lieux de renommer un champs plusieurs fois.

## Etape 3
commande(id,date_commande) (nouveau)
commande_details(id,id_commande,id_plat,quantite) (nouveau)

Piège:Je met la quantité dans la table commande_details car un plat peut être commandé plusieurs fois dans une même commande. Donc il est préférable de créer une table pour les détails de la commande afin de gérer les quantités et les relations entre les commandes et les plats.

## Etape 4
client(**id**, nom); (nouveau)
client_type(**id**, libelle); (nouveau)
client_detail(**id**, #id_client,#id_client_type); (nouveau)

commande(**id**, date_commande, #id_client); (modifié)

Piège:Ma clé etrangère est NoT NULL..il faut utiliser LEFT JOIN