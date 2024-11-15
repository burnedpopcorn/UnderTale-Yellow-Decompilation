var player_character;

image_speed = 1/3;
image_index = 0;
hsp = random_range(-10, 10);
vsp = random_range(-10, 10);
grav = 0.5;
player_character = global.player_character;

switch (player_character)
{
    case "CLOVER":
        sprite_index = spr_heart_yellow_shard;
        break;
}
