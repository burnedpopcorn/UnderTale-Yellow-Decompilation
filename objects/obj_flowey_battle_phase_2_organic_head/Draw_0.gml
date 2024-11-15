if (live_call())
    return global.live_result;

draw_self();

if (instance_exists(obj_flowey_battle_phase_2_organic_weakpoint) && obj_flowey_battle_phase_2_organic_weakpoint.hp_self > 0)
{
    if (blink <= 0)
        draw_sprite_ext(spr_battle_flowey_organic_flowey_blink, abs(blink / 2), x + eyes_offset[0], y + eyes_offset[1], f_x + (sin(current_time / 400) * 0.02) + 0.02, f_x + (sin(current_time / 400) * 0.02) + 0.02, 0, -1, 1);
    
    exit;
}

if (hp_self > 0)
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, (sin(current_time / 300) * 0.5) + 0.5);

draw_sprite_ext(spr_battle_flowey_organic_flowey_closed, 0, x + eyes_offset[0], y + eyes_offset[1], f_x + (sin(current_time / 400) * 0.02) + 0.02, f_x + (sin(current_time / 400) * 0.02) + 0.02, 0, -1, 1);

if (hp_self > 0)
    draw_sprite_ext(spr_battle_flowey_organic_flowey_closed, 0, x + eyes_offset[0], y + eyes_offset[1], f_x + (sin(current_time / 400) * 0.02) + 0.02, f_x + (sin(current_time / 400) * 0.02) + 0.02, 0, c_red, (sin(current_time / 300) * 0.5) + 0.5);

if (hit_flash == true)
{
    shader_set(sh_flash);
    draw_sprite_ext(sprite_index, image_index, x + x_offset, y + y_offset, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    shader_reset();
}
