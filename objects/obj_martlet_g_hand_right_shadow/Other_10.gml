if (obj_martlet_g_body.fight_mode == true)
    sprite_index = spr_martlet_g_hand_right_shadow;
else if (obj_martlet_g_hand_right.sprite_index == spr_martlet_hand_right_up)
    sprite_index = spr_martlet_hand_right_up_shadow;
else
    sprite_index = spr_martlet_hand_right_down_shadow;

if (global.image_alpha_enemy_attacking < 1)
    image_alpha = 1;
else
    image_alpha = obj_martlet_g_hand_right.image_alpha;

x = obj_martlet_g_hand_right.x;
y = obj_martlet_g_hand_right.y;
image_xscale = obj_martlet_g_hand_right.image_xscale;
image_yscale = obj_martlet_g_hand_right.image_yscale;
image_angle = obj_martlet_g_hand_right.image_angle;
