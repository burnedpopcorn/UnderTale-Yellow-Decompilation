liquid_image_index = 0;
liquid_amount[0] = 0.72;
liquid_amount[1] = 0.22;
liquid_amount[2] = 0.92;
liquid_amount[3] = 0.12;
liquid_target[0] = 0;
liquid_target[1] = 0.72;
liquid_target[2] = 0.42;
liquid_target[3] = 0.95;
liquid_noloop[0] = 0;
liquid_noloop[1] = 0;
liquid_noloop[2] = 0;
liquid_noloop[3] = 0;
liquid_overlay_alpha = 0;
liquid_overlay_deg = 0;
liquid_active = false;
cutscene_timer = 0;
scene = 0;

if (global.sworks_flag[1] > 1)
{
    liquid_amount[0] = liquid_target[0];
    liquid_amount[1] = liquid_target[1];
    liquid_amount[2] = liquid_target[2];
    liquid_amount[3] = liquid_target[3];
}
