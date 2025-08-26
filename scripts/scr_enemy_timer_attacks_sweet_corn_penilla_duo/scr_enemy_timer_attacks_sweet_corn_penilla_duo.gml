function scr_enemy_timer_attacks_sweet_corn_penilla_duo()
{
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Drawing Spear Corn" && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (!instance_exists(obj_battle_enemy_attack_penilla_pencil))
            script_execute(scr_enemy_attack_penilla_drawing);
        
        if (!instance_exists(obj_battle_enemy_attack_spear_corn) && !instance_exists(obj_battle_enemy_attack_spear_corn_warning))
            instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_spear_corn_warning);
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && (enemy_attack == "Candy Corn" || enemy_attack == "Spear Corn" || enemy_attack == "Homing Corn") && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_timer_attacks_sweet_corn_solo);
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && (enemy_attack == "Penilla Drawing" || enemy_attack == "Penilla Lines") && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_timer_attacks_penilla_solo);
    }
}
