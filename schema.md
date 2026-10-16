## Etape1
plat(**id**, nom, prix, #id_categorie);

Piège:Pour le type du prix on utilise DECIMAL(10,2),

## Etape2
categorie(**id_categorie**, libelle); (nouveau)
plat(**id**, nom, prix, #id_categorie); (modifié)

Piège:On ne peut pas simplement ajouter categorie VARCHAR(50) à la table plat car celà nous permet d'avoir une performance maximal(niveau maintenabilité et rapidité).
exemple concret:Ici on nous demande d'ajouter des catégorie au plat existant.il serais préférable de créer un table et d'associer les plats au catégorie correspondant au lieux de renommer un champs plusieurs fois.

