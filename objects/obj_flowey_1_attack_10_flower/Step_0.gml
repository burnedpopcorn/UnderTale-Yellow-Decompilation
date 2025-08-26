if (live_call())
    return global.live_result;

image_yscale = lerp(image_yscale, 1, 0.5);

if (fade_out == true)
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0)
        instance_destroy();
}

var arc_radius = 90;

if (shoot_delay > 0)
{
    shoot_delay--;
}
else if (!destroy_self && bullet_count > 0)
{
    var xx = x - lengthdir_x(30, image_angle - 90);
    var yy = y - lengthdir_y(30, image_angle - 90);
    
    if (spawn_direction == -1)
    {
        spawn_direction = point_direction(xx, yy, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
        direction_inc = arc_radius / bullet_count;
        direction_current = spawn_direction - (direction_inc * ((bullet_count - 1) * 0.5));
    }
    
    var pellet = instance_create_depth(xx, yy, depth - 1, obj_battle_enemy_attack_fpellets_simple);
    pellet.direction = direction_current;
    pellet.speed = 6;
    shoot_delay = shoot_delay_max;
    bullet_count -= 1;
    direction_current += direction_inc;
}

if (bullet_count <= 0)
    destroy_self = true;

if (destroy_self == true)
    fade_out = true;
