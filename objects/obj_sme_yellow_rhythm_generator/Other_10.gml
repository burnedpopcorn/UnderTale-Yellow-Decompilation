scr_audio_stop_sound(1);
script_execute(end_script);

if (audio_restore != snd_ceroba_staff_lock)
{
    if ((global.route != 3 || global.turns_passed < 5) && global.battle_enemy_name != "flowey")
        audio_play_sound(audio_restore, 20, 1);
}

can_end_script = false;
