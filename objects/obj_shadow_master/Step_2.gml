if (live_call())
    return global.live_result;

inst_number = instance_number(-3);
var drawer_object = 829;

switch (object_index)
{
    case obj_light_master:
        drawer_object = 452;
        break;
    
    default:
        drawer_object = 829;
        break;
}

if (instance_exists(obj_dialogue))
    inst_number -= 1;

if (instance_exists(obj_pause_menu))
    inst_number -= 1;

if (instance_exists(obj_camera))
    inst_number -= 1;

if (inst_number != inst_number_last)
{
    inst_number_last = inst_number;
    var j = 0;
    
    for (var i = 0; i < instance_number(-3); i += 1)
    {
        var inst = instance_find(-3, i);
        var object_found = false;
        var repeat_check = false;
        
        with (drawer_object)
        {
            if (shadow_actor == inst)
                repeat_check = true;
        }
        
        if (repeat_check)
            continue;
        
        var shadow_drawer;
        
        switch (inst.object_index)
        {
            case obj_pl:
            case global.party_member:
                shadow_actor = inst;
                shadow_drawer = instance_create_depth(inst.x, inst.y, inst.depth, drawer_object);
                object_found = true;
                break;
        }
        
        switch (object_get_parent(inst.object_index))
        {
            case 1130:
            case 1133:
            case 1191:
                shadow_actor = inst;
                shadow_drawer = instance_create_depth(inst.x, inst.y, inst.depth, drawer_object);
                object_found = true;
                break;
        }
        
        if (object_found == true)
        {
            with (shadow_drawer.shadow_actor)
            {
                if (place_meeting(x, y, obj_shadow_collider))
                {
                    shadow_drawer.shadow_active = true;
                    
                    if (shadow_drawer.reverse == false)
                        shadow_drawer.draw_alpha = 0.5;
                }
                else if (shadow_drawer.reverse == true)
                {
                    shadow_drawer.draw_alpha = 0.5;
                }
            }
        }
    }
}

if (instance_exists(obj_savefl) && save_flowey_noloop == false)
{
    shadow_actor = 1192;
    var shadow_drawer = instance_create_depth(obj_savefl.x, obj_savefl.y, obj_savefl.depth, drawer_object);
    save_flowey_noloop = true;
}

if (save_flowey_noloop && !instance_exists(obj_savefl))
    save_flowey_noloop = false;
