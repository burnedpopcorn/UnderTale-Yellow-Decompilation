if (hit_flash == true)
    shader_set(sh_flash);

if (surface_draw == true)
    draw_on_surface();
else
    draw_self();

shader_reset();
