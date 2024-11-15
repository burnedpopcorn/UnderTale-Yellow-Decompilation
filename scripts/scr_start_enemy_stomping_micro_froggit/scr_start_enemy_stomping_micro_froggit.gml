function scr_start_enemy_stomping_micro_froggit()
{
    with (obj_micro_froggit)
    {
        with (obj_battle_generator)
            audio_extend = false;
        
        audio_stop_all();
        audio_play_sound(snd_mfsquish, 20, 0);
        stomped_on = true;
    }
}
