// THIS IS NOT A COMPLETE INITSERVER.SQF
// The following should be added to your mission's existing initServer.sqf if present. If not, then you can just use this file as-is.


/*************************
 * CONFIGURATION OPTIONS *
 *************************/
/// SK Darkness settings
// Fog transition time
sk_darkness_fog_transition = 10;
publicVariable "sk_darkness_fog_transition";


/// SK Darkness normal weather settings
// Overcast - 0.00 to 1.00
sk_darkness_normal_overcast = 0.00;
publicVariable "sk_darkness_normal_overcast";

// Wind - 0.00 to 1.00
sk_darkness_normal_wind = 0.00;
publicVariable "sk_darkness_normal_wind";

// Rain - 0.00 to 1.00
sk_darkness_normal_rain = 0.00;
publicVariable "sk_darkness_normal_rain";

// Lightning - 0.00 to 1.00
sk_darkness_normal_lightning = 0.00;
publicVariable "sk_darkness_normal_lightning";

// Waves - 0.00 to 1.00
sk_darkness_normal_waves = 0.00;
publicVariable "sk_darkness_normal_waves";

// Fog - 0.00 to 1.00
sk_darkness_normal_fog = 0.05;
publicVariable "sk_darkness_normal_fog";

// Fog Decay - -1.0 to 1.0
sk_darkness_normal_fog_decay = 0.0;
publicVariable "sk_darkness_normal_fog_decay";

// Fog Height - Integer
sk_darkness_normal_fog_height = 50;
publicVariable "sk_darkness_normal_fog_height";


/// SK Darkness event weather settings
// Overcast - 0.00 to 1.00
sk_darkness_overcast = 1.00;
publicVariable "sk_darkness_overcast";

// Wind - 0.00 to 1.00
sk_darkness_wind = 0.00;
publicVariable "sk_darkness_wind";

// Rain - 0.00 to 1.00
sk_darkness_rain = 0.00;
publicVariable "sk_darkness_rain";

// Lightning - 0.00 to 1.00
sk_darkness_lightning = 0.00;
publicVariable "sk_darkness_lightning";

// Waves - 0.00 to 1.00
sk_darkness_waves = 0.00;
publicVariable "sk_darkness_waves";

// Fog - 0.00 to 1.00
sk_darkness_fog = 0.50;
publicVariable "sk_darkness_fog";

// Fog Decay - -1.0 to 1.0
sk_darkness_fog_decay = 0.0;
publicVariable "sk_darkness_fog_decay";

// Fog Height - Integer
sk_darkness_fog_height = 100;
publicVariable "sk_darkness_fog_height";



/********************
 * GLOBAL VARIABLES *
 ********************/
/// SK Darkness event processing check
// Boolean. Whether or not the darkness event is active.
sk_darkness_active = false;
publicVariable "sk_darkness_active";

// Boolean. Set while darkness is starting or stopping. Blocks calling the event again until it finishes to avoid breaking weather.
sk_darkness_event_processing = false;
publicVariable "sk_darkness_event_processing";