if (waiter == 1 && room == newRoom)
{
    if (room_persistent == true && global.battlecheck == 0)
    {
        room_persistent = false;
        room_restart();
        waiter = 0;
    }
    else if (global.battlecheck == 1)
    {
        global.battlecheck = 0;
    }
}

if (instance_exists(obj_pl))
    obj_pl.alarm[0] = 1;
