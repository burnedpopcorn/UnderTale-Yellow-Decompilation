if (counter_current > counter_max)
{
    if (!alarm[1])
        alarm[1] = 20;
    
    exit;
}

if (global.battle_phase == 1)
{
    if (!alarm[0])
        alarm[0] = 50;
}
else if (global.battle_phase == 2)
{
    if (!alarm[0])
        alarm[0] = 40;
}
