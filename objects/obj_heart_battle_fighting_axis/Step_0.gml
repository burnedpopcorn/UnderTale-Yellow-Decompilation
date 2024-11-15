var can_trail;

script_execute(scr_controls_battle_heart_red);
x_previous = x;
y_previous = y;
move_x = key_left + key_right;
move_y = key_down + key_up;
hsp = move_x * walk_speed;
vsp = move_y * walk_speed;

if (key_revert)
{
    hsp = round(hsp / 2);
    vsp = round(vsp / 2);
}

hsp += hsp_factor;

if (movement_mode == 1)
{
    y = obj_dialogue_box_battle_transformation_any.bbox_bottom - 16;
    soul_direction = 90;
    
    if (sign(hsp) == -1 && (bbox_left + hsp) <= (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
    {
        while ((bbox_left + sign(hsp)) > (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
            x += sign(hsp);
        
        hsp = 0;
    }
    else if (sign(hsp) == 1 && (bbox_right + hsp) >= (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
    {
        while ((bbox_right + sign(hsp)) < (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
            x += sign(hsp);
        
        hsp = 0;
    }
    
    x += hsp;
}
else if (movement_mode == 2)
{
    if (circle_alpha < 0.99)
        circle_alpha = lerp(circle_alpha, 1, 0.15);
    else
        circle_alpha = 1;
    
    x = obj_dialogue_box_battle_transformation_any.x + lengthdir_x(base_distance, soul_direction);
    y = obj_dialogue_box_battle_transformation_any.y + lengthdir_y(base_distance, soul_direction);
    soul_direction -= (hsp * 3);
}

obj_heart_red_hitbox.x = x;
obj_heart_red_hitbox.y = y;

if (instance_exists(obj_heart_battle_effect_glow))
{
    obj_heart_battle_effect_glow.x = x;
    obj_heart_battle_effect_glow.y = y;
}

if (moveable == true && global.current_sp_self > 0)
{
    can_trail = false;
    trail_cc_current += 1;
    
    if (trail_cc_current >= trail_cc_max)
    {
        can_trail = true;
        trail_cc_current = 0;
    }
    
    if (can_trail == true)
    {
        ds_list_add(x_list, x);
        ds_list_add(y_list, y);
        
        while (ds_list_size(x_list) > max_points_trail)
        {
            ds_list_delete(x_list, 0);
            ds_list_delete(y_list, 0);
        }
    }
}

event_user(15);
image_angle = soul_direction;
