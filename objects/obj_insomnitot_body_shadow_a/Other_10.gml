if (global.image_alpha_enemy_attacking < 1)
    image_alpha = 1;
else
    image_alpha = obj_insomnitot_body_a.image_alpha;

x = obj_insomnitot_body_a.x;
y = obj_insomnitot_body_a.y;
image_xscale = obj_insomnitot_body_a.image_xscale;
image_yscale = obj_insomnitot_body_a.image_yscale;

if (obj_insomnitot_body_a.damage_disjoint_count > 0 || global.current_hp_enemy <= 0)
    image_alpha = 0;
