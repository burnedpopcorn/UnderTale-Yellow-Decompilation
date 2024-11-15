if (live_call())
    return global.live_result;

if (global.current_hp_enemy <= 0)
{
    scr_audio_fade_out(global.battle_music, 500);
    instance_destroy(obj_fmartlet_spawner_feathers_scratch);
    instance_destroy(obj_fmartlet_spawner_feathers_wings);
    instance_destroy(obj_fmartlet_spawner_wings_scratch);
    instance_destroy(obj_battle_enemy_attack_martlet_wing_gust_final_spawner);
    instance_destroy(obj_fmartlet_spawner_talon_walls);
    instance_destroy(obj_battle_enemy_attack_martlet_feather_circle_final_checker);
    global.enemy_attack = "Empty";
    scr_battle_box_resize_midfight(40, 40, 320, 320);
    
    with (obj_martlet_final_base)
    {
        if (sprite_index != spr_martlet_final_knocked_down)
        {
            sprite_index = spr_martlet_final_knocked_down;
            image_index = 0;
            image_speed = 1;
        }
        
        if (image_index >= (image_number - 2))
        {
            image_speed = 0;
            image_index = image_number - 1;
            
            if (!instance_exists(obj_martlet_final_armor))
                instance_create_depth(x, y + 80, depth - 1, obj_martlet_final_armor);
        }
        
        x = lerp(x, 320, 0.15);
        y = lerp(y, 70, 0.15);
    }
}
