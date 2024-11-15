if (global.flag[2] == true)
    exit;

if (keyboard_multicheck_pressed(0))
{
    if (scr_interact() == true)
    {
        audio_play_sound(snd_switch, 1, 0);
        
        if (turn == true)
            turn = false;
        else if (turn == false)
            turn = true;
        
        if (i == 1)
        {
            with (obj_lightp)
            {
                if (i == 2)
                {
                    if (turn == true)
                        turn = false;
                    else if (turn == false)
                        turn = true;
                }
            }
        }
        
        if (i == 2)
        {
            with (obj_lightp)
            {
                if (i == 3 || i == 1)
                {
                    if (turn == true)
                        turn = false;
                    else if (turn == false)
                        turn = true;
                }
            }
        }
        
        if (i == 3)
        {
            with (obj_lightp)
            {
                if (i == 4 || i == 2)
                {
                    if (turn == true)
                        turn = false;
                    else if (turn == false)
                        turn = true;
                }
            }
        }
        
        if (i == 4)
        {
            with (obj_lightp)
            {
                if (i == 3 || i == 5)
                {
                    if (turn == true)
                        turn = false;
                    else if (turn == false)
                        turn = true;
                }
            }
        }
        
        if (i == 5)
        {
            with (obj_lightp)
            {
                if (i == 4)
                {
                    if (turn == true)
                        turn = false;
                    else if (turn == false)
                        turn = true;
                }
            }
        }
    }
}

if (turn == true)
    image_index = 0;

if (turn == false)
    image_index = 1;

if (turn == true && waiter == 0)
{
    obj_puzzle2.puzzlecount += 1;
    waiter = 1;
}

if (turn == false && waiter == 1)
{
    obj_puzzle2.puzzlecount -= 1;
    waiter = 0;
}
