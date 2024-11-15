with (obj_target_bar_battle)
{
    shot_total_pre += obj_wild_revolver_circle_multi_pre.shot_add;
    
    if (button_pressed_pre == false)
        button_pressed_pre = obj_wild_revolver_circle_multi_pre.button_pressed;
    
    if (other.shoot_miss == true)
        alarm[0] = 1;
}

with (obj_wild_revolver_battle_outline)
    continue_shot = obj_wild_revolver_circle_multi_pre.button_pressed;

instance_destroy();
