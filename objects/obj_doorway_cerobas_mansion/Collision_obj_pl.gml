if (waiter == 1)
{
    if (instance_exists(obj_transition))
        instance_destroy(obj_transition);
    
    obj_pl.state = scr_frozen_state;
    obj_pl.image_index = 0;
    obj_pl.image_speed = 0;
    trn = instance_create(x, y, obj_transition);
    trn.newRoom = nextroom;
    trn.xx = xx;
    trn.yy = yy;
    trn.new_dir = new_dir;
    waiter = 2;
    
    if (global.dunes_flag[41] < 3)
    {
        trn.fade_in_speed = 0.05;
        trn.fade_out_speed = 0.02;
    }
}
