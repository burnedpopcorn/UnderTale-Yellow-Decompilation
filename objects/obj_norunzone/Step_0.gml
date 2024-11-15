if (place_meeting(x, y, obj_pl))
{
    global.player_can_run = false;
    obj_pl.is_sprinting = false;
}
else
{
    global.player_can_run = true;
}
