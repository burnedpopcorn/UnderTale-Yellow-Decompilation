var player_character;

walk_speed = global.speed_self;
image_speed = 0;
image_index = 0;
vulnerable = true;
hsp = 0;
vsp = 0;
x_position = x;
y_position = y;
hsp_carry = 0;
vsp_carry = 0;
jumpspeed = -8;
grav = 0.5;
moveable = false;
floating = false;
player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_up;
        break;
}
