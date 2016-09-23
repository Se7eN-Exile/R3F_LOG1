/**
 * Larguer un objet en train d'être héliporté
 * 
 * @param 0 l'héliporteur
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

if (R3F_LOG1_mutex_local_verrou) then
{
	hintC STR_R3F_LOG1_mutex_action_en_cours;
}
else
{
	R3F_LOG1_mutex_local_verrou = true;
	
	private ["_heliporteur", "_objet"];
	
	_heliporteur = _this select 0;
	_objet = _heliporteur getVariable "R3F_LOG1_heliporte";
	
	_heliporteur setVariable ["R3F_LOG1_heliporte", objNull, true];
	_objet setVariable ["R3F_LOG1_est_transporte_par", objNull, true];
	
	// Détacher l'objet et lui appliquer la vitesse de l'héliporteur (inertie)
	[_objet, "detachSetVelocity", velocity _heliporteur] call R3F_LOG1_FNCT_exec_commande_MP;
	
	systemChat format [STR_R3F_LOG1_action_heliport_larguer_fait, getText (configFile >> "CfgVehicles" >> (typeOf _objet) >> "displayName")];
	
	R3F_LOG1_mutex_local_verrou = false;
};