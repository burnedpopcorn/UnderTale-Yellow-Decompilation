var battle_box, soul;

if (live_call())
    return global.live_result;

battle_box = 3154;
soul = 2980;

if (stage == 0)
{
    if (x < (battle_box.bbox_left + 40))
        x += 3;
    else
        stage = 1;
}

if (stage == 1)
{
    if (!alarm[0])
        alarm[0] = shoot_delay;
}

if (stage < 2)
{
    if (abs(y - soul.y) > 0.1)
        y = lerp(y, soul.y, 0.15);
}

depth = -51;
