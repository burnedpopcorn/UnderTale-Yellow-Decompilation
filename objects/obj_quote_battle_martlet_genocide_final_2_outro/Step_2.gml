if (live_call())
    return global.live_result;

if (fade_out_gui == true)
{
    global.image_alpha_enemy_attacking = -1;
    obj_dialogue_box_battle.image_alpha = 0;
}

if (draw_enabled && message_current > 14)
{
    if (instance_exists(obj_battle_fmartlet_flowey) && obj_battle_fmartlet_flowey.sprite_index != prt[message_current])
        obj_battle_fmartlet_flowey.sprite_index = prt[message_current];
}
