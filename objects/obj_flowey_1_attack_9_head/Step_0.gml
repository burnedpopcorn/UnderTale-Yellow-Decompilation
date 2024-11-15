if (live_call())
    return global.live_result;

if (image_speed == 0)
    exit;

if (image_index >= 5 && image_index < 11)
{
    with (obj_flowey_1_attack_9_thorns)
    {
        if (x > other.x)
            speed_target = 6;
    }
}
else if (image_index >= 16 && image_index < 22)
{
    with (obj_flowey_1_attack_9_thorns)
    {
        if (x < other.x)
            speed_target = 6;
    }
}
else
{
    with (obj_flowey_1_attack_9_thorns)
        speed_target = -1;
}
