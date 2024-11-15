if (obj_bowll_head_a.sprite_index == spr_bowll_head_critical)
    sprite_index = spr_bowll_head_critical_shadow;
else
    sprite_index = spr_bowll_head_normal_shadow;

if (global.image_alpha_enemy_attacking < 1)
    image_alpha = 1;
else
    image_alpha = obj_bowll_head_a.image_alpha;

x = obj_bowll_head_a.x;
y = obj_bowll_head_a.y;
