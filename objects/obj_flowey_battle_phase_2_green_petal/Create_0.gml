if (live_call())
    return global.live_result;

image_index = irandom_range(0, image_number - 1);
heal_amount = 10;
petal_dir = 0;
image_angle = irandom_range(0, 360);
