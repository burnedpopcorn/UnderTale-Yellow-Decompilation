if (live_call())
    return global.live_result;

if (curr_fill != 0)
{
    switch (global.action_2_selected_count)
    {
        case 1:
            curr_fill = 5;
            break;
        
        case 2:
            curr_fill = 4;
            break;
        
        case 3:
            curr_fill = 3;
            break;
        
        case 4:
            curr_fill = 2;
            break;
        
        case 5:
            curr_fill = 1;
            break;
    }
}

if (global.enemy_attacking == true && curr_fill == prev_fill && global.action_2_selected_count < 5)
    is_hidden = true;
else
    is_hidden = false;

if (!is_hidden)
{
    x = lerp(x, 30, 0.15);
    y = 197;
}
else
{
    x = lerp(x, -100, 0.25);
}
