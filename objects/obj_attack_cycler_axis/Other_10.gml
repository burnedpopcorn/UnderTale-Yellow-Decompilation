if (global.enemy_mode == 0)
{
    if (global.attack_repeat == false)
    {
        if (global.attack_cycle < 2)
            global.attack_cycle++;
        else
            global.attack_repeat = true;
    }
    else
    {
        do
            global.attack_cycle = irandom_range(1, 2);
        until (global.attack_cycle != global.attack_last);
    }
}
else if (global.enemy_mode == 1)
{
    if (global.attack_repeat == false)
    {
        if (global.attack_cycle <= 2)
            global.attack_cycle = 3;
        else if (global.attack_cycle < 4)
            global.attack_cycle++;
        else
            global.attack_repeat = true;
    }
    else
    {
        do
            global.attack_cycle = irandom_range(3, 4);
        until (global.attack_cycle != global.attack_last);
    }
}
else if (global.enemy_mode == 2)
{
    if (global.attack_repeat == false)
    {
        if (global.attack_cycle <= 4)
            global.attack_cycle = 5;
        else if (global.attack_cycle < 6)
            global.attack_cycle++;
        else
            global.attack_repeat = true;
    }
    else
    {
        do
            global.attack_cycle = irandom_range(5, 6);
        until (global.attack_cycle != global.attack_last);
    }
}
else if (global.enemy_mode == 3)
{
    if (global.attack_repeat == false)
    {
        if (global.attack_cycle <= 6)
            global.attack_cycle = 7;
        else if (global.attack_cycle < 8)
            global.attack_cycle++;
        else
            global.attack_repeat = true;
    }
    else
    {
        do
            global.attack_cycle = irandom_range(7, 8);
        until (global.attack_cycle != global.attack_last);
    }
}
else if (global.enemy_mode == 4)
{
    if (global.attack_repeat == false)
    {
        if (global.attack_cycle <= 8)
            global.attack_cycle = 9;
        else if (global.attack_cycle < 10)
            global.attack_cycle++;
        else
            global.attack_repeat = true;
    }
    else
    {
        do
            global.attack_cycle = irandom_range(9, 10);
        until (global.attack_cycle != global.attack_last);
    }
}
else if (global.enemy_mode == 5)
{
    if (global.attack_repeat == false)
    {
        if (global.attack_cycle <= 10)
            global.attack_cycle = 11;
        else if (global.attack_cycle < 12)
            global.attack_cycle++;
        else
            global.attack_repeat = true;
    }
    else
    {
        do
            global.attack_cycle = irandom_range(11, 12);
        until (global.attack_cycle != global.attack_last);
    }
}
else if (global.enemy_mode == 6)
{
    if (global.attack_repeat == false)
    {
        if (global.attack_cycle <= 12)
            global.attack_cycle = 13;
        else if (global.attack_cycle < 14)
            global.attack_cycle++;
        else
            global.attack_repeat = true;
    }
    else
    {
        do
            global.attack_cycle = irandom_range(13, 14);
        until (global.attack_cycle != global.attack_last);
    }
}
else if (global.enemy_mode == 7)
{
    if (global.attack_repeat == false)
    {
        if (global.attack_cycle <= 14)
            global.attack_cycle = 15;
        else if (global.attack_cycle < 16)
            global.attack_cycle++;
        else
            global.attack_repeat = true;
    }
    else
    {
        do
            global.attack_cycle = irandom_range(15, 16);
        until (global.attack_cycle != global.attack_last);
    }
}

global.attack_last = global.attack_cycle;
