var game_mode;

global.enemy_attacking = false;
instance_create(32, 250, obj_dialogue_box_battle);

if (global.last_text_move_select == -1)
    script_execute(scr_late_audio_enemy_encounter);

if (global.last_text_move_select < 1)
    global.last_text_move_select += 1;

game_mode = global.game_mode;

if (game_mode == "customs")
{
    global.determine_attack_priority = 1;
    script_execute(scr_determine_enemy_attack);
}
else if (game_mode == "yellow")
{
    global.determine_attack_priority = 1;
    script_execute(scr_determine_enemy_attack_yellow);
}

if (global.important_cutscene == false)
{
    with (obj_heart_battle_menu)
        event_user(0);
}

instance_destroy();
