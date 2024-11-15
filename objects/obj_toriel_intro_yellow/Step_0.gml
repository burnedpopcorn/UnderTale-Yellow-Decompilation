if (x > x_max)
    x -= x_speed;

if (x < x_max)
    x = x_max;

if (x == x_max && instance_exists(obj_froggit_intro_body_yellow))
{
    instance_create(obj_froggit_intro_body_yellow.x, obj_froggit_intro_body_yellow.y, obj_froggit_intro_scared_yellow);
    
    with (obj_froggit_intro_head_yellow)
        instance_destroy();
    
    with (obj_froggit_intro_body_yellow)
        instance_destroy();
}
