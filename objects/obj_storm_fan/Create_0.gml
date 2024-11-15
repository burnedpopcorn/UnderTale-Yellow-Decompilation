depth = -y;
image_speed = 0.4;
waiter = 0;

if (global.dunes_flag[2] || global.party_member != -4)
{
    sprite_index = spr_storm_fan_stop;
    image_index = 2;
    image_speed = 0;
    global.dunes_flag[2] = 1;
}
