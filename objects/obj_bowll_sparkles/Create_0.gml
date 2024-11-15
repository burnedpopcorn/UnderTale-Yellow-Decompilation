var random_number;

random_number = irandom_range(0, 1);

if (random_number == 0)
    sprite_index = spr_bowll_sparkles_small;
else
    sprite_index = spr_bowll_sparkles_large;

image_speed = 1/3;
image_index = 0;
