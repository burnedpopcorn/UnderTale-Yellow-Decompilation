event_inherited();

if (npc_arrived == true)
{
    npc_arrived = false;
    alarm[0] = 15;
}

if (scene == 1)
{
    if (path_position == 1)
    {
        action_sprite = true;
        
        if (global.route == 3)
        {
            shader_on = false;
            sprite_index = spr_snowdin_22_clover_sit_overworld_yellow_geno;
        }
        else
        {
            sprite_index = spr_snowdin_22_clover_sit_overworld_yellow;
        }
        
        image_speed = 0.25;
        
        if (global.snowdin_flag[13] >= 2)
            obj_raft_snowdin_22.alarm[0] = 30;
        
        scene = 2;
    }
}

if (scene == 2)
{
    if (image_index > (image_number - 1))
        image_speed = 0;
    
    if (obj_raft_snowdin_22.move == false)
        event_user(0);
}

obj_pl.x = x;
obj_pl.y = y;
