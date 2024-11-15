if (instance_exists(obj_player_npc))
    active_object = 1168;
else
    active_object = 1031;

if (active_object.x <= 308)
    overlay_draw_enabled = true;
else
    overlay_draw_enabled = false;

if (overlay_draw_enabled == true)
{
    if (overlay_draw_alpha < 1)
        overlay_draw_alpha += 0.05;
}
else if (overlay_draw_alpha > 0)
{
    overlay_draw_alpha -= 0.05;
}

depth = active_object.depth - 5;
