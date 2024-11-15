switch (global.dunes_flag[31])
{
    case 1:
        sprite_index = spr_violetta_dead;
        break;
    
    case 2:
        sprite_index = spr_pedla_dead;
        break;
    
    case 3:
        sprite_index = spr_rosa_dead;
        break;
}

image_alpha = 0;
image_speed = 0;
image_index = 0;
script_execute(scr_enemy_defragment);

if (!audio_is_playing(snd_monster_damage_death))
    audio_play_sound(snd_monster_damage_death, 20, 0);
