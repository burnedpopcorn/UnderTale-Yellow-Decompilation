if (room == rm_dunes_elevator)
{
    with (obj_pl)
    {
        direction = 270;
        image_alpha = 1;
        
        if (global.dunes_flag[4] >= 3 && global.party_member == -4)
            x = 165;
        else
            x = 150;
        
        if (global.party_member != -4)
        {
            if (!instance_exists(global.party_member))
                instance_create(180, 130, global.party_member);
            
            with (global.party_member)
            {
                x = 180;
                y = 130;
                dir_new[1] = 270;
            }
        }
        
        y = 130;
    }
    
    alarm[0] = 30;
}
