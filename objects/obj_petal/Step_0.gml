if (y > (room_height + sprite_height))
    instance_destroy();

image_yscale = sin((current_time / modifier) * rotation_speed);
x += trajectory;
y += weight;
