var execute_change;

if (image_alpha < 1 && started == false)
{
    image_alpha += 0.05;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
        started = true;
    
    if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_white))
        obj_battle_enemy_attack_trihecta_circle_stack_white.image_alpha = image_alpha;
    
    if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_green))
        obj_battle_enemy_attack_trihecta_circle_stack_green.image_alpha = image_alpha;
}

if (started == true)
{
    ds_list_add(x_list, x);
    ds_list_add(y_list, y);
    
    while (ds_list_size(x_list) > max_points_trail)
    {
        ds_list_delete(x_list, 0);
        ds_list_delete(y_list, 0);
    }
    
    if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_white))
    {
        with (obj_battle_enemy_attack_trihecta_circle_stack_white)
            event_user(0);
    }
    
    if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_green))
    {
        with (obj_battle_enemy_attack_trihecta_circle_stack_green)
            event_user(0);
    }
}

if (instance_exists(obj_dialogue_box_battle_transformation_any) && started == true)
{
    hsp = x_speed;
    execute_change = false;
    
    if (sign(hsp) == -1 && (bbox_left + hsp) <= (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
    {
        while ((bbox_left + sign(hsp)) > (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
            x += sign(hsp);
        
        x_speed = -x_speed;
        hsp = 0;
        execute_change = true;
    }
    else if (sign(hsp) == 1 && (bbox_right + hsp) >= (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
    {
        while ((bbox_right + sign(hsp)) < (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
            x += sign(hsp);
        
        x_speed = -x_speed;
        hsp = 0;
        execute_change = true;
    }
    
    x += hsp;
    
    if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_white))
        obj_battle_enemy_attack_trihecta_circle_stack_white.x = x;
    
    if (instance_exists(obj_battle_enemy_attack_trihecta_circle_stack_green))
        obj_battle_enemy_attack_trihecta_circle_stack_green.x = x;
    
    if (execute_change == true)
        event_user(0);
}
