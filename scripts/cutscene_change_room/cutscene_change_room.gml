function cutscene_change_room()
{
    var trn;
    
    if (room == argument[0])
    {
        cutscene_advance();
        return true;
    }
    
    if (!instance_exists(obj_transition))
    {
        trn = instance_create(0, 0, obj_transition);
        
        with (trn)
        {
            newRoom = argument[0];
            xx = argument[1];
            yy = argument[2];
            fade_in_speed = argument[3];
            fade_out_speed = argument[3] * 1.5;
            
            if (argument_count > 4)
                fade_out_wait = argument[4];
        }
    }
}
