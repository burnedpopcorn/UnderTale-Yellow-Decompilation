var random_number;

if (atk_counter_current < atk_counter_max)
{
    random_number = irandom_range(0, 1);
    
    if (obj_heart_battle_fighting_parent.idle_hsp_count > 0)
        instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_top - 10, obj_battle_enemy_attack_martlet_wing_gust_junk);
    else
        instance_create(obj_heart_battle_fighting_parent.x + (global.speed_self * 4 * obj_heart_battle_fighting_parent.last_hsp), obj_dialogue_box_battle_transformation_any.bbox_top - 10, obj_battle_enemy_attack_martlet_wing_gust_junk);
    
    atk_counter_current += 1;
    atk_alarm_no_loop = false;
}
else
{
    fly_state = 2;
}
