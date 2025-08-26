function scr_change_room(arg0, arg1, arg2)
{
    if (!instance_exists(obj_transition))
    {
        trn = instance_create(x, y, obj_transition);
        trn.newRoom = arg0;
        
        if (instance_exists(obj_pl))
        {
            trn.xx = arg1;
            trn.yy = arg2;
        }
    }
}
