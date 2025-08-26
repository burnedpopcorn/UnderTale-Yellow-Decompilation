function scr_screenshake_battle()
{
    instance_destroy(obj_screenshake_battle);
    var screenshake = instance_create(0, 0, obj_screenshake_battle);
    battle_screenshake_duration = argument[0];
    battle_screenshake_intensity = argument[1];
    battle_screenshake_dec = battle_screenshake_intensity / battle_screenshake_duration;
}
