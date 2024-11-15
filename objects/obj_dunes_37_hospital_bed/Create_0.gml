event_inherited();

if (global.route == 3)
    message[0] = "* (A rickety bed.)";
else
    message[0] = "* (A nap sounds nice...#  taken anywhere but here.)";

if (place_meeting(x, y, obj_npc_base))
    instance_destroy();
