var play_machine_sound;

if (active == false)
    exit;

play_machine_sound = false;

if (global.up_key)
{
    if (phy_position_y > (y_original_phy - 10))
    {
        phy_position_y -= 1.2;
        play_machine_sound = true;
    }
}

if (global.down_key)
{
    if (phy_position_y < (y_original_phy + 10))
    {
        phy_position_y += 1.2;
        play_machine_sound = true;
    }
}

if (play_machine_sound)
{
    if (!audio_is_playing(snd_puzzle_woodmove))
        audio_play_sound(snd_puzzle_woodmove, 1, 1);
}
else
{
    audio_stop_sound(snd_puzzle_woodmove);
}
