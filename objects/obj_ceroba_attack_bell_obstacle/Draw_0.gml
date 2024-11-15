if (bullet_hit_draw_timer > 0)
    shader_set(sh_flash);

draw_on_surface();
shader_reset();
