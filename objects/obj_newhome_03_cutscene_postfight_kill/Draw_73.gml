if (overlay_alpha > 0)
{
    draw_set_alpha(overlay_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, 0);
    draw_set_alpha(1);
    
    with (obj_player_npc)
    {
        if (other.scene < 223)
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
        
        draw_set_alpha(other.clover_overlay_alpha);
        shader_set(sh_flash);
        draw_sprite(sprite_index, image_index, x, y);
        shader_reset();
        draw_set_alpha(1);
        
        if (other.white_overlay_radius > 0)
        {
            draw_set_color(c_white);
            draw_set_alpha(other.circle_alpha);
            draw_circle(obj_player_npc.x, obj_player_npc.y, other.white_overlay_radius, false);
            draw_set_alpha(1);
        }
        
        draw_set_alpha(other.clover_overlay_alpha_dark);
        shader_set(sh_silhouette);
        draw_sprite(sprite_index, image_index, x + irandom_range(-other.clover_shake_intensity, other.clover_shake_intensity), y + irandom_range(-other.clover_shake_intensity, other.clover_shake_intensity));
        shader_reset();
        draw_set_alpha(1);
    }
    
    draw_set_alpha(1);
}
else if (other.white_overlay_radius > 0 && instance_exists(obj_player_npc))
{
    draw_set_color(c_white);
    draw_set_alpha(other.circle_alpha);
    draw_circle(obj_player_npc.x, obj_player_npc.y, other.white_overlay_radius, false);
    draw_set_alpha(1);
}
