if (obj_martlet_g_body.fight_mode == true)
    sprite_index = spr_martlet_g_body_shadow;
else
    sprite_index = spr_martlet_body_shadow;

if (global.image_alpha_enemy_attacking < 1)
    image_alpha = 1;
else
    image_alpha = obj_martlet_g_body.image_alpha;

x = obj_martlet_g_body.x;
y = obj_martlet_g_body.y;
image_xscale = obj_martlet_g_body.image_xscale;
image_yscale = obj_martlet_g_body.image_yscale;

if (obj_martlet_g_body.damage_disjoint_count > 0)
    image_alpha = 0;
