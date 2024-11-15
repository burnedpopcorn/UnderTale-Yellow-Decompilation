var breath_percentage;

part_emitter_burst(part_embersys, part_emberEm, part_ember_small, -25);
part_emitter_burst(part_embersys, part_emberEm, part_ember_medium, -45);
part_emitter_burst(part_embersys, part_emberEm, part_ember_large, -125);

if (diamond_width_current == diamond_width)
    diamond_width_current = 0;

diamond_width_current += 0.5;

if (instance_exists(obj_ceroba_body))
{
    breath_percentage = (obj_ceroba_body.anim_stretch_current - 1) / (obj_ceroba_body.anim_stretch_max - 1);
    diamond_alpha = 0.35 + (breath_percentage * 0.65);
}

diamond_sin_deg += 1;

if (diamond_sin_deg >= 360)
    diamond_sin_deg -= 360;

diamond_y = diamond_y_original + (dsin(diamond_sin_deg) * diamond_y_shift);
