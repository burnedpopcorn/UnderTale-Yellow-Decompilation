if (global.image_alpha_enemy_attacking < 1)
    image_alpha = 1;
else
    image_alpha = obj_bowll_body_a.image_alpha;

x = obj_bowll_body_a.x;
y = obj_bowll_body_a.y;

if (obj_bowll_body_a.damage_disjoint_count > 0)
    image_alpha = 0;
