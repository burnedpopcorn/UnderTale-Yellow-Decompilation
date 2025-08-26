if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        instance_create_depth(0, 0, -100, ds_list_find_value(attack_list, 0));
        var old_value = ds_list_find_value(attack_list, 0);
        ds_list_delete(attack_list, 0);
        ds_list_insert(attack_list, irandom_range(attackmax_repeat, ds_list_size(attack_list) - 1), old_value);
        scene++;
        break;
    
    case 1:
        if (cutscene_wait(attack_delay))
            cutscene_advance(0);
        
        break;
}
