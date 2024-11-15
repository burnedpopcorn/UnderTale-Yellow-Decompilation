if (obj_heart_battle_fighting_parent.moveable == true && no_loop == false)
{
    script_execute(scr_battle_core_directory_enemy_attack_alarms);
    no_loop = true;
}

if (battle_box_resize_midfight == true)
{
    image_xscale = lerp(image_xscale, battle_box_target_xscale, 0.15);
    image_yscale = lerp(image_yscale, battle_box_target_yscale, 0.15);
    x = lerp(x, battle_box_target_x, 0.15);
    y = lerp(y, battle_box_target_y, 0.15);
    
    if (abs(image_xscale - battle_box_target_xscale) < 0.01 && abs(image_yscale - battle_box_target_yscale) < 0.01 && abs(x - battle_box_target_x) < 0.1 && abs(y - battle_box_target_y) < 0.1)
    {
        battle_box_resize_midfight = false;
        image_xscale = battle_box_target_xscale;
        image_yscale = battle_box_target_yscale;
        x = battle_box_target_x;
        y = battle_box_target_y;
    }
    
    if (instance_exists(obj_heart_battle_fighting_parent))
    {
        with (obj_heart_battle_fighting_parent)
        {
            x = clamp(x, obj_dialogue_box_battle_transformation_any.bbox_left + 10, obj_dialogue_box_battle_transformation_any.bbox_right - 10);
            y = clamp(y, obj_dialogue_box_battle_transformation_any.bbox_top + 10, obj_dialogue_box_battle_transformation_any.bbox_bottom - 10);
        }
    }
}

if (sc_able == true)
{
    if (sc_direction == "In")
    {
        sc_dcurrent += sc_speed;
        
        if (sc_dcurrent >= 1)
        {
            sc_dcurrent = 1;
            sc_direction = "None";
            script_execute(sc_in_script);
        }
    }
    else if (sc_direction == "Out")
    {
        sc_dcurrent -= sc_speed;
        
        if (sc_dcurrent <= 0)
        {
            sc_dcurrent = 0;
            sc_direction = "None";
            script_execute(sc_out_script);
        }
    }
}
