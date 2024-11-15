clover_fall = false;

if (obj_pl.y < 0)
{
    clover_fall = true;
    instance_create(obj_pl.x, obj_pl.y, obj_clover_fall);
}
