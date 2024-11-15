var intensity_increase, destroyed_petal_number, i;

if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;
intensity_increase = 0.25;
destroyed_petal_number = 0;

for (i = 0; i < array_length(obj_flowey_battle_final.petal_alive); i++)
{
    if (obj_flowey_battle_final.petal_alive[i] == 0)
        destroyed_petal_number += 1;
}

attack_delay = 3 - (destroyed_petal_number * intensity_increase);
attackmax_repeat = 3;
attack_list = ds_list_create();
ds_list_add(attack_list, 2480, 312, 902, 923, 2432, 923, 725, 555);
ds_list_shuffle(attack_list);

if (!instance_exists(obj_flowey_gray_eyes))
    instance_create_depth(320, 140, -200, obj_flowey_gray_eyes);
