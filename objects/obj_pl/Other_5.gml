if (get_last_room_no_loop == false)
{
    global.lastroom = room_get_name(room);
    autowalk_direction_no_loop = false;
    get_last_room_no_loop = true;
}
