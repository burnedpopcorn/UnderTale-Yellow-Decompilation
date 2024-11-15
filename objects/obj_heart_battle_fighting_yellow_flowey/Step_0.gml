var can_trail;

if (live_call())
    return global.live_result;

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
vsp += vsp_factor;

if (sign(hsp) == -1 && (bbox_left + hsp) <= 0)
{
    while ((bbox_left + sign(hsp)) > 0)
        x += sign(hsp);
    
    hsp = 0;
}
else if (sign(hsp) == 1 && (bbox_right + hsp) >= room_width)
{
    while ((bbox_right + sign(hsp)) < room_width)
        x += sign(hsp);
    
    hsp = 0;
}

x += hsp;

if (sign(vsp) == -1 && (bbox_top + vsp) <= 260)
{
    while ((bbox_top + sign(vsp)) > 300)
        y += sign(vsp);
    
    vsp = 0;
}
else if (sign(vsp) == 1 && (bbox_bottom + vsp) >= room_height)
{
    while ((bbox_bottom + sign(vsp)) < room_height)
        y += sign(vsp);
    
    vsp = 0;
}

y += vsp;
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

if (keyboard_multicheck_pressed(0) && sprite_index == spr_heart_yellow_up && can_shoot == true)
{
    sprite_index = spr_heart_yellow_shoot;
    image_index = 0;
    instance_create_depth(x + 0.5, y - 6, depth - 1, obj_heart_yellow_shot);
    can_shoot = false;
    alarm[1] = shoot_delay;
}

event_user(15);
