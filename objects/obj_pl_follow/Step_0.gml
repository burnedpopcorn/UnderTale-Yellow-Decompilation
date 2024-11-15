if (obj_pl.player_mode == "DalvExit")
{
    scr_walk_ai(obj_dalv2.destination_x_dalv, obj_dalv2.destination_y_dalv, 1021, 3, "x");
    obj_pl.x = x;
    obj_pl.y = y;
    obj_dalv2.solid = false;
}

if (obj_pl.player_mode == "Normal")
    instance_destroy();

if (x != xprevious || y != yprevious)
{
    image_speed = 0.2;
}
else
{
    image_speed = 0;
    image_index = 0;
}

if (direction == 0)
    sprite_index = rsprite;

if (direction == 90)
    sprite_index = usprite;

if (direction == 180)
    sprite_index = lsprite;

if (direction == 270)
    sprite_index = dsprite;
