if (live_call())
    return global.live_result;

if (!instance_exists(obj_flowey_battle_phase_2_mechanical_drone))
{
    if (!alarm[0])
        alarm[0] = 30;
}

switch (scene)
{
    case 0:
        instance_create_depth(0, 0, -100, ds_list_find_value(attack_list, 0));
        ds_list_shuffle(attack_list);
        scene++;
        break;
    
    case 1:
        if (cutscene_wait(attack_delay))
            cutscene_advance(0);
        
        break;
}
