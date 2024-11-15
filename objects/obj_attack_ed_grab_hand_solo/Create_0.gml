attack_state = 1;
attack_number = 0;
attack_number_max = 2;
attack_hand_side_multiplier = 1;
image_speed = 1/3;
depth = -999999;

if (x < 320)
{
    image_xscale *= -1;
    direction = 0;
}
else
{
    direction = 180;
}
