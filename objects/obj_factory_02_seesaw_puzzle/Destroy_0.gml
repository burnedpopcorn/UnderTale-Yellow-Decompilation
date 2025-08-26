if (seesaw_item_number <= 0)
{
    scr_audio_fade_out(mus_build_a_bot, 1500);
    instance_create(0, 0, obj_factory_02_seesaw_victory);
}

if (seesaw_item_number_wrong <= 0)
    instance_create(0, 0, obj_factory_02_seesaw_puzzle_recreator);

with (obj_factory_02_conveyor_indicator)
    sprite_index = spr_conveyor_indicator_idle;
