image_xscale = 2;
image_yscale = 2;
moving = false;
flash_count = 0;
no_loop = false;
no_loop_2 = false;
image_alpha = 0;
hsp = (48 - x) / 25;
vsp = (454 - y) / 25;
hsp_sign = sign(hsp);
vsp_sign = sign(vsp);
x_position = x;
y_position = y;
no_loop_moving = false;
var player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_overworld;
        break;
}
