global.current_room = room_get_name(room);
var battle_enemy_name = global.battle_enemy_name;
global.battle_phase_step = 0;
global.special_effect_end_value = "";
script_execute(scr_battle_core_directory_generation);

if (global.game_mode == "customs")
{
    global.determine_attack_priority = 1;
    script_execute(scr_determine_enemy_attack);
}
else if (global.game_mode == "yellow")
{
    global.determine_attack_priority = 1;
    script_execute(scr_determine_enemy_attack_yellow);
}

script_execute(scr_determine_attacking_damage_stat_critical);
global.fight_number = 1;
global.act_number = 1;
global.act_number_row = 1;
global.act_number_column = 1;
global.item_page_count = 1;
global.item_number_row = 1;
global.item_number_column = 1;
global.mercy_number = 1;
global.attack_counter = 0;
global.attack_counter_max = 0;
global.timer_attacks_counter = 0;
global.timer_attacks_counter_2 = 0;
global.timer_attacks_switch = false;
global.attack_end_text = false;
global.anti_amplitude_ASGORE_flash_2 = 0;
global.anti_amplitude_asriel_battle_sound_3 = 0;
global.anti_amplitude_asriel_battle_sound_4 = 0;
global.anti_amplitude_battle_item_eat_starfait = 0;
global.anti_amplitude_monster_encounter = 0;
global.anti_amplitude_omegaflowey_battle_sound_17 = 0;
global.anti_amplitude_sans_battle_gasterblaster_charge = 0;
global.anti_amplitude_sans_battle_pound = 0;
global.anti_amplitude_soul_mettaton_hit_2 = 0;
global.anti_amplitude_talk_2 = 0;
global.anti_amplitude_undyne_spear_fire = 0;
global.radio = "nothing";

if (global.debug_menu == true)
    instance_create(0, 0, obj_debug_battle);

battle_ceroba_buff_noloop = false;
