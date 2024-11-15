act = 1;
scene = 0;
cutscene_timer = 0;
door_closed_amount = 0;
screenshake_intensity = 0;

if (global.route == 3)
    global.hotland_flag[6] = 1;

if (global.hotland_flag[6] == 0)
{
    act = 2;
    layer_enable_fx("effect_dark_overlay", true);
}
else
{
    layer_enable_fx("effect_dark_overlay", false);
}
