var victory;

if (can_move == true)
{
    speed = max_speed;
    
    switch (1)
    {
        case global.left_keyp:
            direction = 180;
            break;
        
        case global.up_keyp:
            direction = 90;
            break;
        
        case global.right_keyp:
            direction = 0;
            break;
        
        case global.down_keyp:
            direction = 270;
            break;
    }
}

if (place_meeting(x, y, obj_chem_05_maze_wall))
{
    audio_play_sound(snd_chem_crash, 1, 0);
    obj_chem_05_maze_puzzle.puzzle_game_over = true;
}

victory = obj_chem_05_maze_puzzle.puzzle_game_victory;

if (place_meeting(x, y, obj_chem_05_maze_puzzle_goal) && !victory)
{
    audio_play_sound(snd_chem_win, 1, 0);
    
    with (obj_chem_05_maze_puzzle)
    {
        draw_puzzle_layer = false;
        
        if (puzzle_level_current < 2)
        {
            countdown_current = 4;
            alarm[0] = 15;
            puzzle_level_current += 1;
        }
        else
        {
            other.can_move = false;
            puzzle_game_victory = true;
        }
        
        event_user(0);
        alarm[1] = -1;
    }
}
