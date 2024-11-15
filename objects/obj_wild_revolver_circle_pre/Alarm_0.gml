with (obj_target_bar_battle)
{
    shot_total_pre += obj_wild_revolver_circle_pre.shot_add;
    
    if (button_pressed_pre == false)
        button_pressed_pre = obj_wild_revolver_circle_pre.button_pressed;
}

with (obj_wild_revolver_battle_outline)
    continue_shot = obj_wild_revolver_circle_pre.button_pressed;

instance_destroy();
