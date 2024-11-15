var index, next_attack;

if (live_call())
    return global.live_result;

global.flowey_act[0] = irandom_range(0, 4);
global.flowey_act[1] = irandom_range(0, 4);
global.flowey_act[2] = irandom_range(0, 4);

if (global.flowey_attack_number == 3 || global.flowey_attack_number == 7 || global.flowey_attack_number == 11)
{
    if (global.flowey_attack_number == 3)
    {
        index = ds_list_find_index(global.flowey_stolen_attack_list, 1);
        
        if (index != -1)
        {
            global.enemy_attack = "Flowey Corrupt Attack 1";
            ds_list_delete(global.flowey_stolen_attack_list, index);
            exit;
        }
        
        index = ds_list_find_index(global.flowey_stolen_attack_list, 6);
        
        if (index != -1)
        {
            global.enemy_attack = "Flowey Corrupt Attack 6";
            ds_list_delete(global.flowey_stolen_attack_list, index);
            exit;
        }
    }
    else if (global.flowey_attack_number == 7)
    {
        index = ds_list_find_index(global.flowey_stolen_attack_list, 2);
        
        if (index != -1)
        {
            global.enemy_attack = "Flowey Corrupt Attack 2";
            ds_list_delete(global.flowey_stolen_attack_list, index);
            exit;
        }
        
        index = ds_list_find_index(global.flowey_stolen_attack_list, 3);
        
        if (index != -1)
        {
            global.enemy_attack = "Flowey Corrupt Attack 3";
            ds_list_delete(global.flowey_stolen_attack_list, index);
            exit;
        }
        
        index = ds_list_find_index(global.flowey_stolen_attack_list, 4);
        
        if (index != -1)
        {
            global.enemy_attack = "Flowey Corrupt Attack 4";
            ds_list_delete(global.flowey_stolen_attack_list, index);
            exit;
        }
    }
    else if (global.flowey_attack_number == 11)
    {
        index = ds_list_find_index(global.flowey_stolen_attack_list, 5);
        
        if (index != -1)
        {
            global.enemy_attack = "Flowey Corrupt Attack 5";
            ds_list_delete(global.flowey_stolen_attack_list, index);
            exit;
        }
        
        index = ds_list_find_index(global.flowey_stolen_attack_list, 7);
        
        if (index != -1)
        {
            global.enemy_attack = "Flowey Corrupt Attack 7";
            ds_list_delete(global.flowey_stolen_attack_list, index);
            exit;
        }
    }
    
    global.enemy_attack = "Flowey Attack 10";
}
else if (ds_list_size(global.flowey_attack_list) >= 1)
{
    ds_list_shuffle(global.flowey_attack_list);
    next_attack = ds_list_find_value(global.flowey_attack_list, 0);
    ds_list_delete(global.flowey_attack_list, 0);
    global.enemy_attack = "Flowey Attack " + string(next_attack);
}
else
{
    global.enemy_attack = "Flowey Attack 1";
}

global.flowey_attack_number += 1;
