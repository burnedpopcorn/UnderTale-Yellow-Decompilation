if (sprite_index == risesprite)
{
    sprite_index = downsprite;
    image_speed = 0;
    waiter = 1;
    scr_turn();
}

if (sprite_index == leavesprite && global.flowey_death_pop == 0)
{
    instance_destroy();
    instance_create(x, y + 5, obj_determination);
    global.cutscene = false;
    obj_pl.state = scr_normal_state;
}

if (sprite_index == leavesprite && global.flowey_death_pop == 1)
{
    instance_destroy();
    instance_create(x, y + 5, obj_determination);
    global.cutscene = false;
    obj_pl.state = scr_normal_state;
    global.flowey_death_pop = 0;
}
