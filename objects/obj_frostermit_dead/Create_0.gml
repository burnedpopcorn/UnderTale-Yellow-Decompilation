var enemy_mode;

enemy_mode = global.enemy_mode;

if (enemy_mode == 0)
    sprite_index = spr_frostermit_smashed;
else if (enemy_mode == 1)
    sprite_index = spr_frostermit_dead;

image_alpha = 0;
script_execute(scr_enemy_defragment);

if (!audio_is_playing(snd_monster_damage_death))
    audio_play_sound(snd_monster_damage_death, 20, 0);
