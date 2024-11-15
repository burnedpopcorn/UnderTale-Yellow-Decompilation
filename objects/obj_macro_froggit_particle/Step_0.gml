if (particle_burst == true)
{
    audio_play_sound(snd_decibatbouncewave1, 1, 0);
    part_emitter_burst(global.ps, global.pe_Border, global.pt_Border, 1);
    part_emitter_burst(global.ps, global.pe_Filling, global.pt_Filling, 1);
    particle_burst = false;
}
