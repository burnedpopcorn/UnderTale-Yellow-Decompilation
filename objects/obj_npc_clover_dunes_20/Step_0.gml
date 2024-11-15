if (global.dialogue_open)
    exit;

event_inherited();

if (npc_arrived == 1)
{
    npc_arrived = 0;
    can_walk = false;
    alarm[0] = 30;
}

obj_pl.x = x;
obj_pl.y = y;

if (player_fade_out == true)
{
    if (image_alpha > 0)
        image_alpha -= 0.1;
    else if (!alarm[0])
        alarm[0] = 15;
}
