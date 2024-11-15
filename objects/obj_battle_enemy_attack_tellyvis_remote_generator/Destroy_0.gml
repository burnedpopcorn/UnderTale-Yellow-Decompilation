var destroy_self, i;

with (all)
{
    destroy_self = true;
    
    for (i = 0; i < ds_list_size(other.instance_list); i++)
    {
        if (ds_list_find_value(other.instance_list, i) == id)
            destroy_self = false;
    }
    
    if (destroy_self == true)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
