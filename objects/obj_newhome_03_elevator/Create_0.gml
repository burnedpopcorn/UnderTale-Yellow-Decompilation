if (live_call())
    return global.live_result;

image_speed = 0;

if (global.route == 3 || global.hotland_flag[10] != 0)
{
    scene = 0;
    cutscene_timer = 0;
    image_speed = 0;
    
    if (obj_pl.x > 130)
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
    else
    {
        scene = 8;
    }
}
