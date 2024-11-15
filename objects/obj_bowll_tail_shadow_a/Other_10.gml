if (obj_bowll_tail_a.sprite_index == spr_bowll_tail_critical)
{
    sprite_index = spr_bowll_tail_critical_shadow;
    image_speed = 0;
    image_index = 0;
}
else
{
    sprite_index = spr_bowll_tail_normal_shadow;
    image_speed = 0;
    image_index = obj_bowll_tail_a.image_index;
}

if (global.image_alpha_enemy_attacking < 1)
    image_alpha = 1;
else
    image_alpha = obj_bowll_tail_a.image_alpha;

x = obj_bowll_tail_a.x;
y = obj_bowll_tail_a.y;
