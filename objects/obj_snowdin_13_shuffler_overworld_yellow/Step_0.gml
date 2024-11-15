if (move_right == true)
{
    switch (x)
    {
        case 130:
            destination = 160;
            move_right = false;
            break;
        
        case 160:
            destination = 190;
            move_right = false;
            break;
    }
    
    active = true;
}

if (move_left == true)
{
    switch (x)
    {
        case 160:
            destination = 130;
            move_left = false;
            break;
        
        case 190:
            destination = 160;
            move_left = false;
            break;
    }
    
    active = true;
}

if (active == true)
{
    if (x < destination)
        x += shuffle_speed;
    else if (x > destination)
        x -= shuffle_speed;
    else
        active = false;
}
