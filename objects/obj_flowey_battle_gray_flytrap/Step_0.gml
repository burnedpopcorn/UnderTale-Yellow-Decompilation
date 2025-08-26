if (live_call())
    return global.live_result;

if (sin_deg < 180)
    sin_deg += sin_inc;
else
    instance_destroy();

var sin_value = sin(degtorad(sin_deg));

switch (scene)
{
    case 0:
        if (sin_deg > 90)
        {
            var fireball = instance_create_depth(x, y, -100, obj_flowey_battle_gray_fireball);
            fireball.direction = direction;
            fireball.speed = 4;
            sin_inc = 2;
            scene++;
        }
        
        break;
}

if (scene == 0)
    image_index = sin_value * 30;
else
    image_index = 30 + (19 * (1 - sin_value));

x = xstart + lengthdir_x(sin_value * 40, image_angle);
y = ystart + lengthdir_y(sin_value * 40, image_angle);
