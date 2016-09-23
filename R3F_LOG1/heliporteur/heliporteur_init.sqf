/**
 * Initialise un véhicule héliporteur
 * 
 * @param 0 l'héliporteur
 */

private ["_heliporteur"];

_heliporteur = _this select 0;

// Définition locale de la variable si elle n'est pas définie sur le réseau
if (isNil {_heliporteur getVariable "R3F_LOG1_heliporte"}) then
{
	_heliporteur setVariable ["R3F_LOG1_heliporte", objNull, false];
};

_heliporteur addAction [("<t color=""#00dd00"">" + STR_R3F_LOG1_action_heliporter + "</t>"), {_this call R3F_LOG1_FNCT_heliporteur_heliporter}, nil, 6, true, true, "", "!R3F_LOG1_mutex_local_verrou && R3F_LOG1_objet_addAction == _target && R3F_LOG1_action_heliporter_valide"];

_heliporteur addAction [("<t color=""#00dd00"">" + STR_R3F_LOG1_action_heliport_larguer + "</t>"), {_this call R3F_LOG1_FNCT_heliporteur_larguer}, nil, 6, true, true, "", "!R3F_LOG1_mutex_local_verrou && R3F_LOG1_objet_addAction == _target && R3F_LOG1_action_heliport_larguer_valide"];