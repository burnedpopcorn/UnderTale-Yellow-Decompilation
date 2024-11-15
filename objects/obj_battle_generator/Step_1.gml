var enemy_count;

enemy_count = global.enemy_count;

if (global.current_hp_enemy < 0)
{
    global.current_hp_enemy = 0;
}
else if (enemy_count >= 2)
{
    if (global.current_hp_enemy_2 < 0)
        global.current_hp_enemy_2 = 0;
}
else if (enemy_count >= 3)
{
    if (global.current_hp_enemy_3 < 0)
        global.current_hp_enemy_3 = 0;
}

if (global.anti_amplitude_ASGORE_flash_2 > 0)
    global.anti_amplitude_ASGORE_flash_2 -= 1;

if (global.anti_amplitude_asriel_battle_sound_3 > 0)
    global.anti_amplitude_asriel_battle_sound_3 -= 1;

if (global.anti_amplitude_asriel_battle_sound_4 > 0)
    global.anti_amplitude_asriel_battle_sound_4 -= 1;

if (global.anti_amplitude_battle_item_eat_starfait > 0)
    global.anti_amplitude_battle_item_eat_starfait -= 1;

if (global.anti_amplitude_monster_encounter > 0)
    global.anti_amplitude_monster_encounter -= 1;

if (global.anti_amplitude_omegaflowey_battle_sound_17 > 0)
    global.anti_amplitude_omegaflowey_battle_sound_17 -= 1;

if (global.anti_amplitude_sans_battle_gasterblaster_charge > 0)
    global.anti_amplitude_sans_battle_gasterblaster_charge -= 1;

if (global.anti_amplitude_sans_battle_pound > 0)
    global.anti_amplitude_sans_battle_pound -= 1;

if (global.anti_amplitude_soul_mettaton_hit_2 > 0)
    global.anti_amplitude_soul_mettaton_hit_2 -= 1;

if (global.anti_amplitude_talk_2 > 0)
    global.anti_amplitude_talk_2 -= 1;

if (global.anti_amplitude_undyne_spear_fire > 0)
    global.anti_amplitude_undyne_spear_fire -= 1;

script_execute(scr_game_time_add);
