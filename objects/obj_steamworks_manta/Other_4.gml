persistent = false;

if (room == rm_steamworks_17 && point_in_rectangle(obj_pl.x, obj_pl.y, 190, 768, 290, 830))
{
    x = 550;
    y = 670;
    manta_dir = 270;
}

if (manta_has_passengers)
{
    if (global.party_member != -4)
        actor_follower.persistent = false;
    
    __view_set(e__VW.Object, 0, id);
    manta_dir = obj_pl.direction;
    x = obj_transition.xx;
    y = obj_transition.yy;
    
    switch (manta_dir)
    {
        case 0:
            if (global.party_member != -4)
            {
                actor_follower.x = x - 10;
                actor_follower.y = y - 15;
                actor_follower.npc_direction = "right";
            }
            
            obj_pl.x = x + 5;
            obj_pl.y = y - 15;
            obj_pl.direction = 0;
            break;
        
        case 180:
            if (global.party_member != -4)
            {
                actor_follower.x = x + 10;
                actor_follower.y = y - 15;
                actor_follower.npc_direction = "left";
            }
            
            obj_pl.x = x - 5;
            obj_pl.y = y - 15;
            obj_pl.direction = 180;
            break;
        
        case 90:
            if (global.party_member != -4)
            {
                actor_follower.x = x;
                actor_follower.y = y - 5;
                actor_follower.npc_direction = "up";
            }
            
            obj_pl.x = x;
            obj_pl.y = y - 10;
            obj_pl.direction = 90;
            break;
        
        case 270:
            if (global.party_member != -4)
            {
                actor_follower.x = x;
                actor_follower.y = y - 10;
                actor_follower.npc_direction = "down";
            }
            
            obj_pl.x = x;
            obj_pl.y = y;
            obj_pl.direction = 270;
            break;
    }
}
