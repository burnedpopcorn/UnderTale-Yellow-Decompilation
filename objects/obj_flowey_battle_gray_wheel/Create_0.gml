var i, petal;

if (live_call())
    return global.live_result;

image_xscale = 0;
image_yscale = 0;
image_alpha = 0;
scene = 0;
cutscene_timer = 0;
spin_speed = 0;
spin_speed_max = 12;

for (i = 0; i < sprite_get_number(spr_battle_flowey_wheel_petals_grey); i++)
{
    petal = instance_create_depth(x, y, depth + 1, obj_flowey_battle_gray_wheel_petal_gray);
    petal.image_index = i;
}

petal_sprite_special[0] = spr_battle_flowey_wheel_mechanical;
petal_sprite_special[1] = spr_battle_flowey_wheel_lowpoly;
petal_sprite_special[2] = spr_battle_flowey_wheel_paper;
petal_sprite_special[3] = spr_battle_flowey_wheel_clay;
petal_sprite_special[4] = spr_battle_flowey_wheel_organic;
petal_sprite_special[5] = spr_battle_flowey_wheel_patchwork;
wheel_phase_number = 0;
