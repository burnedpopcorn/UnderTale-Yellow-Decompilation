var pl, goal;

if (live_call())
    return global.live_result;

instance_destroy(obj_chem_05_maze_puzzle_player);
instance_destroy(obj_chem_05_maze_puzzle_goal);
pl = instance_create_depth(puzzle_start[puzzle_level_current][0], puzzle_start[puzzle_level_current][1], depth - 1, obj_chem_05_maze_puzzle_player);
pl.direction = puzzle_start[puzzle_level_current][2];
pl.image_angle = pl.direction;
goal = instance_create_depth(puzzle_goal[puzzle_level_current][0], puzzle_goal[puzzle_level_current][1], depth - 1, obj_chem_05_maze_puzzle_goal);
alarm[1] = 20;
instance_deactivate_layer("ins_puzzle_1");
instance_deactivate_layer("ins_puzzle_2");
instance_deactivate_layer("ins_puzzle_3");
instance_activate_layer("ins_puzzle_" + string(puzzle_level_current + 1));
