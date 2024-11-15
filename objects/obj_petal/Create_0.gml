rotation_speed = random_range(2, 8);
petal_sprite = irandom_range(0, 2);
weight = random_range(2, 10);
trajectory = random_range(0, 4);
modifier = 1000;

if (petal_sprite >= 1)
{
    petal_size = choose(1, 0.5);
    sprite_index = petal_2;
    image_xscale = petal_size;
    image_yscale = petal_size;
}
