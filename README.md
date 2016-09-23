Se7eN Gaming - xDaViruS
# R3F_LOG1

Place R3F_LOG1 folder In your mission.pbo

In init.sqf
execVM "R3F_LOG\init.sqf"; // Regular Tow Script
execVM "R3F_LOG1\init.sqf"; // Tow Script for Seperate Vehicles

In description.ext
#include "R3F_LOG\desc_include.h" // Regular Tow Script
#include "R3F_LOG1\desc_include.h" // Tow Script for Seperate Vehicles

I made this setup becuase I wanted a specific vehicle (B_Truck_01_mover_F) to be able to tow Helis / Planes / Boats / Tanks, while the rest of the vehicles can tow what you want them to.

This script was designed by SLB2k11 and edited by xDaVIRUS from Se7eN Gaming.
This will be only up and available giving that he is okay with me sharing. 

Could not figure out how to include a different file to allow just one vehicle to tow different types of vehicles, this is the only way i have figured it out, If someone has a cleaner way to do so in the original R3F_LOG please inform me!

Thanks and hope you enjoy!

