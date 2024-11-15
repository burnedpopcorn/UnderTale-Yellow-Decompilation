event_inherited();
image_speed = 0.2;

if (global.route != 3)
{
    message[0] = "* (A cozy-looking campfire.)";
    message[1] = "* (The sweet scent of honeysuckle#  is wafting from the flames.)";
    message_length = 2;
}
else
{
    message[0] = "* (A campfire.)";
    message_length = 1;
}

if (global.geno_complete[2])
{
    sprite_index = spr_campfire_snuffed_snowdin_yellow;
    image_speed = 0;
    message[0] = "* (Looks like the fire was#  snuffed out.)";
    message_length = 1;
}
