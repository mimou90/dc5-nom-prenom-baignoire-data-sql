/*Trouver tous les officiers et intermédiaires qui ont une association */

SELECT  officer.name as officier, officer.id as id_officier, assoc_inter_offi.assoc_type as Type_association, intermediary.name as intermédiaire, intermediary.id as id_intermédiair
FROM officer
INNER JOIN intermediary ON assoc_inter_offi.inter = intermediary.id
INNER JOIN assoc_inter_offi ON officer.id = assoc_inter_offi.officer