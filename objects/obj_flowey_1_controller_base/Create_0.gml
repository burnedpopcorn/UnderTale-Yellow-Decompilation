if (live_call())
    return global.live_result;

if (instance_number(object_index) > 1)
    instance_destroy();

if (global.flowey_battle_1_phase == 0 || global.flowey_battle_1_phase == 1)
{
    global.flowey_battle_1_phase = 1;
    global.flowey_attack_list = ds_list_create();
    global.flowey_stolen_attack_list = ds_list_create();
    global.flowey_attack_number = 0;
    ds_list_add(global.flowey_attack_list, 1, 2, 3, 4, 5, 6, 7, 8, 9);
    
    if (global.flag[15] == 3)
        ds_list_add(global.flowey_stolen_attack_list, 1);
    
    if (global.dunes_flag[26] == 3)
        ds_list_add(global.flowey_stolen_attack_list, 2);
    
    if (global.dunes_flag[24] == 2)
        ds_list_add(global.flowey_stolen_attack_list, 3);
    
    if (global.sworks_flag[20] == 3)
        ds_list_add(global.flowey_stolen_attack_list, 4);
    
    if (global.sworks_flag[31] >= 3)
        ds_list_add(global.flowey_stolen_attack_list, 5);
    
    if (global.flag[17] == 2)
        ds_list_add(global.flowey_stolen_attack_list, 6);
    
    if (global.dunes_flag[40] == 1)
        ds_list_add(global.flowey_stolen_attack_list, 7);
    
    global.flowey_room_list = ds_list_create();
    ds_list_add(global.flowey_room_list, 226, 227, 228, 229, 230, 231);
    global.flowey_act[0] = irandom_range(0, 4);
    global.flowey_act[1] = irandom_range(0, 4);
    global.flowey_act[2] = irandom_range(0, 4);
}
