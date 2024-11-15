with (other)
{
    state = 1;
    
    if (obj_steamworks_manta.manta_has_passengers == false)
    {
        obj_steamworks_manta.manta_has_passengers = true;
        __view_set(e__VW.Object, 0, obj_steamworks_manta);
    }
    else
    {
        with (obj_steamworks_manta)
            event_perform(ev_create, 0);
        
        __view_set(e__VW.Object, 0, obj_pl);
        obj_pl.x = dock_x;
        obj_pl.y = dock_y;
        
        if (global.party_member != -4)
        {
            scr_actor_into_follower(1161, 1171);
            global.party_member.x = dock_x;
            global.party_member.y = dock_y;
        }
    }
}
