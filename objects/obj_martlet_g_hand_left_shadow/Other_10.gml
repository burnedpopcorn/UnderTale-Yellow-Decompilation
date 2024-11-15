if (obj_martlet_g_body.fight_mode == true)
    sprite_index = spr_martlet_g_hand_left_shadow;
else
    sprite_index = spr_martlet_hand_left_shadow;

if (global.image_alpha_enemy_attacking < 1)
    image_alpha = 1;
else
    image_alpha = obj_martlet_g_hand_left.image_alpha;

x = obj_martlet_g_hand_left.x;
y = obj_martlet_g_hand_left.y;
image_xscale = obj_martlet_g_hand_left.image_xscale;
image_yscale = obj_martlet_g_hand_left.image_yscale;
image_angle = obj_martlet_g_hand_left.image_angle;
