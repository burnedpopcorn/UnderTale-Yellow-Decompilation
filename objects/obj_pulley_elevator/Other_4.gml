switch (global.last_room_overworld)
{
    case "rm_dunes_24":
    case "rm_dunes_25":
    case "rm_dunes_27":
    case "rm_dunes_28":
        if (room == rm_dunes_27)
        {
            layer_depth("ground_tiles", -9999998);
            layer_depth("grass_tiles", -9999999);
        }
        
        act = 1;
        pull_speed = 2.5;
        elevator_can_collide = false;
        y = target_y;
        obj_pl.x = x;
        obj_pl.y = y + 14;
        
        if (global.party_member != -4)
        {
            var martlet_npc = instance_create(x + 20, y, obj_martlet_npc);
            martlet_npc.npc_direction = "down";
            martlet_npc.sprite_index = martlet_npc.down_sprite_idle;
            martlet_npc.can_walk = false;
            martlet_npc.npc_dynamic_depth = false;
            obj_pl.x = x - 20;
        }
        
        break;
}
