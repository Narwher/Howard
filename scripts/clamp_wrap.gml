/// @desc clamp_wrap
/// @param variable
/// @param min
/// @param max

var newVar = argument0;
var valMin = argument1;
var valMax = argument2;

if (newVar > valMax ) { newVar = valMin; }
if (newVar < valMin ) { newVar = valMax; }
return newVar;
