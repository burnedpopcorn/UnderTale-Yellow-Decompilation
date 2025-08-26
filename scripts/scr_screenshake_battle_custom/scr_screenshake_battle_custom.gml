function scr_screenshake_battle_custom()
{
    instance_destroy(obj_screenshake_battle);
    var screenshake = instance_create(0, 0, obj_screenshake_battle);
    screenshake.battle_screenshake_duration = argument[0];
    screenshake.battle_screenshake_intensity = argument[1];
    screenshake.battle_screenshake_dec = screenshake.battle_screenshake_intensity / screenshake.battle_screenshake_duration;
}
