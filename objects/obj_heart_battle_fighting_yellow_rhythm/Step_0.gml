var auto_hit_note, can_trail;

if (instance_exists(obj_sme_yellow_rhythm_generator) && !instance_exists(obj_sme_yellow_rhythm_selection) && created_selection == false && moveable == true)
{
    instance_create(x, obj_dialogue_box_battle_transformation_any.bbox_top + 179, obj_sme_yellow_rhythm_selection);
    created_selection = true;
}

script_execute(scr_controls_battle_heart_yellow_rhythm);
x_previous = x;
move_x = -key_left + key_right;
y = pos_y;

if (move_x < 0)
    x = pos_x_left;
else if (move_x > 0)
    x = pos_x_right;
else
    x = pos_x_center;

if (pos_x_previous != x)
{
    if (instance_exists(obj_sme_yellow_rhythm_selection))
    {
        obj_sme_yellow_rhythm_selection.grace_period_current = grace_period_duration;
        obj_sme_yellow_rhythm_selection.pos_x_previous_selection = pos_x_previous;
    }
    
    pos_x_previous = x;
}

obj_heart_yellow_rhythm_hitbox.x = x;
obj_heart_yellow_rhythm_hitbox.y = y;

if (instance_exists(obj_sme_yellow_rhythm_selection))
{
    with (obj_sme_yellow_rhythm_selection)
        event_user(0);
}

auto_hit_note = false;

if (global.option_autorhythm)
{
    key_select = 0;
    key_revert = 0;
    
    with (obj_sme_yellow_rhythm_selection)
    {
        if (place_meeting(x, y, obj_sme_yellow_rhythm_note))
            auto_hit_note = true;
    }
}

if (instance_exists(obj_sme_yellow_rhythm_note))
{
    if (key_select || key_revert || auto_hit_note || buffer_current > 0)
        buffer_current += 1;
    
    if (buffer_current >= buffer_max)
    {
        if (instance_exists(obj_sme_yellow_rhythm_selection) && box.sc_dcurrent == 1)
        {
            with (obj_sme_yellow_rhythm_selection)
                event_user(1);
        }
        
        buffer_current = 0;
    }
}
else
{
    buffer_current = 0;
}

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
