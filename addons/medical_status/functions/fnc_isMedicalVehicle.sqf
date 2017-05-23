/*
 * Author: Glowbal
 * Check if vehicle is a medical vehicle
 *
 * Arguments:
 * 0: The Vehicle <OBJECT>
 *
 * ReturnValue:
 * Is in of medic class <BOOL>
 *
 * Example:
 * [cursorObject] call ace_medical_fnc_isMedicalVehicle
 *
 * Public: Yes
 */
#include "script_component.hpp"

params ["_vehicle"];

(_vehicle getVariable [QGVAR(medicClass), getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "attendant")]) > 0
