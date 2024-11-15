var j, i, inst, object_found;

light_amount = 0;
active = false;
reverse = false;
j = 0;

for (i = 0; i < instance_number(-3); i += 1)
{
    inst = instance_find(-3, i);
    object_found = false;
    
    switch (inst.object_index)
    {
        case obj_pl:
        case global.party_member:
            shadow_actor[j] = inst;
            shadow_active[j] = false;
            light_amount[j] = 0;
            object_found = true;
            break;
    }
    
    switch (object_get_parent(inst.object_index))
    {
        case 1130:
        case 1133:
            shadow_actor[j] = inst;
            shadow_active[j] = false;
            light_amount[j] = 0;
            object_found = true;
            break;
    }
    
    if (object_found == true)
    {
        with (shadow_actor[j])
        {
            if (place_meeting(x, y, obj_shadow_collider))
            {
                other.shadow_active[j] = true;
                
                if (other.reverse == false)
                    other.light_amount[j] = 0.6;
            }
        }
        
        j += 1;
    }
}
