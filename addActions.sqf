// THIS IS NOT A COMPLETE ADDACTIONS.SQF
// The following should be added to your mission's existing addActions.sqf if present. If not, then you can just use this file as-is.
// Be sure to merge sections together if you already have the curators section.


/// CURATORS ACTIONS
if (player in (units curators)) then {
	// Add action to curators group to trigger darkness
	player addAction
	[
		"Darkness Start",	// title
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
			[] spawn SK_fnc_DarknessStart;
		},					// script
		nil,				// arguments
		0,					// priority
		true,				// showWindow
		true,				// hideOnUse
		"",					// shortcut
		"_target == _this && !sk_darkness_active && !sk_darkness_event_processing",	// condition
		0,					// radius
		false,				// unconscious
		"",					// selection
		""					// memoryPoint
	];

	// Add action to curators group to trigger darkness
	player addAction
	[
		"Darkness Stop",	// title
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
			[] spawn SK_fnc_DarknessStop;
		},					// script
		nil,				// arguments
		0,					// priority
		true,				// showWindow
		true,				// hideOnUse
		"",					// shortcut
		"_target == _this && sk_darkness_active && !sk_darkness_event_processing",	// condition
		0,					// radius
		false,				// unconscious
		"",					// selection
		""					// memoryPoint
	];
};
