if (global.dialogue_open)
    exit;

event_inherited();

if (npc_arrived == 1)
{
    npc_arrived = 0;
    can_walk = false;
    instance_create(100, 155, obj_stresso_dunes_13);
}

obj_pl.x = x;
obj_pl.y = y;

if (player_fade_in == true)
{
    if (image_alpha < 1)
        image_alpha += 0.1;
    else
        can_walk = true;
    
    player_fade_in = false;
}
