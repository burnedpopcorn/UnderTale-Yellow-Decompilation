if (obj_cactony_body_a.sprite_index == spr_cactony_body_critical)
    sprite_index = spr_cactony_body_critical_shadow;
else
    sprite_index = spr_cactony_body_normal_shadow;

if (global.image_alpha_enemy_attacking < 1)
    image_alpha = 1;
else
    image_alpha = obj_cactony_body_a.image_alpha;

x = obj_cactony_body_a.x;
y = obj_cactony_body_a.y;
image_xscale = obj_cactony_body_a.image_xscale;
image_yscale = obj_cactony_body_a.image_yscale;

if (obj_cactony_body_a.damage_disjoint_count > 0)
    image_alpha = 0;
