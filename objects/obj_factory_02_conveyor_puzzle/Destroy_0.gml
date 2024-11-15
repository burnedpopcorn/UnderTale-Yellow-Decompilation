if (conveyor_item_number <= 0)
{
    scr_audio_fade_out(218, 1500);
    instance_create(0, 0, obj_factory_02_conveyor_victory);
}

if (conveyor_item_number_wrong <= 0)
    instance_create(0, 0, obj_factory_02_conveyor_puzzle_recreator);

layer_set_visible("MachineFront", false);

with (obj_factory_02_conveyor_indicator)
    sprite_index = spr_conveyor_indicator_idle;
