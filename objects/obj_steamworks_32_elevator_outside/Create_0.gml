image_speed = 0;
scene = 0;
cutscene_timer = 0;

if (obj_pl.x > 760 && !instance_exists(obj_overworld_fade_in_screen))
{
    scr_cutscene_start();
    instance_create(840, 270, obj_player_npc);
    obj_player_npc.image_alpha = 0;
    obj_player_npc.npc_direction = "down";
    
    if (global.party_member != -4)
    {
        actor_follower = instance_create(840, 270, obj_ceroba_npc);
        actor_follower.image_alpha = 0;
        actor_follower.npc_direction = "down";
        
        if (instance_exists(global.party_member))
            instance_destroy(global.party_member);
    }
}
else
{
    scene = 8;
}
