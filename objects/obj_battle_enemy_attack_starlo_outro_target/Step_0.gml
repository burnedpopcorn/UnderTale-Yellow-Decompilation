if (!is_active)
    exit;

if (image_alpha < 1)
    image_alpha += 0.1;

if (target_radius_deg > 30)
{
    target_radius_deg -= 1;
}
else if (!instance_exists(obj_quote_battle_starlo_outro_3))
{
    var bubble = instance_create(440, 74, obj_quote_bubble_battle_yellow_2_reverse);
    instance_create(0, 0, obj_quote_battle_starlo_outro_3);
}

target_radius_current = dsin(target_radius_deg);

if (target_draw_alpha < 1)
    target_draw_alpha += 0.25;
