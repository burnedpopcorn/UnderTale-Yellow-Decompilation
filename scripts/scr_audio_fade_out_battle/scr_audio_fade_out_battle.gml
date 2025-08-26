function scr_audio_fade_out_battle(arg0)
{
    var audio_array_val = 0;
    sound_y[audio_array_val] = mus_apprehension_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_dalvbattle_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_dalvopening_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_01_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_02_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_03_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_04_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_05_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_06_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_07_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_08_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_09_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_10_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_attack_finale_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_danza_battle_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_decibat_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_floweynew_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_funsized_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_genobattle_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_mart_geno_wind_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_martletbattle_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_nobodycame_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_occupied_turf_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_prebattle1_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_prebattle2_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_prebattle3_yellow;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_battle_snowdin;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_trial_by_fury;
    audio_array_val += 1;
    sound_y[audio_array_val] = mus_heatwave_approaching;
    
    for (i = 0; i < array_length_1d(sound_y); i += 1)
    {
        if (audio_is_playing(sound_y[i]))
            audio_sound_gain(sound_y[i], 0, arg0);
    }
}
