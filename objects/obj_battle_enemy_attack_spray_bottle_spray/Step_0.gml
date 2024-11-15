if (live_call())
    return global.live_result;

speed = lerp(speed, 0, 0.05);

if (speed < 2 && sprite_index != spr_attack_spray_bottle_spray_disappear)
{
    sprite_index = spr_attack_spray_bottle_spray_disappear;
    image_speed = 1;
    image_index = 0;
}
