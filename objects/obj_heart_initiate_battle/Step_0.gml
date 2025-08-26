if (start_delay > 0)
{
    start_delay -= 1;
    exit;
}

var flDelay = flash_delay;

if (image_alpha == 0 && no_loop == false)
{
    alarm[0] = flDelay;
    no_loop = true;
}

if (image_alpha == 1 && no_loop == false && flash_count < 3)
{
    alarm[0] = flDelay;
    no_loop = true;
}

if (flash_count == 3 && no_loop_2 == false)
{
    alarm[1] = flDelay;
    no_loop_2 = true;
}
