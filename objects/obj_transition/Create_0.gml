fadealpha = 0;
yy = 0;
xx = 0;
newRoom = 0;
fadein = false;
fade_in_speed = 0.1;
fade_out_speed = 0.15;
fade_wait_time = 0;

if (instance_exists(obj_pl))
{
    x = obj_pl.x;
    y = obj_pl.y;
}
else
{
    x = xx;
}

y = yy;
waiter = 0;
new_dir = -1;
global.last_room_overworld = room_get_name(room);
