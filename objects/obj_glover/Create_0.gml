if (global.dunes_flag[0] > 0)
    instance_destroy();

image_speed = 0;
is_talking = 0;

if (global.snowdin_flag[9] < 2)
    sprite_index = spr_donald_glover_snowdin_yellow;
else
    sprite_index = spr_donald_glover_glove_snowdin_yellow;

if (global.geno_complete[2])
    sprite_index = spr_glove_snowdin_yellow;

waiter = 0;
