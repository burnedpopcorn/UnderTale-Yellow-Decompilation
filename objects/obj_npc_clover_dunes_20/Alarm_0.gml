with (instance_create(x, y, obj_clover_minesjump))
{
    if (room == rm_dunes_20)
        hsp = 1.5;
    else
        hsp = -1.5;
    
    vsp = -2;
    end_player_alpha = false;
}

instance_destroy();
