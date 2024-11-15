if (move == true)
{
    if (aviator_xspd == 0)
        image_index = 0;
    
    sprite_index = spr_snowdin_22_raft_untie_overworld_yellow;
    image_speed = 0.2;
    
    if (sprite_index == spr_snowdin_22_raft_untie_overworld_yellow && floor(image_index) >= (image_number - 1))
        sprite_index = spr_snowdin_22_raft_move_overworld_yellow;
    
    if (aviator_xspd < 4)
        aviator_xspd += 0.025;
    
    obj_npc_clover_snowdin_22.x += aviator_xspd;
    x += aviator_xspd;
    
    if (global.snowdin_flag[13] >= 2 && x > (room_height + 200))
        instance_create(0, 0, obj_snowdin_end_transition);
}
