if (shadow_axis_image_alpha > 0)
{
    draw_set_alpha(shadow_axis_image_alpha);
    draw_sprite(spr_axis_shadowy_down, obj_axis_npc.image_index, obj_axis_npc.x, obj_axis_npc.y);
    draw_set_alpha(1);
}
