function scr_enemy_timer_attacks_dunebud_duo()
{
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Dunebud Chase Tumbleweeds" && !instance_exists(obj_battle_enemy_attack_dunebud_chase_tumbleweeds_controller))
        {
            instance_create(0, 0, obj_battle_enemy_attack_dunebud_chase_tumbleweeds_controller);
        }
        else if (enemy_attack == "Dunebud Double Chase" && !instance_exists(obj_battle_enemy_attack_dunebud_sandcastle_bucket) && !instance_exists(obj_battle_enemy_attack_dunebud_sandcastle_sandcastle))
        {
            var script_tgt = obj_dialogue_box_battle_transformation_any;
            scr_create_attack_boundary(script_tgt.bbox_left + 5, script_tgt.bbox_top + 5, script_tgt.sprite_width - 10, script_tgt.sprite_height - 10, 20, 0);
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), obj_dialogue_box_battle_transformation_any.bbox_top - 20, obj_battle_enemy_attack_dunebud_sandcastle_bucket);
        }
        else if (enemy_attack == "Dunebud Chase" || enemy_attack == "Dunebud Sandcastle" || enemy_attack == "Dunebud Tumbleweeds")
        {
            script_execute(scr_enemy_timer_attacks_dunebud_solo);
        }
    }
}
