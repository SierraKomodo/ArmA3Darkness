// Block action
sk_darkness_event_processing = TRUE;
publicVariable "sk_darkness_event_processing";


// Inform curators
{["Darkness is ending."] remoteExec ["hint", _x]} forEach (units curators);


// Disable event
sk_darkness_active = FALSE;
publicVariable "sk_darkness_active";


// Set weather
[0, sk_darkness_normal_overcast] remoteExec ["setOvercast", 2];
[0, sk_darkness_normal_rain] remoteExec ["setRain", 2];
[0, sk_darkness_normal_wind] remoteExec ["setWindForce", 2];
[0, sk_darkness_normal_lightning] remoteExec ["setLightnings", 2];
remoteExec ["forceWeatherChange", 2];


// Set fog
[sk_darkness_fog_transition, [sk_darkness_normal_fog, sk_darkness_normal_fog_decay, sk_darkness_normal_fog_height]] remoteExec ["setFog", 2];
sleep sk_darkness_fog_transition;


// Unblock action
sk_darkness_event_processing = FALSE;
publicVariable "sk_darkness_event_processing";


// Inform curators
{["Darkness has finished ending."] remoteExec ["hint", _x]} forEach (units curators);
