if (live_call())
    return global.live_result;

instance_destroy(obj_chem_05_maze_puzzle_player);
instance_destroy(obj_chem_05_maze_puzzle_goal);
scr_radio_restart();
