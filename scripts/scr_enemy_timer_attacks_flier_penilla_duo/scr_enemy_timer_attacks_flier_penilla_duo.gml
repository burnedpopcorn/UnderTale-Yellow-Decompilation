function scr_enemy_timer_attacks_flier_penilla_duo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Flier Flies Drawing" && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (!instance_exists(obj_battle_enemy_attack_penilla_pencil))
            script_execute(scr_enemy_attack_penilla_drawing);
        
        script_execute(scr_enemy_attack_flier_flies_drawing);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && (enemy_attack == "Flier Flies" || enemy_attack == "Flier Fire") && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_timer_attacks_flier_solo);
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && (enemy_attack == "Penilla Drawing" || enemy_attack == "Penilla Lines") && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_timer_attacks_penilla_solo);
    }
}
