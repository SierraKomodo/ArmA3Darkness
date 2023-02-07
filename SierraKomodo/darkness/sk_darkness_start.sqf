// Block action
sk_darkness_event_processing = TRUE;
publicVariable "sk_darkness_event_processing";


// Inform curators
{["Darkness is starting."] remoteExec ["hint", _x]} forEach (units curators);


// Set fog
[sk_darkness_fog_transition, [sk_darkness_fog, sk_darkness_fog_decay, sk_darkness_fog_height]] remoteExec ["setFog", 2];
sleep sk_darkness_fog_transition;


// Set weather
[0, sk_darkness_overcast] remoteExec ["setOvercast", 2];
[0, sk_darkness_rain] remoteExec ["setRain", 2];
[0, sk_darkness_wind] remoteExec ["setWindForce", 2];
[0, sk_darkness_lightning] remoteExec ["setLightnings", 2];
remoteExec ["forceWeatherChange", 2];


// Enable the event
sk_darkness_active = TRUE;
publicVariable "sk_darkness_active";


// Unblock action
sk_darkness_event_processing = FALSE;
publicVariable "sk_darkness_event_processing";


// Inform curators
{["Darkness has finished starting."] remoteExec ["hint", _x]} forEach (units curators);
