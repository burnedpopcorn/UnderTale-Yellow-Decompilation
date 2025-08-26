var battle_enemy_name = global.battle_enemy_name;
var enemy_attack = global.enemy_attack;
var game_mode = global.game_mode;

if (global.enemy_attacking == true && no_loop == false)
{
    script_execute(scr_battle_core_directory_tb_dimensions);
    
    if (instance_exists(obj_dialogue_box_battle_transformation_attack))
    {
        with (obj_dialogue_box_battle_transformation_attack)
            instance_destroy();
    }
    
    instance_destroy();
    no_loop = true;
}

if (global.important_cutscene == true && no_loop_important_cutscene == false)
    script_execute(scr_battle_core_directory_important_cutscene);
else if (global.can_attack == false && no_loop_can_attack == false)
    script_execute(scr_battle_core_directory_no_attack);
