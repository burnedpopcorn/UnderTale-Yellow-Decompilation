if (!instance_exists(obj_battle_fade_out_screen))
{
    global.sound_carry_overworld = false;
    instance_create(0, 0, obj_battle_fade_out_screen);
}
