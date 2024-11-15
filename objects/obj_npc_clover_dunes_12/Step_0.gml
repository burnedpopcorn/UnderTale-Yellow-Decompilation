if (global.dialogue_open)
    exit;

event_inherited();

if (npc_arrived == 1)
{
    npc_arrived = 0;
    can_walk = false;
    player_fade_out = true;
}

obj_pl.x = x;
obj_pl.y = y;

if (player_fade_out == true)
{
    if (image_alpha > 0)
    {
        image_alpha -= 0.1;
    }
    else if (global.party_member != -4)
    {
        if (party_noloop == false)
        {
            party_noloop = true;
            scr_follower_into_actor();
            cutscene_npc_walk(actor_follower, x, y + 20, 3, "x", "up");
        }
        else
        {
            with (actor_follower)
            {
                if (npc_arrived)
                {
                    image_alpha -= 0.1;
                    
                    if (image_alpha <= 0 && !other.alarm[0])
                        other.alarm[0] = 15;
                }
            }
        }
    }
    else if (!alarm[0])
    {
        alarm[0] = 15;
    }
}
