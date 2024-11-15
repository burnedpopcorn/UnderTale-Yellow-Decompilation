var breath_percentage;

if (instance_exists(obj_ceroba_body))
{
    breath_percentage = (obj_ceroba_body.anim_stretch_current - 1) / (obj_ceroba_body.anim_stretch_max - 1);
    color_number_current = 200 - (breath_percentage * 200);
}
