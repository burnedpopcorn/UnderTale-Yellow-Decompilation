if (live_call())
    return global.live_result;

audio_play_sound(snd_chem_start, 1, 0);
obj_chem_05_maze_puzzle_player.can_move = true;
puzzle_alpha = 0;
