Se7eN Gaming - xDaViruS
# R3F_LOG1

Place R3F_LOG1 folder In your mission.pbo
Next to your main R3F_LOG Folder

In init.sqf
execVM "R3F_LOG\init.sqf"; // Regular Tow Script
execVM "R3F_LOG1\init.sqf"; // Tow Script for Seperate Vehicles

In description.ext
#include "R3F_LOG\desc_include.h" // Regular Tow Script
#include "R3F_LOG1\desc_include.h" // Tow Script for Seperate Vehicles
