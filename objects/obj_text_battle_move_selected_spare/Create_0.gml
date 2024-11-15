if (global.enemy_count == 1 && global.enemy_sparing == true && global.enemy_dead == false && global.enemy_spared == false)
{
    sparing = true;
}
else if (global.enemy_count == 2)
{
    if (global.enemy_sparing == true && global.enemy_dead == false && global.enemy_spared == false)
        sparing = true;
    else if (global.enemy_sparing_2 == true && global.enemy_dead_2 == false && global.enemy_spared_2 == false)
        sparing = true;
    else
        sparing = false;
}
else if (global.enemy_count == 3)
{
    if (global.enemy_sparing == true && global.enemy_dead == false && global.enemy_spared == false)
        sparing = true;
    else if (global.enemy_sparing_2 == true && global.enemy_dead_2 == false && global.enemy_spared_2 == false)
        sparing = true;
    else if (global.enemy_sparing_3 == true && global.enemy_dead_3 == false && global.enemy_spared_3 == false)
        sparing = true;
    else
        sparing = false;
}
else
{
    sparing = false;
}
