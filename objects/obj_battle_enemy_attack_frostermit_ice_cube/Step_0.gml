if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (image_alpha < 1 && can_move == false)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
        can_move = true;
}

if (can_move == true)
{
    fall_speed += grav;
    
    if (fall_speed > fall_max)
        fall_speed = fall_max;
    
    vsp = fall_speed;
    
    if (sign(vsp) == 1 && place_meeting(x, y + vsp, obj_battle_enemy_attack_frostermit_ice_cube))
    {
        while (!place_meeting(x, y + sign(vsp), obj_battle_enemy_attack_frostermit_ice_cube))
            y += sign(vsp);
        
        vsp = 0;
    }
    
    if (sign(vsp) == 1 && (bbox_bottom + vsp) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
    {
        while ((bbox_bottom + sign(vsp)) < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
            y += sign(vsp);
        
        vsp = 0;
    }
    
    y += vsp;
}
