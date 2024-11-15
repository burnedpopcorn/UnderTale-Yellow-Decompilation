if (live_call())
    return global.live_result;

if (image_alpha_val < 1)
{
    image_alpha_val += fade_in_speed;
    
    if (image_alpha_val > 1)
        image_alpha_val = 1;
}

y += note_speed;

if (y >= end_boundary)
{
    if (box.sc_dcurrent == 1)
        instance_create(damage_pos_x, damage_pos_y, obj_sme_yellow_rhythm_damage);
    
    instance_destroy();
}

if (in_hint_boundary == false && (y + note_speed) >= (obj_sme_yellow_rhythm_selection.y - (obj_sme_yellow_rhythm_selection.hit_extend_neg * note_speed)))
    in_hint_boundary = true;

if (in_hint_boundary == true)
{
    if ((y + note_speed) < (obj_sme_yellow_rhythm_selection.y - 10))
        hint_marker_alpha = 1;
    else
        hint_marker_alpha -= 0.25;
}
