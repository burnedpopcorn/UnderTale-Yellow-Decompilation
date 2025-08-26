function scr_enemy_attack_crispy_tub()
{
    var distance_y = 10;
    global.attack_counter_max = 30;
    
    if (global.attack_counter == 0)
        instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_top - distance_y, obj_battle_enemy_attack_crispy_tub);
}
