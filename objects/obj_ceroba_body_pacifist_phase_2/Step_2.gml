if (live_call())
    return global.live_result;

var fade_back = false;

if (instance_exists(obj_ceroba_phase_2_opener) && obj_ceroba_phase_2_opener.scene < 19)
    fade_back = true;

if (global.image_alpha_enemy_attacking < 1 && fade_back)
    blend_color = 128;
else
    blend_color = 255;

blend_color_current = lerp(blend_color_current, blend_color, 0.05);

if (abs(blend_color_current - blend_color) <= 1)
    blend_color_current = blend_color;

image_blend = make_color_rgb(blend_color, blend_color, blend_color);

with (obj_ceroba_cape_1)
{
}

with (obj_ceroba_cape_2)
{
}

with (obj_ceroba_hair)
{
}

with (obj_ceroba_legs)
{
}

with (obj_ceroba_phase_2_head)
{
}

with (obj_ceroba_phase_2_staff)
{
}

with (obj_ceroba_sideburn_left)
{
}

with (obj_ceroba_sideburn_right)
{
}
