function scr_change_room(argument0, argument1, argument2)
{
    if (!instance_exists(obj_transition))
    {
        trn = instance_create(x, y, obj_transition);
        trn.newRoom = argument0;
        
        if (instance_exists(obj_pl))
        {
            trn.xx = argument1;
            trn.yy = argument2;
        }
    }
}
