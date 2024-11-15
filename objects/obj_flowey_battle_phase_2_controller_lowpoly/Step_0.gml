if (!instance_exists(obj_flowey_battle_phase_2_lowpoly_leaf) && flowey_vulnerable == 0)
{
    flowey_vulnerable = 1;
    alarm[0] = 30;
}

if (flowey_vulnerable == 2)
{
    if (draw_alpha_white < 1)
    {
        draw_alpha_white += 0.2;
    }
    else
    {
        obj_flowey_battle_final.image_alpha = 0;
        instance_create_depth(160, 0, -100, obj_flowey_battle_phase_2_lowpoly_vulnerable);
        flowey_vulnerable = 3;
    }
}

if (flowey_vulnerable == 3)
{
    if (draw_alpha_white > 0)
        draw_alpha_white -= 0.1;
    else
        flowey_vulnerable = 4;
}
