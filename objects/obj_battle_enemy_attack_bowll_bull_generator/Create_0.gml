box = obj_dialogue_box_battle_transformation_any;
c_total = 8;
c_distance = 5;
c_sectors = 4;
c_width = 33;
c_spacing = floor(0.5 + ((box.sprite_width - 10 - (c_width * c_sectors)) / (c_sectors + 1)));
end_alarm = 20;
no_loop_alarm = false;
random_list = ds_list_create();

for (i = 1; i < (4 * c_sectors); i++)
    ds_list_add(random_list, i);

ds_list_shuffle(random_list);
i_add = 0;

for (i = 0; i < c_total; i++)
{
    c_value = ds_list_find_value(random_list, i + i_add);
    
    if (i > 0)
    {
        var increment_i = true;
        
        while (increment_i == true)
        {
            increment_i = false;
            
            for (j = 0; j < i; j++)
            {
                if (abs(c_value_store[j] - c_value) == (2 * c_sectors))
                {
                    increment_i = true;
                    break;
                }
            }
            
            if (increment_i == true)
            {
                i_add += 1;
                c_value = ds_list_find_value(random_list, i + i_add);
            }
        }
    }
    
    c_value_store[i] = c_value;
    c_direction = 1;
    
    while (c_value > c_sectors)
    {
        c_direction += 1;
        c_value -= c_sectors;
    }
    
    var c_sub = c_value - 1;
    var c_disjoint = 20 + (c_spacing * c_value) + (c_width * c_sub);
    
    switch (c_direction)
    {
        case 1:
            cape_dir = 0;
            instance_create(box.bbox_right + c_distance, box.bbox_top + c_disjoint, obj_battle_enemy_attack_bowll_bull_cape);
            break;
        
        case 2:
            cape_dir = 90;
            instance_create(box.bbox_left + c_disjoint, box.bbox_top - c_distance, obj_battle_enemy_attack_bowll_bull_cape);
            break;
        
        case 3:
            cape_dir = 180;
            instance_create(box.bbox_left - c_distance, box.bbox_top + c_disjoint, obj_battle_enemy_attack_bowll_bull_cape);
            break;
        
        case 4:
            cape_dir = 270;
            instance_create(box.bbox_left + c_disjoint, box.bbox_bottom + c_distance, obj_battle_enemy_attack_bowll_bull_cape);
            break;
    }
}

ds_list_destroy(random_list);
