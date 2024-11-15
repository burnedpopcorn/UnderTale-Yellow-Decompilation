conveyor_puzzle_countdown -= 1;

if (conveyor_puzzle_countdown > 0)
{
    audio_play_sound(snd_beep, 1, 0);
    alarm[1] = 30;
}
else
{
    audio_play_sound(snd_puzzle_start, 1, 0);
    
    with (obj_conveyor_belt)
        image_speed = 1;
    
    conveyor_item_number = conveyor_item_number_max;
    conveyor_item_number_wrong = 3;
    conveyor_puzzle_active = true;
    exit;
}

with (obj_steamworks_factory_02_face)
{
    sprite_index = spr_steamworks_38_face_numbers;
    image_index = other.conveyor_puzzle_countdown - 1;
    image_speed = 0;
}
