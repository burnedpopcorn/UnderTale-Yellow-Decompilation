if (live_call())
    return global.live_result;

image_xscale = 0;
image_yscale = 0;
image_alpha = 0;
scene = 0;
cutscene_timer = 0;
spin_speed = 0;
spin_speed_max = 12;

for (var i = 0; i < sprite_get_number(spr_battle_flowey_wheel_petals_grey); i++)
{
    var petal = instance_create_depth(x, y, depth + 1, obj_flowey_battle_gray_wheel_petal_gray);
    petal.image_index = i;
}

petal_sprite_special[0] = 3442;
petal_sprite_special[1] = 1944;
petal_sprite_special[2] = 3178;
petal_sprite_special[3] = 3074;
petal_sprite_special[4] = 856;
petal_sprite_special[5] = 3524;
wheel_phase_number = 0;
