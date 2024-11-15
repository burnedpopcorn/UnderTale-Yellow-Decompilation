var last_room;

last_room = global.last_room_overworld;

if ((last_room == "rm_dunes_20" && x > 280) || (last_room == "rm_dunes_22" && x < 40) || (global.dunes_flag[10] == 1 && keyboard_multicheck_pressed(0)))
{
    if (!instance_exists(obj_transition))
    {
        trn = instance_create(0, 0, obj_transition);
        
        if (last_room == "rm_dunes_20")
        {
            trn.newRoom = 103;
            trn.xx = 10;
        }
        else if (last_room == "rm_dunes_22")
        {
            trn.newRoom = 101;
            trn.xx = 540;
        }
    }
}
