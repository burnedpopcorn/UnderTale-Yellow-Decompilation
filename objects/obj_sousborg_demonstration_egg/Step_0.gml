var x_target;

x_target = 100;

if (global.enemy_attacking == true)
    destroy_self = true;

if (destroy_self == false)
{
    if (x < (x_target - 0.01))
        x = lerp(x, x_target, 0.15);
    else
        x = x_target;
}
else if (x > (xstart + 0.01))
{
    x = lerp(x, xstart, 0.15);
}
else
{
    instance_destroy();
}
