if (live_call())
    return global.live_result;

if (stare_at_screen == 1)
{
    y = lerp(y, ystart - 10, 0.05);
    x = lerp(x, xstart, 0.05);
    exit;
}
else
{
    y = lerp(y, ystart, 0.15);
}

var soul = obj_heart_battle_fighting_parent;
x = (xstart - 10) + (10 * (soul.x / 320));
