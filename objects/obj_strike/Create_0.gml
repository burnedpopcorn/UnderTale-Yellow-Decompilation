var player_weapon = global.player_weapon;

switch (player_weapon)
{
    default:
        audio_play_sound(snd_item_stick_attack, 20, false);
        image_speed = 0.26666666666666666;
}

image_index = 0;
