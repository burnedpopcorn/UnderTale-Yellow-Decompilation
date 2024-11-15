script_execute(scr_depth, 0, 0, 0, 0, 0);

if (global.flag[24] == 0 || global.flag[24] == 2)
{
    image_speed = 0.2;
    waiter = 0;
    obj_pl.state = scr_frozen_state;
}

if (global.flag[24] == 1)
{
    sprite_index = spr_flowey;
    image_speed = 0;
    waiter = 0;
    
    if (instance_exists(obj_pl))
        obj_pl.state = scr_frozen_state;
}
