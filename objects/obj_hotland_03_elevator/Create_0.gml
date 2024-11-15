if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
image_speed = 0;

if (place_meeting(x, y, obj_pl))
{
    scr_cutscene_start();
    instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
    obj_player_npc.image_alpha = 0;
    obj_player_npc.npc_direction = "down";
    
    if (global.party_member != -4)
    {
        actor_follower = instance_create(obj_pl.x, obj_pl.y, obj_martlet_npc);
        actor_follower.image_alpha = 0;
        actor_follower.npc_direction = "down";
    }
}

player_fade_out = false;
