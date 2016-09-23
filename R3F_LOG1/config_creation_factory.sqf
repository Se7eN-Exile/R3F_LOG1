/**
 * CREATION FACTORY CONFIGURATION FILE
 * 
 * English and French comments
 * Commentaires anglais et français
 * 
 * (EN)
 * This file contains the predefined lists of available categories in the creation factory.
 * The objects/vehicles categories are the same as in the mission editor.
 * It corresponds to the tree CfgVehicleClasses in the config file.
 * To add a category in one of the lists, you must write its class name. Use the BIS' "Config viewer".
 * 
 * To understand the white or black list system, read also the needed parameters in USER_FUNCT\init_creation_factory.sqf
 * There are three white list "FULL", "MEDIUM" and "LIGHT", and a black list.
 * The black list is used if no white list is mentioned when calling USER_FUNCT\init_creation_factory.sqf.
 * 
 * (FR)
 * Ce fichier contient la liste des catégories disponibles dans l'usine de création.
 * Les catégories d'objets/véhicules sont les mêmes que dans l'éditeur de mission.
 * Cela correspond à l'arborescence CfgVehicleClasses dans le config file.
 * Pour ajouter une catégorie dans une des listes, vous devez écrire son nom de classe. Utilisez le "Config viewer" de BIS.
 * 
 * Pour comprendre le système de white/black list, consultez les paramètres requis par USER_FUNCT\init_creation_factory.sqf
 * Il y a trois white list "FULL", "MEDIUM" and "LIGHT", et une black list.
 * La black list est utilisée si aucune white list n'est mentionnée lors de l'appel de USER_FUNCT\init_creation_factory.sqf.
 */

/**
 * SELL BACK REIMBURSEMENT RATE
 * 
 * Rate of reimbursement from the buying price granted to the factory when the object is send back to it.
 * Value of 0 means no credits back, 0.5 means half buying price, 1 means full buying price, and so on.
 * Set to -1 to disable the possibility to give back objects to the creation factory.
 * Note : the reimbursement amount take also into account of the damage level of the object.
 * 
 * Taux de remboursement par rapport au prix d'achat accordé à l'usine lors de la restitution d'un objet.
 * Une valeur de 0 signifie pas de crédits en retour, 0.5 donne 50% du prix d'achat, 1 correspond à 100% du prix d'achat.
 * Mettre à -1 pour désactiver la possibilité de redonner les objets à l'usine de création.
 * Note : le montant du remboursement prend aussi en compte l'état (dommage) de l'objet.
 */
R3F_LOG1_CFG_CF_sell_back_bargain_rate = 0.75;

/**
 * LIGHT WHITE LIST
 * Categories of objects/vehicles available in a "LIGHT" factory (see USER_FUNCT\init_creation_factory.sqf).
 */
R3F_LOG1_CFG_CF_whitelist_light_categories =
[

];

/**
 * MEDIUM WHITE LIST
 * Categories of objects/vehicles available in a "MEDIUM" factory (see USER_FUNCT\init_creation_factory.sqf).
 * It includes all the categories of the "LIGHT" list, and the listed categories below.
 */
R3F_LOG1_CFG_CF_whitelist_medium_categories = R3F_LOG1_CFG_CF_whitelist_light_categories +
[

];

/**
 * FULL WHITE LIST
 * Categories of objects/vehicles available in a "FULL" factory (see USER_FUNCT\init_creation_factory.sqf).
 * It includes all the categories of the "MEDIUM" list, and the listed categories below.
 */
R3F_LOG1_CFG_CF_whitelist_full_categories = R3F_LOG1_CFG_CF_whitelist_medium_categories +
[

];

/**
 * BLACK LIST
 * Categories of objects/vehicles to deny if no white list is set to the factory (see USER_FUNCT\init_creation_factory.sqf).
 */
R3F_LOG1_CFG_CF_blacklist_categories =
[

];

/**
 * CREATION COST FACTOR
 * 
 * Multiplication factor to fix the CfgVehicles' "cost" property values of vehicles/objects.
 * It permits to have a better homogeneity between values.
 * For example a SDV (Submarine) has a cost (divided by 100) of 100 and a Hunter (Car) of 5000.
 * By fixing the values with factors, the SDV (Submarine) costs 100x4000 = 400.000 and the Hunter (Car) 5000x12 = 60.000.
 * The format of the array is ["categorie class name", multiplication factor].
 * All non-listed categories have a factor of 1x.
 * 
 * Facteur de multiplication pour corriger la propriété "cost" des objets/véhicules dans le CfgVehicles.
 * Par exemple, un sous-marins SDV (Submarine) a un coût (divisé par 100) de 100 et un Hunter (Car) du 5000.
 * En appliquant un facteur de correction, le SDV (Submarine) vaut 100x4000 = 400 000 et le Hunter (Car) 5000x12 = 60 000.
 * Le format du tableau est ["nom de classe de la catégorie", facteur de multiplication]
 * Les catégories non listées ont un facteur de 1x.
 */
R3F_LOG1_CFG_CF_creation_cost_factor =
[

];