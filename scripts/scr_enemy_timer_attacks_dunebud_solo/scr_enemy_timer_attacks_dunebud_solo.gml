function scr_enemy_timer_attacks_dunebud_solo()
{
    var enemy_attack, chosen_dunebud, script_tgt;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Dunebud Chase" && !instance_exists(obj_battle_enemy_attack_dunebud_chase_enemy))
        {
            chosen_dunebud = 2205;
            
            if (instance_exists(obj_dunebud_b) && (global.enemy_spared || global.enemy_dead))
                chosen_dunebud = 3193;
            
            instance_create(chosen_dunebud.x, chosen_dunebud.y, obj_battle_enemy_attack_dunebud_chase_enemy);
        }
        else if (enemy_attack == "Dunebud Sandcastle" && !instance_exists(obj_battle_enemy_attack_dunebud_sandcastle_bucket) && !instance_exists(obj_battle_enemy_attack_dunebud_sandcastle_sandcastle))
        {
            script_tgt = 3154;
            scr_create_attack_boundary(script_tgt.bbox_left + 5, script_tgt.bbox_top + 5, script_tgt.sprite_width - 10, script_tgt.sprite_height - 10, 20, 0);
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), obj_dialogue_box_battle_transformation_any.bbox_top - 20, obj_battle_enemy_attack_dunebud_sandcastle_bucket);
        }
        else if (enemy_attack == "Dunebud Tumbleweeds" && !instance_exists(obj_battle_enemy_attack_dunebud_tumbleweeds_creator))
        {
            instance_create(0, 0, obj_battle_enemy_attack_dunebud_tumbleweeds_creator);
        }
    }
}
