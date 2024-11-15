if (global.last_room_overworld == "rm_dunes_20")
{
    hspeed = 0.3;
}
else if (global.last_room_overworld == "rm_dunes_22")
{
    hspeed = -0.3;
    x = 280;
    image_xscale = -1;
}

image_speed = 0.2;

if (global.route == 3)
    sprite_index = spr_player_cart_dark_geno;
