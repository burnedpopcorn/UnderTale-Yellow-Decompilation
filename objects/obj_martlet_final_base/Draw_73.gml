if (live_call())
    return global.live_result;

if (damage_flash_timer > 0)
{
    shader_set(sh_flash);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    
    if (sprite_index != spr_martlet_final_wing_attack)
    {
        with (obj_martlet_final_wing)
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    }
    
    shader_reset();
}

draw_set_alpha(healthbar_alpha);
draw_healthbar(220, 10, 420, 20, (global.current_hp_enemy / global.max_hp_enemy) * 100, c_red, c_lime, c_lime, 0, true, false);
draw_set_alpha(1);
