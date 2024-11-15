if (starlo_overlay == 1)
{
    draw_set_color(c_white);
    draw_rectangle(obj_starlo_npc.bbox_left, obj_starlo_npc.bbox_top, 320, -240, false);
    
    with (obj_starlo_npc)
        draw_self();
}

if (starlo_overlay == 2)
{
    draw_set_color(c_black);
    draw_rectangle(obj_starlo_npc.bbox_left, obj_starlo_npc.bbox_top, 320, -240, false);
    
    with (obj_starlo_npc)
        draw_self();
}
