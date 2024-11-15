image_alpha = 0;
script_execute(scr_enemy_defragment);

if (!audio_is_playing(snd_monster_damage_death))
    audio_play_sound(snd_monster_damage_death, 20, 0);

global.enemy_low_hp = true;
global.enemy_low_hp_3 = true;
